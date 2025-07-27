# Changelog
# 5.0.0
I said I wouldn't be supporting lower versions... but I've decided that's a lie.
- (Re)Added support for NF 1.20.6
- Added support for NF 1.20.4
- Added support for Forge 1.19.4 (To the one who asked me to make a backport of either 1.19.2 or 1.19.4 a year ago, your wish finally came true)
- The "(NF Only)" text for the few procedures that have it will now show the minimum generator version that the procedure supports.
# 4.5.0
- Changed entity-from-UUID procedure text to "Get entity from UUID [string] from provided world" just to clarify that it only searches in that given world/dimension
- Added 2025002 to the list of supported versions in plugin.json so 2025002 will be supported whenever the full release comes out
- Added procedure "Get numerical ID of [entity]" (requested by mooth (bnuuy) from the NeoToolKit server)
- Added procedure "Get entity from numeric id [number] from provided world" (also requested by mooth (bnuuy) from the NeoToolKit server)
# 4.4.0
- Added procedure "For each enchantment applied to [item] as ID [string iterator] do [statement]"
- Added procedure "Enchantment level iterator" in Utils utils for the applied enchantment loop
- Added procedure "Attempt to do [statement1] if failure, do [statement2] [printerrorcheck] print error to console" in Utils
- The procedure for getting an object from its (neo)forge registry is now 2 lines shorter in code
# 4.3.2
- DataComponent ITEM_MODEL takes an item as a value instead of a string for setting default components
# 4.3.1
- Procedures "Remove default component [datacomp] of [item]" and "Set default component [datacomp] of [item] to [value]" no longer use the "provided itemstack" procedure output, instead using the item picker procedure.
- "Set default component [datacomp] of [item] to [value]" now allows the following to be edited more simply: DAMAGE, MAX_DAMAGE, MAX_STACK_SIZE, REPAIR_COST, ITEM_NAME, CUSTOM_NAME, USE_COOLDOWN, NOTE_BLOCK_SOUND, ITEM_MODEL, TOOLTIP_STYLE. (I currently do not have enough time to explain what value types these datacomponents allow specifically, but I will explain it later)
# 4.3.0
- "Break out of/Continue with next iteration of timed loop" procedure no longer accepts procedures under it
- Added procedure "Does [itemstack] have [datacomponent] (NF Only)"
- Added event "Modify default components of item (NF Only)"
- Added procedure "Set default component [datacomponent] of [item] to [value] (NF Only)"
- Added procedure "Remove default component [datacomponent] of [item] (NF Only)"
# 4.2.0
- Support for Forge 1.20.1 has been re-added (5 procedures, however, simply cannot work with Forge; those have been listed to have "(NF Only)")
# v4.1.1
- For anyone that uses the "string split foreach" procedure pre-4.1.0, this change will prevent all procedures that use this from causing errors
# v4.1.0
- Added a "literal" checkbox for the "string split foreach" procedure that chooses whether the "tosplit" string should be taken literally or as regex
- Added procedure "Get default instance of [item]"
- Added procedure "Repeat [string] [amount] times"
# v4.0.3
- Un-did util stuff for 1.21.1 because addTemplate doesn't work for Mcreator 2024.4 :((((
# v4.0.2
- "Text split foreach" now takes the [tosplit] string as a literal instead of regex
- Slightly improved code for "Get object from registry [builtinregistry] class type: [class] registry id: [stringid]"
# 4.0.1
- "Is UUID [string] valid" procedure has been separated into a method (I forgot to do it before)
# 4.0.0
- Forge is kil
- Added support for NeoForge 1.21.4
- Combining certain procedures together should no longer give you "illegal attempt to redefine an existing match binding"
- Renamed category "Event-specific Actions" to "Global Trigger Procedures"
- Changed category file names so procedures from this plugin won't potentially merge with another plugin
- Added category "Utils"
- Added "Get default name of [entity]"
- Added "Is keybind [key] being pressed"
- Added "Is provided world singleplayer"
- Added "Is provided world hardcore"
- Added "Is default game mode of provided world [gamemode]"
- Added "Get tick rate of the provided world"
- Added "Send command failure message [msg]"
- Added "Send command result message [msg] inform admins [boolean]"
- Added "Do [statement] for each world in server-side"
- Added "Set default game mode of provided world to [gamemode]"
- Added "Set difficulty in provided world to [difficulty] ignore difficulty lock [boolean]"
- Added "Set tick rate of provided world to [amount]"
- The "Is entity teleport event caused by" check is now a field dropdown instead of a datalist
- Added event "Entity finished converting"
- Added procedure "Set repair cost of [item] to [amount]"
- Added procedure "Set custom item name of [item] to [txt]"
- Just like MCreator, (most) of the procedures now create methods for procedure code instead of creating Objects with anonymous methods
# 3.5.0
- Removed "Chunk loaded into world" event (see [Chunk Manager](https://mcreator.net/plugin/109717/chunk-manager-20) for that event + other useful chunk procedures)
- Added procedure "Set food properties onto [item] with nutrition: [n1] saturation: [n1] can always eat: [checkbox1] eat fast: [checkbox2]"
- Added procedure "Set max damage of [item] to [maxdmg]"
- Added procedure "Set max stack size of [item] to [stacksize]"
- Added procedure "Is UUID [string] valid"
# 3.4.0
- Added global trigger "Entity being converted"
- Added procedure "Is [entity] flying"
- Added procedure "Get the fall distance of [entity]"
- Added procedure "Are Overlays hidden"
- Added procedure "Directly set itemstack [variable] to [itemstack]"
# 3.3.1
- The x y z values for "Entity teleports" no longer uses the *target* x y z values and instead uses the position before teleportation. additionally, prevX prevY prevZ have been removed in exchange for targetX targetY targetZ
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
