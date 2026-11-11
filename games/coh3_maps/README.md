# Company of Heroes 3 map configurations

Each map has its own JSON file in this folder. The Python helper
`games/coh3_map_tracking.py` creates and loads these files.

## Voice setup

1. Open the COH3 tactical map.
2. Say **create COH3 map** followed by a map name and game mode:
   - `coh3_create_map("Crossroads", "victoryPoint")`
   - `coh3_create_map("Example Annihilation", "annihilation")`
3. Put the mouse at the top-left inside edge of the tactical map and say
   **map corner top left**.
4. Put the mouse at the bottom-right inside edge and say
   **map corner bottom right**.
5. Move the mouse to a resource point and say **record map point** with its
   category and preferred spoken phrase, for example:
   - `coh3_capture_point("munitions", "mike one")`
   - `coh3_capture_point("fuel", "fox one")`
   - `coh3_capture_point("manpower", "papa one")`
   - `coh3_capture_point("victory", "victory one")`

The phrase in `spoken` is the phrase Talon should recognise for that point.
It is deliberately separate from the stable ID (`M1`, `F1`, `P1`, `V1`).
You can change the phrase in the JSON file if a different phrase works better
with your voice recognition setup. Spoken phrases must be unique within a map.

## Coordinate format

`tacticalMapBounds` stores the screen rectangle of the tactical map at
calibration time. Each point stores normalized `x` and `y` values from 0 to 1,
relative to that rectangle. This allows the same map points to be positioned
when the tactical map is shown at a different screen size or location.

The map mode is stored as `annihilation` or `victoryPoint`. Annihilation maps
reject victory-point captures. Each category is a list, so maps can have any
number of points, including none.

## Current implementation scope

This first part creates/loads map files, calibrates the tactical-map rectangle,
captures points using the current mouse position, exposes the configured point
phrases to Talon's dynamic list system, and displays point IDs as HUD labels.
The queued-order command that consumes one or more point phrases is a separate
next step; the existing COH3 commands are left unchanged.
