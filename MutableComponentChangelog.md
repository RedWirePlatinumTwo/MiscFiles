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
