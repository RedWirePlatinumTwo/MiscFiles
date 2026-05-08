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
