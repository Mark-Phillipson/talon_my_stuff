os: windows
-

# Phone Link control commands available globally on Windows.
# Setup commands (no app focus required).
#  TERMINAL COMMANDS
# adb = Android Debug Bridge (platform tool to send commands to a connected Android device)
# adb wirelessly connect to phone (Android 11+) if not using USB lead:
#   adb pair 192.168.1.42:5555
# adb list connected devices:
#   adb devices
# get a device ID from phone:
#   adb devices -l

# Set ADB target device ID from clipboard contents (copy from adb devices -l output first).
#   adb devices -l
#   <copy the <device_id> from the first column>
phone link set device: user.phone_link_set_adb_device_from_clipboard()

# Discover and configure first online ADB device automatically.
# Equivalent manual commands:
#   adb devices -l
#   adb -s <device_id> shell <...>
phone link discover device: user.phone_link_discover_adb_device()

# Report the currently selected device status and available connected devices.
#   adb devices -l
phone link status: user.phone_link_status()

# Connect to the configured ADB device (wireless tcpip/5555 target).
#   adb connect <device_id> OR adb connect <ip>:5555
phone link connect: user.phone_link_connect()

# List all currently connected ADB devices and their state.
#   adb devices
phone link list devices: user.phone_link_list_adb_devices()

# Wireless setup helpers (may require USB auth first; use wireless debugging panel on phone).
# Pair with code displayed in phone wireless debug UI.
#   adb pair <ip>:<port> <pairing_code>
# Voice phrase: phone link pair code <ip:port> <code>
phone link pair code <user.text>: user.phone_link_pair_code(text)

# Switch to TCP mode on the phone side (over USB first or direct authorized device).
#   adb tcpip 5555
phone link tcpip: user.phone_link_tcpip()

# Copy host:port (ip:port) to clipboard, then set host from clipboard.
#   copy 192.168.1.42:5555 (clipboard) then use this phrase.
# adb-R3CW40BQS0M-Y71tPX._adb-tls-connect._tcp
phone link set host: user.phone_link_set_host_port_from_clipboard()
# Read current configured host:port in status.
phone link get host: user.phone_link_get_host_port()

# Connect over Wi-Fi to the configured host:port.
#   adb connect <host:port>
phone link connect host: user.phone_link_connect()

# Connect over Wi-Fi to an explicit host:port.
#   adb connect <host:port>
phone link connect host <user.text>: user.phone_link_connect_to_host(text)
