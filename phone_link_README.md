# Phone Link ADB helper

This document describes phone-link ADB commands in this Talon repo and the one-step batch flow.

## Files

- `apps/phone_link_helper.py`: action definitions (`user.phone_link_*`)
- `apps/phone_link_global.talon`: voice command bindings
- `phone_link_wireless.bat`: multi-step wireless ADB flow (including clipboard support)

## Voice commands (Talon)

1. `phone link list devices` -> `user.phone_link_list_adb_devices()`
2. `phone link set device` -> `user.phone_link_set_adb_device_from_clipboard()`
3. `phone link discover device` -> `user.phone_link_discover_adb_device()`
4. `phone link status` -> `user.phone_link_status()`
5. `phone link tcp` -> `user.phone_link_tcpip()`

### Wireless host:port via clipboard

6. `phone link set host` -> `user.phone_link_set_host_port_from_clipboard()`
7. `phone link get host` -> `user.phone_link_get_host_port()`
8. `phone link connect host from clipboard` -> `user.phone_link_connect_to_host()`
9. `phone link connect host <ip:port>` -> `user.phone_link_connect_to_host(text)`

## Batch file flow: `phone_link_wireless.bat`

Supported usage:

- No argument: uses clipboard value (required `host:port`)
- `phone_link_wireless.bat 192.168.0.3:5555` explicit host:port
- `phone_link_wireless.bat R3CW40BQS0M 192.168.0.3:5555` explicit device + host:port

Steps performed internally:

1. `adb devices -l`
2. `adb -s <device> tcpip 5555`
3. `adb connect <host:port>`

## Troubleshooting

- If your device is in `unauthorized` / `offline` state, re-authorize the phone in USB debugging mode.
- For voice reliability prefer clipboard call (copy exact host:port before voice command).
- `phone link tcp` may fail with ADB status 1 if the device is already in TCP mode or not reachable.

## Optional alias

Add a voice command alias in `apps/phone_link_global.talon` if desired, e.g.:

`phone link wireless connect: user.phone_link_wireless_bat()`

(Requires adding `phone_link_wireless_bat` action in `phone_link_helper.py` that runs `subprocess.run(["phone_link_wireless.bat"])`.)
