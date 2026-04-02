os: windows
-

# Phone Link control commands available globally on Windows.
# Setup commands (no app focus required).
# adb = Android Debug Bridge (platform tool to send commands to a connected Android device)

# -----------------------------------------------------------------------------
# 1. USB DEBUGGING SETUP
# Follow this section first to get one authorized device visible to adb.
# Manual order:
#   1. Enable Developer options and USB debugging on the phone.
#   2. Connect the phone over USB and accept the authorization prompt.
#   3. Confirm the phone appears as `device` in `adb devices -l`.
#   4. Select the device ID or auto-discover it below.
#   5. If you want to switch from USB to Wi-Fi, run `phone link tcpip` last.

# List all currently connected ADB devices and their state.
#   adb devices -l
phone link list devices: user.phone_link_list_adb_devices()

# Set ADB target device ID from clipboard contents.
# Manual order:
#   1. Run `adb devices -l`
#   2. Copy the first-column device ID
#   3. Run this voice command
phone link set device: user.phone_link_set_adb_device_from_clipboard()

# Discover and configure the first online adb device automatically.
# Use this instead of `phone link set device` if there is only one device attached.
phone link discover device: user.phone_link_discover_adb_device()

# Report the currently selected device and the available connected devices.
#   adb devices -l
phone link status: user.phone_link_status()

# Switch the currently selected USB-connected phone into TCP mode for wireless adb.
# Run this while USB is still connected.
#   adb tcpip 5555
phone link tcpip: user.phone_link_tcpip()

# -----------------------------------------------------------------------------
# 2. WIRELESS DEBUGGING SETUP
# Follow this section after USB setup, or after enabling Android Wireless debugging.
# Manual order:
#   1. Enable Wireless debugging on the phone.
#   2. Pair with the code shown on the phone, if required.
#   3. Prefer an IP:port such as `192.168.0.3:5555` on Windows.
#   4. If adb shows only an `adb-..._adb-tls-connect._tcp` name, get the IP first.
#   5. Connect using the explicit host:port.

# Pair with the code displayed in the phone Wireless debugging UI.
# Spoken form example:
#   phone link pair code 192.168.0.3:5555 123456
# Terminal equivalent:
#   adb pair <ip>:<port> <pairing_code>
phone link pair code <user.text>: user.phone_link_pair_code(text)

# Generic reconnect using the currently selected adb device ID.
# This may fail on Windows if the selected device is an mDNS name such as
# `adb-R3CW40BQS0M-Y71tPX._adb-tls-connect._tcp` instead of a real IP:port.
# Terminal equivalent:
#   adb connect <device_id>
phone link connect: user.phone_link_connect()

# Copy a host:port value to the clipboard, then set it here.
# Prefer an IP:port copied from the phone or from the `src` value in `ip route`.
# Example clipboard value:
#   192.168.0.3:5555
phone link set host: user.phone_link_set_host_port_from_clipboard()

# Read the currently configured host:port.
phone link get host: user.phone_link_get_host_port()

# Duplicate alias of `phone link connect`, commented out so the setup steps read cleanly.
# phone link connect host: user.phone_link_connect()

# Connect over Wi-Fi to an explicit host:port.
# Spoken form example:
#   phone link connect host 192.168.0.3:5555
# Terminal equivalent:
#   adb connect <host:port>
phone link connect host <user.text>: user.phone_link_connect_to_host(text)

# Manual fallback when adb only shows an mDNS hostname:
#   1. adb devices -l
#   2. adb -s <device_id> shell ip route
#   3. Take the `src` value from `wlan0` (for example `192.168.0.3`)
#   4. adb connect 192.168.0.3:5555
