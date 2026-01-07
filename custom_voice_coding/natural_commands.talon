^(natural | nat) <user.text>$:
    user.run_application_csharp_natural(text)
^(natural | nat) dictate$:
    speech.disable()
    user.run_application_csharp_natural("dictate")
^show letters$:
    user.run_application_csharp_natural("show letters")
^show taskbar$:
    user.run_application_csharp_natural("show taskbar")
^show desktop$:
    user.run_application_csharp_natural("show desktop")
