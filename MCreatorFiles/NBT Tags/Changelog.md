# 2.1.0
- Added procedure "Convert int array tag [tag] to UUID" in Array Tag -- requires *Literal UUID Procedures* for usage
- Added procedure "Convert UUID [uuid] to int array tag" in Array Tag -- requires *Literal UUID Procedures* for usage
- Added procedure "Convert component [component] to tag" in Data -- requires *Mutable Components* for usage
- Added procedure "Convert tag [tag] to component" in Data  -- requires *Mutable Components* for usage
- Shortened procedure texts for "Get string/boolean/number tag or default"
# 2.0.2
**IF any procedures use the old "sync itemstack changes" procedure, replace it with the "Set custom data of itemstack" procedure instead before updating the plugin**
- Removed the "Sync NBT changes of [item] to clients" procedure
- Procedure "Get custom data of item" will now return a copy instead of a direct reference for 1.20.6 or higher. A warning line has been added for the procedure with this change.
- Removed redundant copy for the code of "Set custom data of [item] to [compoundtag]"
# 2.0.1
- Added chinese translations for recent procedure additions
# 2.0.0
- Added support for MCreator 2026.2 + NeoForge 26.1.2
- Added procedure "Set custom data of [item] to [compoundtag] (min 1.20.6)" - This procedure is ***required*** for 26.1.2 or higher, as the compound tag result for getting itemstack custom data is a copy
# 1.3.0
- Added procedure "Sync NBT changes of [itemstack] to clients (min 1.20.6)" in Utils.
- Fixed display text of "Attempt to spawn entity from data" not having all inputs for simplified chinese
# 1.2.2
- Slight improvement to storing all data of entity as compound tag for 1.21.8
# 1.2.1
- Fixed potential crashes with getting custom data of itemstack for generators 1.20.6 or higher
# 1.2.0
- Added simplified chinese translations for 1.1.0 additions
- Added procedure "Attempt to spawn entity from data [compound tag]" to the Compound Tag category
# 1.1.0
- Split "Tag Utils" and "Utils" blockly categories with "Utils" containing more "generic" procedures
- Added procedure "Sync updates of block at x y z to client/server" to Utils - Base MCreator automatically sends updates when you change block entity NBT values, but because of how this plugin is built, I can't automatically send updates. This only needs to be used once after all the updates are applied.
- Added procedure "Convert [any tag] to pretty component" to Utils - Requires the Mutable Components plugin
- Added procedure "Get snapshot of global [world/map] variables"
- Added procedure "Get snapshot of global player variables for [entity]"
# 1.0.6
- Re-worded the "Is tag empty" procedure for clarity
- Adding tags to List/Compound tags will now primarily create copies only of existing tags before insertion
# 1.0.5
- Slight re-wording for the "Get number from tag or default" procedure
- Slightly changed the default value for array tags
# 1.0.4
- Minor improvements on reading array tag global variables
- Generic tags can now be be used as a local or global session variable
# 1.0.3
- Added (unofficial) language support for simplified chinese
# 1.0.2
- Prevented a crash from occurring when modifying a list/compound tag whilst iterating through it
# 1.0.1
- Fixed build error for "For each tag in compound tag" procedure for 1.21.8
# 1.0.0
- Initial release
