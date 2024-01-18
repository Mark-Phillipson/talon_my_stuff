from talon import Module, Context

mod = Module()
mod.list("launcher_category", desc="Custom Launcher Categories")

ctx_default = Context()
ctx_default.lists["user.launcher_category"] = {
"Access Projects": "Access Projects",
"Azure Links": "Azure Links",
"Clear Visibility": "Clear Visibility",
"Folders": "Folders",
"General Applications": "General Applications",
"Google": "Google",
"Learning": "Learning",
"Miscellaneous": "Miscellaneous",
"Programming": "Programming",
"Seldom Used": "Seldom Used",
"Social Links": "Social Links",
"Specific Apps": "Specific Apps",
"Speech Recognition Utilities": "Speech Recognition Utilities",
"Talon": "Talon",
"VS Projects": "VS Projects",
"Web Links": "Web Links",
"Work Links": "Work Links"
}

