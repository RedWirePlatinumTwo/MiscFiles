# 3.0.0
- Added support for MCreator 2026.2 + NeoForge 26.1.2 (I didn't need to make any changes LOL)
# 2.1.1
- Minor code generation improvements for the procedures "Is string UUID valid" and "UUID from string" for generator versions 1.21.1 or lower
# 2.1.0
- Added procedure "Get most bits of [uuid]"
- Added procedure "Get least bits of [uuid]"
- Slightly changed wording on UUID constructor procedure for clarification
# 2.0.6
- Added (unofficial) language support for simplified chinese
# 2.0.5
- Added head/tail compatibility support for all generators lower than 1.21.8
# 2.0.4
- Added missing text.properties line for the "Return UUID" procedure block
# 2.0.3
- Re-named BlocklyVariableType for variable from uuid to UUID. You will however have to re-do local uuid variables, sorry tee hee
# 2.0.2
- Slightly changed the forge-generator checker for UUID global player variables for accuracy
# 2.0.1
- UUID global player variables now *truly* work with MCreator versions 2023.4-2024.4 on Forge generators
# 2.0.0
- Added support for all global variable scopes (yippee)
# 1.0.6
- Removed support for 1.19.2 and changed minimum MCreator supported version to 2023.4 due to incompatibility
# 1.0.5
- NBT UUID tag get/has procedures for block entities will use an improved inline check instead of a helper/anonymous object method
# 1.0.4
- All generator versions will be able to use helper methods if you're using MCreator 2025.1 or higher
- Slightly improved tryOrDefault
# 1.0.3
- Added support for MCreator 2026.1
# 1.0.2
- Minor improvements on a few procedures to prevent any possible variable name collision errors
- Added a warning comment to the "Set UUID of entity" procedure
# 1.0.1
- Removed `tagHasUUID` util method, instead using a simple one-liner for checking UUID nbt tags of entities/items/blocks for 1.21.8+
- Slightly improved util `tagGetUUID`
- Changed `UUIDSafeParse` -> `tryOrDefault` and `isUUIDValid` -> `tryRun`, reason being so I could re-use those util methods in the future instead of being purely UUID-focused
# 1.0.0
- Initial release. The procedures added since moving from my main plugin include:
  - Parse [string] to UUID
  - Default UUID (UUID(0, 0))
  - Random UUID
  - Set UUID of [entity] to [uuid]
  - UUID from most [number1] least [number2]
- Additionally, you can now use UUID as a local + Global session variables. Others may be added... once I figure out how to manage that for 1.21.8
