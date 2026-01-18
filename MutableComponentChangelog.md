# 3.1.4
- Edited several procedures to add customBlockIndex, reducing the chances of a variable collision error
- "Get sent chat/Set sent chat" procedures both include a warning at the bottom of the procedure UI to mention that it only works for the "Player sent chat" trigger (as opposed to having the event name being part of the procedure text)
# 3.1.3
- I've decided that version constraint syntax is stupid, actually, so procedures with a version limit will now read (min x.xx.x)
# 3.1.2
- Shaved one(1) line of code from the "send successful command message" procedure for versions 1.20.1> by removing redundant final boolean line
- Revised some of the procedure texts to make the greater/lesser-than signs point *properly* in terms of versions it supports
# 3.1.1
- Slight changes to executing command from entity/world position for 1.21.4+ to prevent any unintentional _resultComp overwrites
# 3.1.0
- Added procedure "[component] with shadow color [number]"
- Added procedure "Does [component] have shadow color"
- Added procedure "Get shadow color of [component]" (returns black by default if nonexistent)
- Note: All 3 procedures listed above work in versions 1.21.4 and above
# 3.0.2
- Shifted the "Empty component" block in "Append [component1] to [ccomponent2]" over to component1
- Moved "Component with text [txt]", "Component from translatable key [txt]", and "Text from component [comp]" over to Utils
# 3.0.1
- Changed all procedures that used a variable getter as a mutablecomponent placeholder to instead use "Empty Component"
# 3.0.0
- Added support for 2025.3 / NeoForge 1.21.8
# 2.3.2
- Slightly changed data code for procedures on Minecraft versions 1.20.4 or lower to prevent variable-collision build errors
- Fixed "Get entity name from hover event of [component]" being broken for Minecraft versions 1.20.4 or lower post-v2.3.1
# 2.3.1
- Improved data code on certain procedures on Minecraft versions 1.20.4 or lower to avoid generated code clutter with ${input$component} being used twice
# 2.3.0
- Revised all procedure colors to allow visual changes if the Blockly editor saturation/brightness values are edited instead of a fixed RGB value
- Added procedure "Component from translatable key [text]"
# 2.2.2
- "Convert R:[a] G:[b] B:[c] to number" procedure will now provide a default Alpha value of 255
- Slightly changed text for 2 procedures
# 2.2.1
- Fixed "Color [x] to RGB (Built-in)" not working because I mis-named the java.ftl file
# 2.2.0
- Fixed getting R, G, and B values from an RGB color causing build errors if using a variable as the RGB value
- Improved the code look of converting RGB to number
- Added procedure "Convert R:[a] G:[b] B:[c] Alpha:[d] to number" to Utils
- Added procedure "Get Alpha from RGB [x]" to Utils
- Added procedure "Color [x] to RGB (Built-in)"
- Added procedure "Color [x] to RGB (2025.3+)" (Note: 2025.3 is currently not supported and I don't want to add support for unstable snapshot versions. For versions 2025.3 or lower, the option to pick a color will not appear as its something specifically added to 2025.3+)
# 2.1.0
- Added support for Forge 1.19.2
# 2.0.0
- Added support for NeoForge 1.20.6
- Added support for NeoForge 1.20.4
- Added support for Forge 1.19.4
- The "(NF Only)" text for the few procedures that have it will now show the minimum generator version that the procedure supports.
# 1.2.2
- Added proper labeling for mutablecomponent-related stuff
# 1.2.1
- Added 2025002 in the list of supported versions
# 1.2.0
- Added Forge 1.20.1 support (Setting custom item name isn't possible for Forge, but at least setting display name is)
# 1.1.3
- Un-did util stuff for NeoForge 1.21.1 procedures for the sake of 2024.4 support
# 1.1.2
- Fixed a few procedures with number inputs giving errors
# 1.1.1
- Replaced "Get (reference of) entity from hover event of [component]" with "Is entity from hover event of [component] type of [entitytype]" (Entity reference would return null if it was a player)
# 1.1.0
- Moved "Empty Component" to Utils
- Changed text slightly for a few procedures
- Added "SHOW_ENTITY" to the dropdown list of the component hover event type check procedure
- Added procedure "[component] with hover event with entity [entity]"
- Added procedure "Get (reference of) entity from hover event of [component]"
- Added procedure "Get UUID from entity from hover event of [component]"
- Added procedure "Get name of entity from hover event of [component] as component"
# 1.0.1
- Setting click and hover events to components will no longer error when using local variables
