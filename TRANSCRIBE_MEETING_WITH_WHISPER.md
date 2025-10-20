## How to Transcribe a Meeting Recording (MP4) with Whisper on Windows

This guide explains how to transcribe a meeting recording (e.g., MP4 file) using OpenAI Whisper on Windows, using the "small" model. It covers installation, usage, and troubleshooting.

### 1. Prerequisites

- **Python** (3.8 or newer). Download from https://www.python.org/downloads/
- **ffmpeg** (for audio/video processing)
    - Download from https://ffmpeg.org/download.html
    - Extract the zip, and add the `bin` folder (e.g., `C:\Apps\ffmpeg\ffmpeg-xxxx\bin`) to your Windows PATH.
    - Test in a new terminal: `ffmpeg -version`

### 2. Install Whisper

Open a terminal (PowerShell or Command Prompt) and run:

```powershell
pip install openai-whisper
```

### 3. Prepare the Whisper "small" Model Files

- If you already have the "small" model files (e.g., from Talon Voice), copy them to:
  - `%USERPROFILE%\.cache\whisper\small`
  - Or, expanded: `C:\Users\YourUsername\.cache\whisper\small`
- Required files in that folder:
    - `config.json`
    - `pytorch_model.bin` (or `model.bin`)
    - `tokenizer.json`
    - `vocab.json`
    - `merges.txt`
    - `preprocessor_config.json`

### 4. Transcribe Your MP4 File

Navigate to the folder with your MP4 file. Then run:

```powershell
python -m whisper yourfile.mp4 --model small
```

Replace `yourfile.mp4` with your actual file name.

### 5. Output

- Whisper will create a transcript text file (e.g., `yourfile.txt`) in the same folder.

### 6. Troubleshooting

- **Command not found:**
    - Use `python -m whisper ...` instead of just `whisper ...`.
- **Model download fails:**
    - Make sure the model files are in `%USERPROFILE%\.cache\whisper\small`.
- **ffmpeg not found:**
    - Make sure the `bin` folder containing `ffmpeg.exe` is in your PATH.
- **Permission errors:**
    - Run your terminal as Administrator if you have file access issues.

---
**Tip:** Once set up, you only need to repeat step 4 for future meetings!