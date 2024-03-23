# COPY THIS FILE INTO YOUR USER FOLDER AND CHANGE THE SETTINGS AS DESIRED
# THIS FILE IS IGNORED BY DEFAULT AND JUST AN EXAMPLE

settings():
    # Echo the subtitles from talon back via tts
    user.echo_dictation = false

    # How fast to play back text-to-speech -10 to 10
    # Ignored if using screenreader tts
    user.tts_speed = 4

    # How loud to play back text-to-speech from 0 to 100
    # Ignored if using screenreader tts
    user.tts_volume = 70

    # Automatically echo the context of the focused window when switching applications/tabs
    user.echo_context = false

    # If a screen reader is enabled, use it for tts instead of the TTS engine in Talon
    user.tts_via_screenreader = false

    # Key used for nvda modifier, change to 'insert' if that is your nvda modifier
    user.nvda_key = 'capslock'

    # Starts NVDA automatically with Talon
    user.start_screenreader_on_startup = false

    # Output dictated text to braille display through your screen reader
    user.echo_braille = false

    # To prevent errors from accidental key presses, play a sound each time a key is pressed
    user.sound_on_keypress = false

    # Disable all keypresses from Talon in high risk contexts that cannot afford typos
    user.disable_keypresses = false

    # Speak Talon's mode (command, dictation, mixed) whenever it is changed
    user.announce_mode_updates = true

    # Display debugging output for NVDA
    user.addon_debug = false
