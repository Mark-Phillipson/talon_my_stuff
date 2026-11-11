# Company of Heroes 3 map configurations

Each map has its own JSON file in this folder. The Python helper
`games/coh3_map_tracking.py` creates and loads these files.

## Voice setup

1. Open the COH3 tactical map.
2. Create the map with one of these voice commands, followed by the map name:
   - **create victory point map** Crossroads
   - **create annihilation map** Example Annihilation
3. Put the mouse at the top-left inside edge of the tactical map and say
   **map corner top left**.
4. Put the mouse at the bottom-right inside edge and say
   **map corner bottom right**.
5. Move the mouse to each resource point and say **record map point** followed
   by the category and a preferred spoken phrase, for example:
   - **record map point munitions spoken as mike one**
   - **record map point fuel spoken as fox one**
   - **record map point manpower spoken as papa one**
   - **record map point victory spoken as victory one**
6. To use an existing profile, say **load COH3 map** followed by its map name.

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
