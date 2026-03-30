app: yourphoneappproxy.exe
-

#tag(): user.sound_clicks
#For use for the window phone link opens when working on the phone
# adb wirelessly connect to phone (Android 11+):
#   adb pair 192.168.1.42:5555
# adb list connected devices:
#   adb devices
# get a device ID from phone:
#   adb devices -l
# NOTE: This script leaves setup/control commands in global settings.
# Use `apps/phone_link_global.talon` for `phone link ...` commands.

#phone type <user.text>: user.phone_link_adb_type(text)
phone key <user.text>: user.phone_link_adb_keyevent(text)
phone enter: user.phone_link_adb_keyevent("enter")
phone backspace: user.phone_link_adb_keyevent("backspace")
phone tab: user.phone_link_adb_keyevent("tab")
phone home: user.phone_link_adb_keyevent("home")
phone desktop: user.phone_link_adb_keyevent("desktop")
phone escape: user.phone_link_adb_keyevent("escape")
phone delete: user.phone_link_adb_keyevent("delete")

phone type <user.text>: user.phone_link_terminal_comment(text)
phone mountain <user.text>: user.phone_link_terminal_comment_case(text, "upper")
phone valley <user.text>: user.phone_link_terminal_comment_case(text, "lower")
phone title <user.text>: user.phone_link_terminal_comment_case(text, "title")
phone fake [phone] number: user.phone_link_fake_phone_number()
phone [phone] number <user.text>: user.phone_link_fake_phone_number(text)
phone fake email:
    emailAddress = user.fake_email()
    user.phone_link_terminal_comment(emailAddress)
