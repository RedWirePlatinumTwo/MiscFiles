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
