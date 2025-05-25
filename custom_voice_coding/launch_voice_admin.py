from talon import Module
import subprocess
import time
mod = Module()

@mod.action_class
class Actions:
    def launch_voice_admin():
        """Launch voice admin"""
        uri = "http://localhost:5000/launchersfavourites"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net9.0\\publish\\VoiceLauncher.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net9.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        uri = "http://localhost:5000/launchersfavourites"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net9.0\\publish\\VoiceLauncher.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net9.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        subprocess.Popen(["start", uri], shell=True)
    def launch_word_game():
        """Launch word game"""
        # Open the Terminal and Run the Command
        command = "cd C:\\Users\\MPhil\\source\\repos\\Words\\cautious-robot\\Client && dotnet run"
        subprocess.Popen(command, shell=True, creationflags=subprocess.CREATE_NEW_CONSOLE)
        uri = "https://localhost:7212/"
        subprocess.Popen(["start", uri], shell=True)

        