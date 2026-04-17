from talon import Module, actions, clip
import re
import unicodedata

mod = Module()

# -- Clipboard helpers (robust across Talon versions) ---------------------------------

def _get_clip_text():
    try:
        return clip.get()
    except Exception:
        try:
            return actions.clip.get_text()
        except Exception:
            try:
                return actions.clip.get()
            except Exception:
                return None


def _set_clip_text(text: str):
    try:
        clip.set_text(text)
    except Exception:
        try:
            actions.clip.set_text(text)
        except Exception:
            try:
                actions.clip.set(text)
            except Exception:
                pass


# -- Text normalization / masking utilities ------------------------------------------

def _normalize_text(text: str) -> str:
    if not text:
        return text
    replacements = {
        "\u2019": "'",
        "\u2018": "'",
        "\u201c": '"',
        "\u201d": '"',
        "\u2013": '-',
        "\u2014": '-',
        "\u2015": '-',
    }
    for k, v in replacements.items():
        text = text.replace(k, v)
    return text


def _fix_case_after_removed_periods(text: str) -> str:
    # Lowercase a likely sentence-start word that follows a short lowercase token and a period.
    def repl(m):
        return f"{m.group(1)}. {m.group(2).lower()}"

    return re.sub(r"\b([a-z]{1,3})\.\s+([A-Z][a-z]+)", repl, text)


def _mask_patterns(text: str):
    masks = []

    def _mask(pattern, s):
        def _repl(m):
            token = f"__MASK{len(masks)}__"
            masks.append(m.group(0))
            return token

        return re.sub(pattern, _repl, s)

    masked = text
    # URLs first
    masked = _mask(r"https?://\S+|www\.\S+", masked)
    # Emails
    masked = _mask(r"[\w\.-]+@[\w\.-]+\.[\w]{2,}", masked)
    # Decimals
    masked = _mask(r"\b\d+\.\d+\b", masked)
    # Acronyms like U.S.A.
    masked = _mask(r"(?:[A-Z]\.){2,}", masked)
    return masked, masks


def _restore_masks(text: str, masks: list) -> str:
    for i, original in enumerate(masks):
        text = text.replace(f"__MASK{i}__", original)
    return text


def _remove_punct_chars(text: str, keep_apostrophe: bool = True, keep_hyphen: bool = True) -> str:
    out = []
    for ch in text:
        cat = unicodedata.category(ch)
        if cat.startswith("P") or cat.startswith("S"):
            if ch == "'" and keep_apostrophe:
                out.append(ch)
            elif ch == "-" and keep_hyphen:
                out.append(ch)
            else:
                out.append(" ")
        else:
            out.append(ch)
    return "".join(out)


def _collapse_whitespace(text: str) -> str:
    return re.sub(r"\s+", " ", text).strip()


def _remove_punctuation_impl(text: str, keep_apostrophe: bool = True, keep_hyphen: bool = True) -> str:
    if text is None:
        return ""
    text = _normalize_text(text)
    text = _fix_case_after_removed_periods(text)
    masked, masks = _mask_patterns(text)
    removed = _remove_punct_chars(masked, keep_apostrophe, keep_hyphen)
    restored = _restore_masks(removed, masks)
    return _collapse_whitespace(restored)


# -- Talon actions -------------------------------------------------------------------

@mod.action_class
class Actions:
    def remove_punctuation(text: str, keep_apostrophe: bool = True, keep_hyphen: bool = True) -> str:
        """Return `text` with punctuation removed (keeps emails/URLs/decimals/acronyms intact).

        Defaults: preserve apostrophes and hyphens to avoid breaking contractions/compounds.
        """
        return _remove_punctuation_impl(text, keep_apostrophe, keep_hyphen)

    def remove_punctuation_and_insert(text: str, paste: bool = False, keep_apostrophe: bool = True, keep_hyphen: bool = True):
        """Clean `text` and insert it into the focused editor.

        If `paste` is True the function will set the clipboard and paste (`ctrl-v`) as a fallback.
        """
        cleaned = _remove_punctuation_impl(text, keep_apostrophe, keep_hyphen)
        if paste:
            _set_clip_text(cleaned)
            actions.key("ctrl-v")
            return
        try:
            actions.insert(cleaned)
        except Exception:
            _set_clip_text(cleaned)
            actions.key("ctrl-v")

    def remove_punctuation_from_selection(keep_apostrophe: bool = True, keep_hyphen: bool = True, paste: bool = False):
        """Obtain the current selection (use Talon selection API when available), clean it and replace it in-place.

        The function attempts a best-effort, non-destructive replacement: it first tries to read the selection
        via `actions.edit.selected_text()` (if available). If that's not present it falls back to a quick
        `ctrl-c`/clipboard read. Replacing is done by `actions.insert(cleaned)` (typing while a selection is active
        replaces it in most editors); a clipboard paste fallback is used if necessary.
        """
        selected = None
        # Try Talon's selection API when available
        try:
            if hasattr(actions.edit, "selected_text"):
                selected = actions.edit.selected_text()
        except Exception:
            selected = None

        # Fallback: copy to clipboard and read
        if selected is None:
            try:
                actions.key("ctrl-c")
                actions.sleep("50ms")
            except Exception:
                pass
            try:
                selected = clip.get()
            except Exception:
                try:
                    selected = actions.clip.get_text()
                except Exception:
                    try:
                        selected = actions.clip.get()
                    except Exception:
                        selected = None

        if not selected:
            return

        # Heuristic: lowercase words that start sentences (i.e. follow a full stop/exclamation/question)
        # so that when we remove sentence-ending punctuation the following word is lowercased.
        try:
            # Match punctuation possibly followed by a closing quote/paren/bracket, then whitespace, then an uppercase letter
            pattern = re.compile(r"([.!?][\'\"\)\]]*)(\s+)([A-Z])")
            prepared = pattern.sub(lambda m: f"{m.group(1)}{m.group(2)}{m.group(3).lower()}", selected)
        except Exception:
            prepared = selected

        cleaned = _remove_punctuation_impl(prepared, keep_apostrophe, keep_hyphen)

        try:
            if paste:
                _set_clip_text(cleaned)
                actions.key("ctrl-v")
            else:
                actions.insert(cleaned)
        except Exception:
            _set_clip_text(cleaned)
            actions.key("ctrl-v")
