from talon import Module
import subprocess
import time
import webbrowser
from typing import Optional

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

    def launch_talon_voice_command_server(self=None):
        """Launch Talon Voice Command Server (backwards-compatible wrapper)"""
        project_dir = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\TalonVoiceCommandsServer"
        uri = "http://localhost:5008/"
        return Actions.launch_dotnet_project(project_dir=project_dir, port=5008, uri=uri, timeout=10.0)

    def launch_dotnet_project(self, project_dir: str,
                             port: int = 5008,
                             uri: Optional[str] = None,
                             exe: Optional[str] = None,
                             cwd: Optional[str] = None,
                             timeout: float = 10.0):
        """Launch a .NET project with 'dotnet run' in a new PowerShell window and open the browser when ready.

        Args:
            project_dir: Path to the project directory (where the .csproj lives).
            port: Port the app will listen on (used for readiness check and default URL).
            uri: Optional URL to open in the browser. If None, defaults to http://localhost:{port}/
            exe: Optional full path to a published exe to check for existence (informational only).
            cwd: Optional working directory for the process (informational only).
            timeout: Seconds to wait for the port to become ready.
        """
        logpath = r"C:\\Users\\MPhil\\AppData\\Local\\Temp\\talon_dotnet_launch.log"

        def log(msg: str) -> None:
            try:
                with open(logpath, "a", encoding="utf-8") as f:
                    f.write(f"{time.strftime('%Y-%m-%d %H:%M:%S')} - {msg}\n")
            except Exception:
                pass

        log(f"Attempting to start dotnet project in {project_dir}")

        # verify exe exists (helpful if user previously published)
        try:
            import os
            if exe and not os.path.exists(exe):
                log(f"EXE not found (publish): {exe}")
        except Exception as e:
            log(f"Error checking exe: {e}")

        # Start the app. Prefer running a published executable if provided (no Kestrel warning).
        try:
            import os
            if exe and os.path.exists(exe):
                exe_cwd = cwd or os.path.dirname(exe)
                proc = subprocess.Popen([exe], shell=True, cwd=exe_cwd, creationflags=subprocess.CREATE_NEW_CONSOLE)
                log(f"Started published EXE: {exe} (pid={getattr(proc, 'pid', None)})")
            else:
                # Run via `dotnet run` but do not pass --urls to avoid Kestrel warning about overriding
                # endpoints defined in launchSettings.json or other configuration.
                ps_command = f"cd '{project_dir}'; dotnet run"
                full_cmd = f"cmd /c start powershell -NoExit -Command \"{ps_command}\""
                proc = subprocess.Popen(full_cmd, shell=True)
                log(f"Started 'dotnet run' via new PowerShell window: pid={getattr(proc, 'pid', None)}")
        except Exception as e_start:
            log(f"Failed to start application: {e_start}")
            raise

        # Poll the http endpoint until it responds or timeout
        import socket

        def wait_for_port(host: str, port: int, timeout: float = 10.0) -> bool:
            end = time.time() + timeout
            while time.time() < end:
                try:
                    with socket.create_connection((host, port), timeout=1):
                        return True
                except Exception:
                    time.sleep(0.25)
            return False

        host = '127.0.0.1'
        ok = wait_for_port(host, port, timeout=timeout)
        log(f"Port {port} ready: {ok}")

        if uri is None:
            uri = f"http://localhost:{port}/"

        if ok:
            webbrowser.open(uri)
        else:
            log(f"Server did not respond on {host}:{port} after timeout; opening browser anyway")
            webbrowser.open(uri)
