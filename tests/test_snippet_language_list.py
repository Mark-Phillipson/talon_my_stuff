import ast
import os
import pytest

def get_snippet_language_dict():
    """Parse the user.snippet_language dict from the Talon Python file safely."""
    file_path = os.path.join(
        os.path.dirname(__file__),
        "..",
        "custom_voice_coding",
        "custom_snippet_languages.py"
    )
    file_path = os.path.abspath(file_path)
    with open(file_path, "r", encoding="utf-8") as f:
        source = f.read()
    tree = ast.parse(source, filename=file_path)
    for node in ast.walk(tree):
        if isinstance(node, ast.Assign):
            # Look for ctx_default.lists["user.snippet_language"] = {...}
            target = node.targets[0]
            if (
                isinstance(target, ast.Subscript)
                and isinstance(target.value, ast.Attribute)
                and target.value.attr == "lists"
            ):
                # Support Python 3.8 and earlier (ast.Index/ast.Str) and 3.9+ (ast.Constant)
                subscript = target.slice
                key = None
                if hasattr(ast, "Constant") and isinstance(subscript, ast.Constant):
                    key = subscript.value
                elif isinstance(subscript, ast.Index):
                    idx_value = subscript.value
                    if isinstance(idx_value, ast.Str):
                        key = idx_value.s
                    elif hasattr(ast, "Constant") and isinstance(idx_value, ast.Constant):
                        key = idx_value.value
                elif isinstance(subscript, ast.Str):
                    key = subscript.s
                if key == "user.snippet_language":
                    return ast.literal_eval(node.value)
    raise RuntimeError("user.snippet_language dict not found in file")

def test_snippet_language_exists():
    d = get_snippet_language_dict()
    assert isinstance(d, dict)
    assert len(d) > 0

def test_snippet_language_has_blazor():
    d = get_snippet_language_dict()
    assert "Blazor" in d
    assert d["Blazor"] == "Blazor"

def test_snippet_language_no_duplicate_keys():
    d = get_snippet_language_dict()
    keys = list(d.keys())
    assert len(keys) == len(set(keys)), "Duplicate keys found in snippet_language list"

def test_snippet_language_values_nonempty():
    d = get_snippet_language_dict()
    for k, v in d.items():
        assert isinstance(v, str)
        assert v.strip() != "", f"Value for key '{k}' is empty"
