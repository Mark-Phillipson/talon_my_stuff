from talon import Module
import subprocess
mod = Module()

@mod.action_class
class Actions:
    def launch_voice_admin():
        """Launch voice admin"""
        uri = "http://localhost:5000/launchersfavourites"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\VoiceLauncher.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        uri = "http://localhost:5000/launchersfavourites"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\VoiceLauncher.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        subprocess.Popen(["start", uri], shell=True)
    def launch_realtime_ai_app():
        """Launch Realtime AI app"""
        uri = "http://localhost:5174/"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp\\bin\\Release\\net9.0\\publish\\RealtimeFormApp.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp\\bin\\Release\\net9.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        uri = "http://localhost:5174/"
        psi = subprocess.Popen(["C:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp\\bin\\Release\\net9.0\\publish\\RealtimeFormApp.exe"], 
                                shell=True, 
                                cwd="C:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp\\bin\\Release\\net9.0\\publish\\",
                                creationflags=subprocess.CREATE_NEW_CONSOLE)

        subprocess.Popen(["start", uri], shell=True)
        