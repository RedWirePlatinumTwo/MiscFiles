# Changelog
# 3.3.1
- The x y z values for "Entity teleports" no longer uses the target x y z values and instead uses the position before teleportation. additionally, prevX prevY prevZ have been removed in exchange for targetX targetY targetZ
# 3.3.0
- Removed "Enderman teleports" in favor for "Entity teleports"
- Added procedure to check what caused the teleportation event (TP command, spreadplayers command, ender pearl, ender entity, or chorus fruit)
# 3.2.3
- Added support for Mcreator 2024.4 (Didn't need to make any code changes woohoo!!!!!!!!!)
# 3.2.2
- Revised the text in "Set damage to [amount]" procedure to specify what global triggers should be used in forge/neoforge for it to work
# 3.2.1
- "Set damage to [amount]" procedure will need to be used under "Entity is attacked" trigger for NeoForge, but will still remain as "Before entity is hurt" for Forge. The text has been changed in parentheses for this procedure.
# 3.2.0
- Removed "Get block inbetween [entity] and [sourceentity] (Will make procedures unusable if used)
- Added "Get X position of block inbetween [entity] and [sourceentity]"
- Added "Get Y position of block inbetween [entity] and [sourceentity]"
- Added "Get Z position of block inbetween [entity] and [sourceentity]"
# 3.1.0
- Changed variable names for "repeat [x] times with [y] tick wait" procedure block to more appropriately fit the procedure.
- Added Global trigger: Chunk loaded into world
- Added procedure block: Get block inbetween [entity] and [sourceentity] (If "can [entity] find [sourceentity]" returns false)
- Removed global trigger "Player starts using item" (Use "Player uses item" instead)
- The "Player harvest block tick" block pos variables now use the block pos arguments provided in NeoForge.
# 3.0.0
- Added support for NeoForge 1.21.1
- Removed support for NeoForge 1.20.6
- Fixed "Get (display) name of [blockstate]" procedure not working with NeoForge because I somehow managed to make it blank.
- Added "Set carried block of enderman [entity] to [blockstate]".
- Added "Get block that enderman [entity] is carrying".
- Added "Remove block enderman [entity] is carrying".
- The "Get object from registry" procedure block now requires the world dependency.
- "Timed loop iterator" no longer has a checkbox to start from 0 or not, making it so it always starts at 0.
- Revised the texts in 2 procedure blocks to make it look a little better.
# 2.1.0
- Fixed "Player block speed tick" event giving an error with NeoForge
- Added "Is [entity] spectating [sourceentity]"
- Added "Get entity [entity] is spectating"
# 2.0.0
- Removed support for NeoForge 1.20.4
- Added support for NeoForge 1.20.6
- Fixed "change sound event to [x]" giving an error for NeoForge
- Changed the category of "Is sound played same as [x]" to Event-specific Actions
# 1.3.1
- Fixed build error that sometimes appears when using "continue with next iteration of timed loop"
# 1.3.0
- Improved timed loop breaking
- Changed "break out of timed loop" procedure block to either break out or continue with the next iteration of the timed loop
- Changed the current and total variables in the timed loop procedure block from double to int
- Fixed minor bug when using the timed loop iterator block with the "create text with" block
# 1.2.7
- Added a check for the "Player block speed tick" event to prevent game crashing if the position values are null
- Added the null indicator image for the "Create a clone of entity" and "Get entity from UUID" procedures
- Added a checkbox to choose whether or not the whole string should be used if the string array is empty for the text split procedure block (true by default)
# 1.2.6
- Fixed "(break out/continue with next iteration) of loop" procedure block giving errors with the text split procedure block
# 1.2.5
- Changed x,y,z dependencies for anvil events to player position for 2 reasons: 
  1. that the block position may not always be anvil
  2. there is no real way I can actually get the anvil blockpos other than getting the block you're looking at
# 1.2.4
- Fixed x,y,z errors for both sound played events (copying straight from the "enderman teleported" code was a bad idea)
- Added x,y,z dependencies for both anvil events (Anvil block position)
# 1.2.3
- Fixed actions tab collapsing (FOR REAL THIS TIME I SWEAR)
# 1.2.2
- Fixed x,y,z values for "Player harvest check tick" giving errors when on NeoForge 1.20.4
# 1.2.1
- Slightly changed the "timed loop iterator" and "repeat wait with tick wait time" procedure blocks to (hopefully) further prevent actions tab collapsing
# 1.2.0
- Fixed Actions tab collapsing in 2023.4
- Fixed both sound played events not being usable in NeoForge 1.20.4
- Added "volume" and "pitch" dependencies for both sound played events
- Added a "Player starts using item" global trigger
- Re-added support for the older 2024.1 version if you don't want the bugfix version.. for some reason
# 1.1.2
- "(Break out/continue with next iteration) of loop" can now be used with the text split and get-all-entities procedure blocks
# 1.1.1
- Changed 2024.1 supported version to the latest version
# 1.1.0
- Added "string iterator" to the text split procedure block
- Added "timed loop iterator" for the timed loop procedure block
- Added "Create a clone of [entity]"
- Added "Set ticks in timed loop to [number]"
- Added "For each entity in the current world as entityiterator do [foreach]"
