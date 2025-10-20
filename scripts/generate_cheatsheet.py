"""Generate a cheatsheet.csv by scanning the repo for Talon commands and lists.

This script is intentionally conservative: it extracts spoken forms (left of ':' in .talon files),
the action (naively the rest of the line or following indented lines), and the source file.
It also reads `.talon-list` files for list values and Python files that register `ctx.lists`.

Run from the repo root:
    python scripts/generate_cheatsheet.py
"""
import re
import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'docs' / 'cheatsheet' / 'cheatsheet.csv'

def scan_talon_file(path: Path):
    rows = []
    with path.open('r', encoding='utf-8') as f:
        lines = f.readlines()
    i = 0
    scope = ''
    while i < len(lines):
        line = lines[i].rstrip('\n')
        m_scope = re.match(r'^(app|mode|tag|settings)\s*:\s*(.+)$', line)
        if m_scope:
            scope = m_scope.group(2).strip()
            i += 1
            continue
        # command pattern: spoken form followed by ':'
        m = re.match(r'^\s*([^#][^:]+?)\s*:\s*(.*)$', line)
        if m:
            spoken = m.group(1).strip()
            action = m.group(2).strip()
            # collect following indented action lines
            j = i+1
            extra = []
            while j < len(lines) and (lines[j].startswith('    ') or lines[j].startswith('\t')):
                extra.append(lines[j].strip())
                j += 1
            if extra:
                action = action + ' ' + ' '.join(extra)
            rows.append({'scope': scope or 'Global', 'spoken_form': spoken, 'action': action, 'language_scope': '', 'lists_used': '', 'source': str(path.relative_to(ROOT))})
            i = j
            continue
        i += 1
    return rows

def scan_talon_list(path: Path):
    # .talon-list format: header like 'list: user.name' then '-' then Key: Value lines
    items = []
    with path.open('r', encoding='utf-8') as f:
        lines = [l.rstrip('\n') for l in f]
    list_name = path.stem
    if lines:
        first = lines[0]
        m = re.match(r'^list\s*:\s*(.+)$', first)
        if m:
            list_name = m.group(1).strip()
    for line in lines:
        if ':' in line:
            left = line.split(':',1)[0].strip()
            if left and not left.startswith('-') and not left.startswith('list'):
                items.append(left)
    return list_name, items

def scan_python_lists(path: Path):
    content = path.read_text(encoding='utf-8')
    lists = {}
    # find ctx.lists["user.xxx"] = { ... }
    for m in re.finditer(r'ctx\.lists\[\"(user\.[^\"]+)\"\]\s*=\s*\{', content):
        name = m.group(1)
        # naive capture until the closing '}' for the dict
        start = m.end()
        rest = content[start:]
        end = rest.find('}\n')
        if end!=-1:
            snippet = rest[:end+1]
        else:
            snippet = rest[:2000]
        values = re.findall(r'\"([^\"]+)\"\s*:\s*\"', snippet)
        lists[name] = sorted(set(values))
    return lists

def main():
    rows = []
    # scan .talon files
    for p in ROOT.rglob('*.talon'):
        rows.extend(scan_talon_file(p))
    # scan .talon-list files
    lists_index = {}
    for p in ROOT.rglob('*.talon-list'):
        name, items = scan_talon_list(p)
        lists_index[name] = sorted(set(items))
    # scan python list definitions
    for p in ROOT.rglob('*.py'):
        lists_index.update(scan_python_lists(p))

    # write CSV
    OUT.parent.mkdir(parents=True, exist_ok=True)
    headers = ['scope','spoken_form','action','language_scope','lists_used','source']
    with OUT.open('w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=headers)
        writer.writeheader()
        for r in rows:
            writer.writerow(r)

        # Also write a file-local HTML that embeds the rows as JSON so the cheatsheet works
        # when opened via file:// (no fetch required).
        EMBED_OUT = OUT.parent / 'index_local.html'
        try:
            json_rows = json.dumps(rows)
            # Embed JSON in a script[type=application/json] to avoid JS parsing issues with very large literals
            html = f'''<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Talon Cheatsheet (local)</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <header>
        <h1>Talon Cheatsheet (local)</h1>
        <p class="lead">This file embeds the cheatsheet data so it works when opened via <code>file://</code>.</p>
    </header>
    <section class="controls">
        <input id="search" placeholder="Search commands, actions, lists..." />
        <select id="scopeFilter">
            <option value="">All scopes</option>
        </select>
        <button id="downloadCsv">Download CSV</button>
    </section>
    <section id="tableWrap">
        <table id="cheatsheet">
            <thead>
                <tr>
                    <th>Scope</th>
                    <th>Spoken form</th>
                    <th>Action</th>
                    <th>Language</th>
                    <th>Lists used</th>
                    <th>Source</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </section>
  <script id="embed-data" type="application/json">
{json_rows}
  </script>
  <script src="main.js"></script>
</body>
</html>'''
            EMBED_OUT.write_text(html, encoding='utf-8')
        except Exception as e:
            print('Failed to write embedded HTML:', e)

        print(f'Wrote {OUT} with {len(rows)} commands and {len(lists_index)} lists')

if __name__ == '__main__':
    main()
