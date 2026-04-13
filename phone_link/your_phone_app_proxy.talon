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
# Use `phone_link/phone_link_global.talon` for `phone link ...` commands.

#phone type <user.text>: user.phone_link_adb_type(text)
key <user.text>: user.phone_link_adb_keyevent(text)
enter: user.phone_link_adb_keyevent("enter")
backspace: user.phone_link_adb_keyevent("backspace")
tab: user.phone_link_adb_keyevent("tab")
home: user.phone_link_adb_keyevent("home")
desktop: user.phone_link_adb_keyevent("desktop")
escape: user.phone_link_adb_keyevent("escape")
delete: user.phone_link_adb_keyevent("delete")

phone type <user.text>: user.phone_link_terminal_comment(text)
mountain <user.text>: user.phone_link_terminal_comment_case(text, "upper")
valley <user.text>: user.phone_link_terminal_comment_case(text, "lower")
title <user.text>: user.phone_link_terminal_comment_case(text, "title")
fake [phone] number: user.phone_link_fake_phone_number()
[phone] number <user.text>: user.phone_link_fake_phone_number(text)
fake email:
    emailAddress = user.fake_email()
    user.phone_link_terminal_comment(emailAddress)
