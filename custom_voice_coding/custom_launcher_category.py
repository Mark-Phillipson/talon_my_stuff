from talon import Module, Context

mod = Module()
mod.list("launcher_category", desc="Custom Launcher Categories")

ctx_default = Context()
ctx_default.lists["user.launcher_category"] = {
"Access Projects": "Access Projects",
"Azure Links": "Azure Links",
"Accessibility": "Accessibility",
"BBC": "BBC",
"Boston Academic": "Boston Academic",
"Cheat Sheets": "Cheatsheets",
"Folders": "Folders",
"General Applications": "General Applications",
"Google": "Google",
"Learning": "Learning",
"Programming": "Programming",
"Personal Webapps": "Personal Webapps",
"Social Links": "Social Links",
"Specific Apps": "Specific Apps",
"Speech Recognition Utilities": "Speech Recognition Utilities",
"Items for Talon": "Talon",
"Code Projects": "Code Projects",
"Web Links": "Web Links",
"Work Links": "Work Links",
"AI Chat": "AIChat",
"Talon Search": "Talon Search",
"Search": "Talon Search",
"Visual Studio Code Extensions":"Visual Studio Code Extension",
}

