from talon import Module
import subprocess
import time
import webbrowser
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
    
    def launch_talon_voice_command_server():
        """Launch Talon Voice Command Server"""
        uri = "http://localhost:5008/"
        # For 'dotnet run' we want the project folder (where the .csproj lives)
        project_dir = r"C:\Users\MPhil\source\repos\VoiceLauncherBlazor\TalonVoiceCommandsServer"
        exe = r"C:\Users\MPhil\source\repos\VoiceLauncherBlazor\TalonVoiceCommandsServer\publish\TalonVoiceCommandsServer.exe"
        cwd = r"C:\Users\MPhil\source\repos\VoiceLauncherBlazor\TalonVoiceCommandsServer\publish"
        logpath = r"C:\Users\MPhil\AppData\Local\Temp\talon_tvcs_launch.log"

        def log(msg):
            try:
                with open(logpath, "a", encoding="utf-8") as f:
                    f.write(f"{time.strftime('%Y-%m-%d %H:%M:%S')} - {msg}\n")
            except Exception:
                pass

        log(f"Attempting to start TVCS (dotnet run) in {project_dir}")

        # verify exe exists (helpful if user previously published)
        try:
            import os
            if not os.path.exists(exe):
                log(f"EXE not found (publish): {exe}")
        except Exception as e:
            log(f"Error checking exe: {e}")

        # Start via 'dotnet run' in a new PowerShell window so you can see build/runtime logs
        try:
            # Build a command that opens PowerShell, cd's to the project dir and runs dotnet run
            # Use -NoExit so the window stays open after the command finishes
            ps_command = f"cd '{project_dir}'; dotnet run --urls http://localhost:5008"
            full_cmd = f"cmd /c start powershell -NoExit -Command \"{ps_command}\""
            proc = subprocess.Popen(full_cmd, shell=True)
            log(f"Started 'dotnet run' via new PowerShell window: pid={getattr(proc, 'pid', None)}")
        except Exception as e_start:
            log(f"Failed to start 'dotnet run' in PowerShell window: {e_start}")
            raise

        # Poll the http endpoint until it responds or timeout
        import socket

        def wait_for_port(host, port, timeout=10.0):
            end = time.time() + timeout
            while time.time() < end:
                try:
                    with socket.create_connection((host, port), timeout=1):
                        return True
                except Exception:
                    time.sleep(0.25)
            return False

        host = '127.0.0.1'
        port = 5008
        ok = wait_for_port(host, port, timeout=10.0)
        log(f"Port {port} ready: {ok}")
        if ok:
            webbrowser.open(uri)
        else:
            log(f"Server did not respond on {host}:{port} after timeout; opening browser anyway")
            webbrowser.open(uri)
