# Phone Link Talon Integration: Setup + Non-Technical User Plan

## 1. Can we avoid setting up phone developer mode? (short answer)

- ADB (Android Debug Bridge) requires Developer Mode / USB Debugging on Android.
- If the use case is to control a phone from a PC without dev-mode, then ADB-based Talon commands are not possible.
- Alternative approaches (without dev mode):
  - Use Microsoft Phone Link / Your Phone built into Windows (if the phone is supported and paired normally).
  - Use official APIs / apps (e.g., Pushbullet, AirDroid with standard app pairing) and bridge via a web service.
  - Use Bluetooth or network automation via a separate installed app, not ADB.

> For the existing command set in `phone_link/phone_link.talon`, ADB is the implementation path and Developer Mode is a hard requirement on Android.

## 2. What we can improve for non-technical users

### 2.1 Centralize config in a single, user-friendly file
- Create `phone_link_config.json` like:
  - `adb_device_id` (optional; auto-discovery fallback)
  - `base_url` or `pairing_info` for future non-ADB modes
- Load config in helper script, don’t edit `.talon` directly.

### 2.2 Add a dedicated setup script
- `phone_link_setup.py` for interactive configuration and device discovery.
- It can:
  1. check for `adb` on PATH
  2. list devices via `adb devices -l`
  3. select a device (auto-first or voice command)
  4. write config to JSON
  5. validate connection with quick test keyevent

### 2.3 Add in-Talon voice setup commands
- `phone link connect` -> runs `adb connect <device>`
- `phone link status` -> announces `connected`/`not connected`
- `phone link set device <text>` -> updates config without editing source

### 2.4 Add robust reconnect and retry behavior
- When a command is run and no device is connected:
  - attempt 1-2 reconnect retries
  - show user-friendly text-to-speech messages

### 2.5 Document user workflow
- Add simplified README section or guide in file `phone_link_setup_plan.md`.
- Include screenshot-style steps, a one-liner for copy/paste.

## 3. Non-ADB alternative path (for a future version)

- Explore Microsoft Phone Link API or an HTTP-based app that exposes a REST endpoint on the phone.
- This avoids Developer Mode but requires phone app installation and pairing.
- In Talon, replace `adb shell input` calls with local HTTP requests.

## 4. Proposed immediate action plan (markdown checklist)

### 4.1 Build minimum viable “non-developer UI” setup
- [x] keep existing working `phone_link/phone_link.talon` commands
- [x] create `phone_link_config.json` format
- [x] add `phone_link_setup.py` (interactive CLI)
- [x] add status/auto-connect voice commands
- [x] write document `phone_link_setup_plan.md`

### 4.2 Optional (stretch goals)
- [ ] add an external tray app / GUI as installer
- [ ] add fallback to `phone link via Phone Link` (non-ADB pilot)
- [ ] provide script for `adb pair` from the device pairing code or QR pairing link

## 5. Example voice phrases for non-technical user
- `phone link setup`
- `phone link status`
- `phone link connect`
- `phone link fallback` (future Phone Link mode)
- `phone link say <user.text>`

## 6. Notes for maintainers
- Keep `phone_link/phone_link.talon` as high-level command definitions and short mapping.
- Keep script responsibilities in helper module, not Talon grammar.
- Mark the config file as user-editable and import from there.
- Encourage a one-click Talon reload step in docs: `talon reload` or from UI.
