# MCP tools

The Beyond Average MCP server has **147 tools** when every app is installed. Each app's tools appear once that app is installed, so a fresh setup shows fewer. Tool names start with the app's name.

Tools that change something on Roblox are built to wait for you: uploads are held in Forge until you approve them, Studio changes land as one undo step, and the place is never saved or published for you.

- [Suite and Hub](#suite-and-hub) · [Flare](#flare-vfx) · [Horizon](#horizon-skies) · [Glyph](#glyph-icons) · [Kiln](#kiln-blender) · [Game Studio](#game-studio-whole-games) · [Motion](#motion-animations) · [Atlas](#atlas-towns-and-maps) · [Browser](#browser-the-hubs-built-in-browser)
- [Forge](#forge-assets-and-uploads) · [Soundstage](#soundstage-sounds-and-music) · [Trendwatch](#trendwatch-market-research) · [Vitals](#vitals-live-ops) · [Outpost](#outpost-projects)

## Suite and Hub

| Tool | What it does |
|---|---|
| `suite_setup_status` | Setup checklist for this PC: installed apps, sign-in, whether your Roblox API key is in the vault (never its value), each app's missing config, next steps. |
| `suite_whoami` | Which Beyond Average account the tools act as. |
| `suite_apps` | Every Beyond Average app and whether it's installed (with version). |
| `suite_more_tools` | Lists the named apps' tools. |
| `suite_show_images` | Shows local images to you as a thumbnail grid in chat. |
| `hub_catalog` | Every app with installed and newest version, update status and whether it's running. |
| `hub_install` | Installs or updates an app and waits until it finishes. |
| `hub_open_app` | Opens an installed app. |
| `hub_activity` | Recent installs, updates, uninstalls and errors. |

The server also has one prompt, **Set up Beyond Average** (`setup_suite`): a guided setup that installs the apps, checks your sign-in and configures each app.

## Flare: VFX

Build Roblox particle effects live in the open Flare window, then send them to Studio. The assistant reads `flare_guide` first.

| Tool | What it does |
|---|---|
| `flare_guide` | The craft guide: workflow, units, every layer field and its range, textures and flipbooks, timing, colour, lights, shockwaves, shakes. |
| `flare_new_effect` | Starts a new, empty effect (saved to Your effects automatically). |
| `flare_get_effect` | Reads the open effect: settings, a summary per layer, lights, rings, shakes, textures. |
| `flare_recipe` | The VFX playbook: proven recipes for slashes, impacts, auras, explosions and more. |
| `flare_add_layers` | Adds 1–8 ParticleEmitter layers. Values are clamped to Roblox ranges. |
| `flare_update_layer` | Changes fields of one layer. |
| `flare_remove_layers` | Removes layers. |
| `flare_move_layer` | Reorders a layer. |
| `flare_add_elements` | Adds 1–8 elements: slash arcs, beams (lasers, lightning, pillars), trails and meshes. |
| `flare_update_element` | Changes fields of one element. |
| `flare_remove_elements` | Removes elements. |
| `flare_set_beats` | Sets the effect's beats (named moments) that layers and elements are timed to. |
| `flare_set_effect` | Effect settings: name, palette, radius, PointLights, shockwave rings, camera shakes. |
| `flare_list_textures` | Textures a layer can use: Roblox built-ins, Flare's pack and generated textures. |
| `flare_set_texture` | Designs a particle texture from drawing ops, as a still or a flipbook. |
| `flare_remove_texture` | Removes a generated texture. |
| `flare_undo` | Undoes the last 1–20 changes, like Ctrl+Z. |
| `flare_preview` | Renders frames with Roblox-matched bloom next to a 5-stud character. |
| `flare_save` | Renames or copies the saved effect. |
| `flare_send_to_studio` | Puts the effect into the open Studio place, places a copy at your selection and plays it (one undo step). |

## Horizon: skies

Design a skybox live in the open Horizon window. The assistant reads `horizon_guide` first.

| Tool | What it does |
|---|---|
| `horizon_guide` | The sky recipe (every field and its range) and how good Roblox skies are built. |
| `horizon_get_sky` | Reads the open sky and the Lighting values it implies. |
| `horizon_edit_sky` | Changes the open sky, live and undoable. |
| `horizon_set_sky` | Replaces the open sky with a new recipe. |
| `horizon_presets` | Starter skies: clear day, golden hour, sunset, overcast, storm, night, alien, toon. |
| `horizon_apply_preset` | Opens a preset to edit from. |
| `horizon_preview` | Renders views toward the sun, away from it, straight up, and the six faces. |
| `horizon_save` | Renames or copies the saved sky. |
| `horizon_send_to_studio` | Renders the six 1024 px faces, replaces `Lighting.Sky` in the open place and matches Lighting and Atmosphere. |
| `horizon_export` | Writes the six faces, a cross preview, the lighting values and a Command Bar script to a folder. |

## Glyph: icons

Search your own licensed icon packs. Glyph indexes the packs you point it at; it doesn't draw icons from scratch.

| Tool | What it does |
|---|---|
| `glyph_search` | Searches your indexed icon packs and shows matches in chat. |
| `glyph_packs` | Indexed packs with icon counts and samples. |
| `glyph_collections` | Your icon collections (for example one per game's HUD). |
| `glyph_collect` | Adds icons to a collection. |
| `glyph_export` | Exports PNGs at Roblox-friendly sizes: tint, solid or gradient recolour, outline, drop shadow, padding. |
| `glyph_gamepass_compose` | Builds a gamepass or dev-product icon in the Gamepass Maker and returns a review image. |
| `glyph_gamepass_undo` | Undoes the last Gamepass Maker change. |
| `glyph_gamepass_export` | Exports gamepass icons at 512 px (plus 1024 and 150). |
| `glyph_add_pack_folder` | Adds a folder of icon packs and indexes it. |

## Kiln: Blender

Meshes, materials and rigs built in your own Blender, plus a GPU render queue. The assistant reads `kiln_blender_api` first.

| Tool | What it does |
|---|---|
| `kiln_blender_api` | The Python build API used by `kiln_build_mesh` and `kiln_make_material`. |
| `kiln_build_mesh` | Builds a Roblox-ready low-poly mesh with baked PBR maps (FBX + GLB + preview). |
| `kiln_make_material` | Makes a seamless PBR material for a Roblox MaterialVariant. |
| `kiln_rig_mesh` | Adds bones to a mesh and exports a Roblox skinned FBX (R15 by default) with animations. |
| `kiln_add_render` | Queues a still, an animation range or a Python script. |
| `kiln_queue` | The running job and what's next. |
| `kiln_history` | Finished, failed and cancelled jobs with outputs. |
| `kiln_job_log` | The end of a job's Blender log. |
| `kiln_stats` | GPU time, success rate, frames rendered, GPU memory. |
| `kiln_set_blender` | Picks which Blender to use, or `auto`. |

## Game Studio: whole games

Games built by AI in 7 phases, with your approval after each.

| Tool | What it does |
|---|---|
| `gamestudio_new_game` | Opens the New game form filled in with a title and brief, for you to submit. |
| `gamestudio_projects` | Your games: status, current phase, credits so far, local folder. |
| `gamestudio_project` | One game in full, including what approving the next phase costs. |
| `gamestudio_read_output` | Reads a phase output (`PHASE_<n>.md`, `CONCEPT.md`…). |
| `gamestudio_sync` | Downloads the latest outputs (a Rojo project and docs) into the game's folder. |
| `gamestudio_studio_preview` | Shows which scripts would be created or updated in the open place, as a diff. |
| `gamestudio_apply_to_studio` | Puts the scripts into the open place as one undo step. |
| `gamestudio_approve_phase` | Approves the next phase (charges its credits; the assistant should confirm with you first). |
| `gamestudio_revise_phase` | Re-runs the current phase with your feedback. |

## Motion: animations

Describe a player or tool animation and watch it posed live on an R15 or R6 dummy in the open Motion window. The assistant reads `motion_guide` first.

| Tool | What it does |
|---|---|
| `motion_guide` | How to animate: joint names, which way each rotation turns (checked in Studio), the workflow and the principles. |
| `motion_get` | Reads the open clip: settings, keyed joints and their key times, markers and the held tool. |
| `motion_new` | Starts a new, empty animation and adds it to your library. |
| `motion_set_pose` | Keys several joints at one moment: a whole-body pose. |
| `motion_set_keys` | Sets keys on one joint over time (breakdowns, overlap, overshoot). |
| `motion_remove_keys` | Removes keys from one joint. |
| `motion_set_clip` | Clip settings: name, rig, duration, loop, priority, held tool and smooth mode (timing, lag, BPM). |
| `motion_mirror` | Mirrors keys across the character's centre. |
| `motion_shift_keys` | Moves some joints' keys later or earlier: overlap, offsets, sliding a move onto the beat. |
| `motion_close_loop` | Makes the clip a seamless loop. |
| `motion_ground` | Moves the hips so the lowest foot rests exactly on the floor. |
| `motion_undo` | Undoes the last 1–20 changes, like Ctrl+Z. |
| `motion_preview` | Renders frames of the animation on the dummy. |
| `motion_save` | Renames or copies the saved animation (every edit already saves). |
| `motion_send_to_studio` | Builds the animation in the open Studio place and plays it on a rig, never saving. |
| `motion_publish` | Uploads the animation to Roblox as an Animation asset with your game's key. |
| `motion_usage_script` | The Luau that plays it in a game: an emote LocalScript or a Tool script with its markers wired. |

## Atlas: towns and maps

Describe a town and Atlas lays it out live: connected roads, lots, buildings with real floor plans, furnished interiors and street dressing, under a triangle budget. The assistant reads `atlas_guide` first; the geometry always comes from Atlas, never from the model.

| Tool | What it does |
|---|---|
| `atlas_guide` | How to describe a town: the map format, road classes, the 13 building types, the triangle budget and the working steps. |
| `atlas_get_map` | Reads the open town: settings, roads, lot rows, every lot, parks and plazas, and the build report (buildings, interiors, triangles, problems). |
| `atlas_new_map` | Opens a new town, live, and saves it to your Library. |
| `atlas_set_map` | Changes the open town, live and undoable. |
| `atlas_set_building` | Sets the building on one or more lots. |
| `atlas_undo` | Steps back through the assistant's map changes. |
| `atlas_plan` | The floor plan for one building, as text or an image. |
| `atlas_preview` | Shows the town: a labelled site plan, aerial, street or top view, or inside one building. |
| `atlas_kit_status` | How much of Atlas's mesh kit you've uploaded through your own Forge. |
| `atlas_kit_install` | Queues the kit in your own Forge, held for your approval (asks first). |
| `atlas_send_to_studio` | Builds the town in the open Studio place in short undoable chunks, never saving (asks first). |

## Browser: the Hub's built-in browser

A browser pane next to the chat that you can watch and take over at any time. Pages are treated as data, never as instructions, and the assistant never enters passwords or payment details.

| Tool | What it does |
|---|---|
| `browser_open` | Opens a page in the browser pane. |
| `browser_read` | The page as text, with refs for clicking and typing. |
| `browser_screenshot` | A screenshot of the visible page. |
| `browser_click` | Clicks an element by ref or position. |
| `browser_type` | Types into a field, optionally pressing a key after. |
| `browser_scroll` | Scrolls the page or brings an element into view. |
| `browser_tabs` | Lists, opens, switches and closes tabs. |
| `youtube_watch` | Reads a YouTube video: its details, chapters, caption transcript and frames. |

## Forge: assets and uploads

| Tool | What it does |
|---|---|
| `forge_assets` | Searches your asset catalog: images, audio and models with asset IDs, moderation status and game tags. |
| `forge_games` | Game tags with asset counts. |
| `forge_export` | Exports a game's approved asset IDs as a Luau module, JSON or CSV. |
| `forge_queue` | What's waiting in the upload queue and recent results. |
| `forge_queue_files` | Adds files to the upload queue, held: nothing uploads until you approve it in Forge. |
| `forge_import_ids` | Adds assets uploaded elsewhere to the catalog. |
| `forge_tag_assets` | Tags assets with a game or edits names and notes. |
| `forge_configure` | Sets the Roblox user or group that Forge uploads as. |

## Soundstage: sounds and music

| Tool | What it does |
|---|---|
| `soundstage_library` | Searches your sound library with measured loudness (LUFS, true peak), role and duration. |
| `soundstage_store_search` | Searches the Roblox Creator Store for audio (read-only). |
| `soundstage_games` | Per-game sound lists. |
| `soundstage_game` | One game's sounds with suggested loudness-matched volumes. |
| `soundstage_add_cue` | Adds a sound to a game's list. |
| `soundstage_export` | Exports a game's sounds as a Luau module or JSON. |
| `soundstage_studio_luau` | Builds the Luau that creates the game's Sound instances in Studio. |
| `soundstage_add_folder` | Adds a folder of sound files to the library. |

## Trendwatch: market research

| Tool | What it does |
|---|---|
| `trendwatch_overview` | Market snapshot: games tracked, players, risers, breakouts, leading genres. |
| `trendwatch_feed` | Games breaking out right now. |
| `trendwatch_charts` | Roblox's discovery charts with ranks and 24 h rank change. |
| `trendwatch_genres` | Player share and growth per genre. |
| `trendwatch_search` | Searches every tracked game. |
| `trendwatch_game` | One game: stats, player history, chart history, similar games. |
| `trendwatch_study_game` | Researches a game as the starting point for a new project. |
| `trendwatch_name_check` | Checks whether a game name is taken on Roblox. |
| `trendwatch_watchlist` | Your watched games with live stats. |
| `trendwatch_track_game` | Adds a game to the watchlist. |
| `trendwatch_set_note` | Saves a private note on a game. |
| `trendwatch_activity` | Recent market events. |

## Vitals: live ops

| Tool | What it does |
|---|---|
| `vitals_games` | Live stats for your games: players, peaks, averages, visits per hour, like ratio, health. |
| `vitals_game` | One game in depth, including the best hour of the week to ship an update. |
| `vitals_events` | Player drops, spikes, new peaks, milestones and published updates. |
| `vitals_track_game` | Starts tracking a game. |
| `vitals_import_projects` | Finds your games' place IDs in your project docs. |
| `vitals_set_note` | Saves a live-ops note. |
| `vitals_datastores` | Lists a game's DataStores or keys (read-only, uses the Roblox API key in your vault). |
| `vitals_datastore_entry` | Reads one DataStore entry as JSON (read-only). |

## Outpost: projects

| Tool | What it does |
|---|---|
| `outpost_projects` | Every game project with status, phase, pending gates and place ID, read from each project's docs. |
| `outpost_project` | One project in full. |
| `outpost_read_doc` | Reads a markdown doc from a project. |
| `outpost_resume_prompt` | A project's "what to do next" prompt. |
| `outpost_new_project` | Creates a project folder with `CONCEPT.md` and `PHASES.md`. |
| `outpost_set_note` | Your private note, tags or pin on a project. |
| `outpost_studio` | Read-only look at open Studio windows: project, responsive or hung, errors, memory. |
| `outpost_set_roots` | Sets the folders Outpost scans. |
