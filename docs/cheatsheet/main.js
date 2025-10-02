async function fetchCsv() {
    const resp = await fetch('cheatsheet.csv');
    const text = await resp.text();
    return parseCsv(text);
}

function parseCsv(text) {
    const lines = text.split('\n').filter(Boolean);
    const headers = lines.shift().split(',').map(h => h.trim());
    return lines.map(line => {
        const parts = line.split(',');
        const obj = {};
        headers.forEach((h, i) => obj[h] = parts[i] ? parts[i].trim() : "");
        return obj;
    });
}

function renderRows(rows) {
    const tbody = document.querySelector('#cheatsheet tbody');
    tbody.innerHTML = '';
    rows.forEach(r => {
        const tr = document.createElement('tr');
        tr.innerHTML = `<td>${escapeHtml(r.scope)}</td>
      <td>${escapeHtml(r.spoken_form)}</td>
      <td><code>${escapeHtml(r.action)}</code></td>
      <td>${escapeHtml(r.language_scope)}</td>
      <td>${escapeHtml(r.lists_used)}</td>
      <td class="muted">${escapeHtml(r.source)}</td>`;
        tbody.appendChild(tr);
    });
}

function escapeHtml(s) { if (!s) return ''; return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;'); }

function installControls(rows) {
    const search = document.getElementById('search');
    const scopeFilter = document.getElementById('scopeFilter');
    const downloadCsv = document.getElementById('downloadCsv');

    const scopes = Array.from(new Set(rows.map(r => r.scope || 'Global'))).sort();
    scopes.forEach(s => {
        const o = document.createElement('option'); o.value = s; o.textContent = s; scopeFilter.appendChild(o);
    });

    // Create a custom select component (for cases where native dropdowns are unreadable)
    createCustomSelect(scopeFilter, scopes);

    function filter() {
        const q = search.value.toLowerCase();
        const scope = scopeFilter.value;
        const filtered = rows.filter(r => {
            if (scope && (r.scope || 'Global') !== scope) return false;
            const hay = `${r.spoken_form} ${r.action} ${r.lists_used} ${r.language_scope} ${r.source}`.toLowerCase();
            return !q || hay.includes(q);
        });
        renderRows(filtered);
    }
    search.addEventListener('input', filter);
    scopeFilter.addEventListener('change', filter);
    downloadCsv.addEventListener('click', () => {
        const blob = new Blob([rowsToCsv(rows)], { type: 'text/csv' });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a'); a.href = url; a.download = 'cheatsheet.csv'; a.click(); URL.revokeObjectURL(url);
    });
}

function createCustomSelect(nativeSelect, options) {
    // Hide native select visually and disable it to prevent the OS native dropdown from opening
    // Keep a copy as aria-hidden for accessibility tools if needed
    nativeSelect.setAttribute('aria-hidden', 'true');
    nativeSelect.tabIndex = -1;
    nativeSelect.style.display = 'none';

    const wrapper = document.createElement('div'); wrapper.className = 'custom-select';
    const button = document.createElement('button'); button.className = 'custom-select-button'; button.type = 'button';
    button.textContent = nativeSelect.options[nativeSelect.selectedIndex]?.text || 'All scopes';
    button.setAttribute('aria-haspopup', 'listbox');
    button.setAttribute('aria-expanded', 'false');

    const panel = document.createElement('div'); panel.className = 'custom-select-panel'; panel.style.display = 'none';
    const input = document.createElement('input'); input.className = 'custom-select-search'; input.placeholder = 'Filter scopes...';
    panel.appendChild(input);

    const list = document.createElement('div'); list.setAttribute('role', 'listbox');
    options.forEach(opt => {
        const item = document.createElement('div'); item.className = 'custom-select-item'; item.tabIndex = 0;
        item.textContent = opt; item.dataset.value = opt;
        item.addEventListener('click', () => {
            nativeSelect.value = opt; nativeSelect.dispatchEvent(new Event('change'));
            button.textContent = opt; closePanel();
        });
        item.addEventListener('keydown', (e) => { if (e.key === 'Enter') { item.click(); } });
        list.appendChild(item);
    });
    panel.appendChild(list);

    function openPanel() { panel.style.display = 'block'; button.setAttribute('aria-expanded', 'true'); input.focus(); }
    function closePanel() { panel.style.display = 'none'; button.setAttribute('aria-expanded', 'false'); }

    button.addEventListener('click', () => { if (panel.style.display === 'none') openPanel(); else closePanel(); });
    input.addEventListener('input', () => {
        const q = input.value.toLowerCase();
        Array.from(list.children).forEach(ch => {
            ch.style.display = (!q || ch.textContent.toLowerCase().includes(q)) ? '' : 'none';
        });
    });

    wrapper.appendChild(button); wrapper.appendChild(panel);
    nativeSelect.parentNode.insertBefore(wrapper, nativeSelect);
    // If the native select is still interactive on some platforms, ensure it won't show its native UI
    nativeSelect.style.pointerEvents = 'none';
}

function rowsToCsv(rows) {
    const headers = ['scope', 'spoken_form', 'action', 'language_scope', 'lists_used', 'source'];
    const lines = [headers.join(',')];
    rows.forEach(r => {
        const parts = headers.map(h => `"${(r[h] || '').replace(/"/g, '""')}"`);
        lines.push(parts.join(','));
    });
    return lines.join('\n');
}

async function loadFromFileInput(file) {
    const text = await file.text();
    const rows = parseCsv(text);
    installControls(rows);
    renderRows(rows);
}

function showFileFallback(err) {
    const wrap = document.querySelector('#tableWrap');
    wrap.innerHTML = '';
    const p = document.createElement('div');
    p.innerHTML = '<p style="color:#f88">Couldn\'t fetch <code>cheatsheet.csv</code> (this can happen when opening the page with <code>file://</code> or when the browser blocks local fetches).</p>' +
        '<p>Options:<ol>' +
        '<li>Serve the docs/cheatsheet folder over HTTP (recommended): <code>python -m http.server 8000</code> and open <code>http://localhost:8000/</code>.</li>' +
        '<li>Or choose a local <code>cheatsheet.csv</code> file to load now: <input type="file" id="csvPicker" accept=".csv" /></li>' +
        '</ol></p>';
    wrap.appendChild(p);
    const picker = document.getElementById('csvPicker');
    if (picker) {
        picker.addEventListener('change', async (ev) => {
            const f = ev.target.files[0];
            if (f) await loadFromFileInput(f);
        });
    }
    console.warn('CSV fetch error', err);
}

(async () => {
    try {
        // If a page embeds the rows (index_local.html), accept multiple embedding forms and skip fetch.
        if (typeof window !== 'undefined') {
            if (window.EMBED_ROWS) {
                let rows = window.EMBED_ROWS;
                if (!Array.isArray(rows) && typeof rows === 'string') {
                    try { rows = JSON.parse(rows); } catch (e) { rows = null; }
                }
                if (Array.isArray(rows)) {
                    installControls(rows);
                    renderRows(rows);
                    return;
                }
            }
            // Also support embedding via a <script id="embed-data" type="application/json">...</script>
            const embedScript = document.getElementById('embed-data');
            if (embedScript && embedScript.textContent) {
                try {
                    const rows = JSON.parse(embedScript.textContent);
                    if (Array.isArray(rows)) {
                        installControls(rows);
                        renderRows(rows);
                        return;
                    }
                } catch (e) { /* fall through to fetch */ }
            }
        }

        const rows = await fetchCsv();
        installControls(rows);
        renderRows(rows);
    } catch (e) {
        showFileFallback(e);
    }
})();
