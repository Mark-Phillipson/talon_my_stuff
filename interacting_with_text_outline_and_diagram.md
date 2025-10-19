# Interacting with Text (Outline)

## Main Topics
- Two classes of editing system
  - Application is cooperating
  - Application is NOT cooperating
    - Application was not cooperating
    - No user or I modified the app to cooperate
- Accessibility APIs
  - Windows and Mac only (no Linux)
- OCR
  - Windows and Mac only (for now)
  - Probably works in all apps
  - Might "miss" if OCR is wrong or if it thinks words are in the slightly wrong place
  - Might think read-only text is editable (like on a website)
  - Allows Talon to use mouse cursor to select, which is "faster than keyboard"
  - Works over remote desktop
  - Accessibility and IME do not
- IME (Input Method Editor)
  - Platform specific, but PROBABLY available on all platforms
  - No idea what Linux does but surely these exist to some degree
  - No idea how well this works on Windows yet
  - Directly aware of active text area
  - Can perform edits and read text
  - Works in more places than accessibility API
  - Downside: high complexity to build
  - This is how macOS Voice Control does it
  - It's a plugin that lives inside the app hosting the text box
  - 3 levels of IME support
    - Full editing: can view all text, delete, insert at any position
    - Insert only: can stage text, can edit during staging, can't edit old text
    - Doesn't work at all
  - Why don't I already have an IME?
    - Requires RPC, don't have that yet
  - What will it take to make one?
    - Need to build RPC
  - How will IMEs fail / what downsides?
    - Don't work at all or worse: staged desktop
    - Probably won't work in games
    - Will work in some apps, but will work in more apps than accessibility
    - One of the app designs that's most likely to fail unfortunately, is programming IDEs (we can punt this because users use assists)
    - I also don't have a working IME yet so I don't really know where it's going to break
    - I could prototype an IME that doesn't take RPC to Talon just to see where it works
  - IMEs can be half working, where they only edit very recent "active" text
    - Not sure that has been confirmed yet, let's wait until later
  - How do we fall back to when it's not working?
    - Non-cooperating system
- Arrow keys + shift + delete
  - Works in all apps / operating systems
  - Requires you to remember what's there
  - You can get around remembering what's there via select all + copy, but that messes up your cursor and is weird if there's too much text
  - Usually the most robust and boring option
  - The text cursor may not end up where you expect, which can mess up your next edits
  - Accesses if the user types on others
- There's a way to do this blind, without remembering anything, by holding shift and pressing left arrow, and repeatedly getting selected text via copy
  - Main benefit: it works everywhere
  - Downside: you need to track everything and do seeking
  - And it's janky
    - Can detect designs, but becomes platform specific problem with more engineering/research
- If we're blind, we can't use the text to influence spoken commands
  - To be half blind, we can just remember everything they spoke recently
  - All recently inserted text, put it in a big log of words
- The word they're looking for might be to the right we don't know, then we give up and turn around
- How much do we care about the user normally interacting, how much do we care about the user NOT interacting, but Talon still being surprised by something (say, if you're in google docs and someone else edits)

## Editing System Classes
```mermaid
graph TD
    A[Interacting with Text] --> B[Editing System Classes]
    B --> B1[Cooperating]
    B --> B2[NOT Cooperating]
    B2 --> B21[App not cooperating]
    B2 --> B22[User or I modified app]
```

## Accessibility APIs
```mermaid
graph TD
    A[Accessibility APIs] --> A1[Windows/Mac only]
    A --> A2[Doesn't work in all apps]
    A --> A3[Level of support varies]
    A --> A4[Separate APIs]
    A --> A5[Pretty nice when works]
```

## OCR
```mermaid
graph TD
    A[OCR] --> A1[Windows/Mac only]
    A --> A2[Probably works in all apps]
    A --> A3[May miss if OCR wrong]
    A --> A4[May think read-only is editable]
    A --> A5[Mouse cursor selection]
    A --> A6[Works over remote desktop]
    A --> A7[Accessibility/IME do not]
```

## IME (Input Method Editor)
```mermaid
graph TD
    A[IME]
    A --> B1[Platform specific]
    B1 --> B2[Directly aware of text area]
    B2 --> B3[Can edit/read text]
    B3 --> B4[Works in more places]
    B4 --> B5[High complexity]
    B5 --> B6[macOS Voice Control]
    B6 --> B7[Plugin inside app]
    B7 --> B8[3 levels]
    B8 --> C1[Full editing]
    B8 --> C2[Insert only]
    B8 --> C3[Doesn't work]
    C3 --> D1[Requires RPC]
    D1 --> D2[Need to build RPC]
    D2 --> D3[IMEs can be half working]
    D3 --> D4[Fallback: non-cooperating]
```

## Arrow Keys, Blind Methods, and Editing Actions
```mermaid
graph TD
    A[Arrow keys + shift + delete] --> B1[Works everywhere]
    B1 --> B2[Requires memory]
    B2 --> B3[Select all + copy]
    B3 --> B4[Cursor may be wrong]
    B4 --> B5[Most robust]
    B5 --> B6[Accesses if user types]
    A --> C1[Blind method]
    C1 --> C2[Hold shift + left arrow]
    C2 --> C3[Track everything]
    C3 --> C4[Janky]
    C4 --> C5[Platform specific]
    A --> D1[Blind: can't use text]
    D1 --> D2[Remember spoken]
    D2 --> D3[Log of words]
    A --> E1[Editing Actions]
    E1 --> E2[Insert text]
    E2 --> E3[Replace foo with bar]
    E3 --> E4[Detect text]
    E4 --> E5[Speech recognition]
    E5 --> E6[Where to edit]
    E6 --> E7[Which foo?]
    E7 --> E8[Cursor/selection]
```

## Ambiguity / UI
```mermaid
graph TD
    A[Ambiguity/UI] --> B1[Two foos: number & choose]
    B1 --> B2[Show numbers]
    A --> C1[Homophones]
    C1 --> C2[Correct: write/right]
    C2 --> C3[Popup: write/right/cancel]
    A --> D1[Bonus: two utterances]
```

## User-facing API
```mermaid
graph TD
    A[User-facing API] --> B1[App-specific plugins]
    A --> B2[Common API]
    A --> B3[APIs: check, get, set, insert]
```

## Other notes
```mermaid
graph TD
    A[Other notes] --> B1[OCR not blocked]
    A --> B2[Load if blind]
    B2 --> C1[Works over remote desktop]
    B2 --> C2[Go as far as you can, turn around]
```
