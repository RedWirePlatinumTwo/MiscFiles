# Changelog
# 1.3.0
- Removed the _stoploop boolean variable from the timed loop procedure block
- Changed "break out of timed loop" procedure block to either break out or continue with the next iteration of the timed loop
- Changed the current and total variables in the timed loop procedure block from double to int
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
