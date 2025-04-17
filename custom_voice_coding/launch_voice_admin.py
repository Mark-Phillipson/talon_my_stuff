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
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        uri = "http://localhost:5000/launchersfavourites"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net9.0\\publish\\VoiceLauncher.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        subprocess.Popen(["start", uri], shell=True)
        
        