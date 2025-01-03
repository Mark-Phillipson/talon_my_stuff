from talon import Module, Context

mod = Module()
mod.list("snippet_language", desc="Custom Snippet Languages")

ctx_default = Context()
ctx_default.lists["user.snippet_language"] = {
"Blazor": "Blazor",
"Bootstrap": "Bootstrap",
"C sharp": "C sharp",
"CSS": "CSS",
"Docker": "Docker",
"Entity": "Entity",
"Git": "git",
"HTML": "HTML",
"JavaScript": "JavaScript",
"jQuery": "jQuery",
"Markdown": "Markdown",
"Snip": "Not Applicable",
"Power Shell": "Power Shell",
"Razor": "Razor",
"Talon": "Talon",
"Transact SQL": "Transact SQL",
"Twitch": "Twitch",
"Visual Basic": "Visual Basic",
}

