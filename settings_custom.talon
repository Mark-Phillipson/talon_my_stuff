settings():
    #user.model_temperature = 0.6

    # Works with any API with the same schema as OpenAI's (i.e. Azure, llamafiles, etc.)
    #user.model_endpoint = "https://api.openai.com/v1/chat/completions"

    #user.model_system_prompt = "You are a helpful assistant helping an office worker to be more productive."

    # Change to 'gpt-4' for GPT-4
    # NOTE, you may not have access to GPT-4 yet: https://help.openai.com/en/articles/7102672-how-can-i-access-gpt-4
    user.openai_model = 'gpt-4o-mini'
    #user.openai_model = 'gpt-3.5-turbo'

    # Only uncomment the line below if you want experimental behavior to parse Talon files
    # tag(): user.gpt_beta

    user.model_shell_default = "cmd"

    # Zoom Mouse Settings     
    tracking.zoom_live = true
    tracking.zoom_height = 200
    tracking.zoom_width = 500
    tracking.zoom_scale = 3

    user.ocr_behavior_when_no_eye_tracker = "ACTIVE_WINDOW"