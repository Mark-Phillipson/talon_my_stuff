from talon import actions, Module, Context

steps_screen_one = {
    "zero": 5,
    "act": 50,
    "alpha": 50,
    "bat": 100,
    "bravo": 100,
    "cat": 150,
    "charlie": 150,
    "drum": 200,
    "delta" : 200,
    "echo": 250,
    "fox": 300,
    "foxtrot": 300,
    "golf": 350,
    "hot": 400,
    "hotel": 400,
    "sit": 450,
    "india": 450,
    "jury": 500,
    "juliet": 500,
    "crunch": 550,
    "kilo": 550,
    "look": 600,
    "lima": 600,
    "mike": 650,
    "near": 700,
    "November": 700,
    "odd": 750,
    "oscar": 750,
    "pit": 800,
    "papa": 800,
    "quench": 850,
    "quebec": 850,
    "red": 900,
    "romeo": 900,
    "sun": 950,
    "sierra": 950,
    "trap": 1000,
    "tango": 1000,
    "urge": 1050,
    "uniform": 1050,
    "vest": 1100,
    "victor": 1100,
    "whale": 1150,
    "whiskey": 1150,
    "plex": 1200,
    "xray": 1200,
    "yank": 1250,
    "yankee": 1250,
    "zip": 1300,
    "zulu": 1300,
    "one":1350,
    "two":1400,
    "three":1450,
    "four":1500,
    "five":1550,
    "six":1600,
    "seven":1650,
}
#screen_step_screen_one_vertical
steps_screen_one_vertical = {
    "zero": 5,
    "act": 50,
    'alpha': 50,
    "bat": 100,
    "bravo": 100,
    "cat": 150,
    "charlie": 150,
    "drum": 200,
    "delta" : 200,
    "echo": 250,
    "fox": 300,
    "foxtrot": 300,
    "golf": 350,
    "hot": 400,
    "hotel": 400,
    "sit": 450,
    "india": 450,
    "jury": 500,
    "juliet": 500,
    "crunch": 550,
    "kilo": 550,
    "look": 600,
    "lima": 600,
    "mike": 650,
    "near": 700,
    "November": 700,
    "odd": 750,
    "oscar": 750,
    "pit": 800,
    "papa": 800,
    "quench": 850,
    "quebec": 850,
    "red": 900,
    "romeo": 900,
    "sun": 950,
    "sierra": 950,
    "trap": 1000,
    "tango": 1000,
}

mod = Module()
mod.list("screen_step_screen_one", desc="location on screen 1 edge")
mod.list("screen_step_screen_one_vertical", desc="location on screen Vertical edge")

ctx = Context()
ctx.lists["user.screen_step_screen_one"] = list(steps_screen_one.keys())
ctx.lists["user.screen_step_screen_one_vertical"] = list(steps_screen_one_vertical.keys())

@mod.capture(rule="{user.screen_step_screen_one}")
def screen_step_screen_one(m) -> int:
    return steps_screen_one[m.screen_step_screen_one]
                        #screen_step_screen_one_vertical
@mod.capture(rule="{user.screen_step_screen_one_vertical}")
def screen_step_screen_one_vertical(m) -> int:
    return steps_screen_one_vertical[m.screen_step_screen_one_vertical]