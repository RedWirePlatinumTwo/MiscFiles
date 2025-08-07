To jump to info for Mutable Components, [click this](PluginProcedureInfo.md#Mutable-Components)
# RedWires Plugin

## Actions
### Copy properties of [block] onto [block]
- Copies all enum properties of the first blockstate onto the second blockstate
### Deal [number] custom damage to [entity] localized as [text] (.player/.item) with custom source [damagesource]
- NOTE: Although the fully-customized death message (should) work, the damage source input does nothing on 1.19.2
- The old "deal custom damage" procedure block, except with a completely customizable death message and editable procedure. I am aware this is not very useful with the creation of damage sources, however... I still have some uses for this so.. yeah. Also, since the official block has been deleted as of 2024.1, I unofficially declare this its successor.
### Execute command / [cmd] in the name of [entity] with permission level [number]
- Same thing as the regular "execute command" procedure block, except you can control how high the permissions can go. For example: If you have a command that executes a sub-command as a string, you can prevent players using /ban if they do not have OP privileges
### Execute command / [cmd] at [x] [y] [z] with permission level [number]
- same as above, but from a position instead of from a player
### FORCE-add potion [potioneffect] with level [level] for [duration] ticks ambient [isambient] particles [showparticles] to [entity]
- Allows you to give potion effects to entities that are normally immune to certain/all effects. In the instance of vanilla minecraft, you can apply whatever you want to the Wither and Ender dragon
### Get object from registry [builtinregistry] class type: [class] registry id: [stringid] (Var name: "_regobject")
- This is something more catered to my mod specifically. With this, you can get a specific object that matches the given stringid. This does not have to include the namespace (ex: "minecraft:sharpness" OR "sharpness"), however, you should beware if there are conflicting mods that share the same id of the same object
### Repeat [number] times as timedloopiterator with tick wait time [tick]
- Allows you to do something in a loop but have every action be delayed
### (Break out/Continue with next iteration) of timed loop
- The normal break out/continue with next iteration block won't work with the timed loop block because the procedure uses a recursive call instead of being an actual loop
### Set invulnerable time of [entity] to [number] ticks
- Sets the invincibility-frames (AKA I-Frames) to the given number
### For each text in [textToSplit] split as [Splitter] ([literalcheck] literal) as stringiterator do [foreach] ([checkbox] use whole text if array is empty)
- The String.split method. The literal check will toggle if the [Splitter] string should be taken as a literal string or regex. If you're not too savvy with coding, just keep the checkbox on. The checkbox for using the whole text simply does as it says, iterating only once but using the whole string if empty
### For each entity in the current world as entityiterator do [foreach]
- Didn't like the range limit with the given entity iterator for MCreator, so I made my own version
### Set ticks in timed loop to [number]
- Changes the tick wait time in the timed loop while the iteration is occurring
### Directly set itemstack [variable] to [itemstack]
- The 2024.4 update made it so that setting itemstack variables will always return a copy of said variable instead of the direct itemstack. This procedure not only allows you to set itemstack variables to the direct item, but also removes ".copy()" from the inserted itemstack code, allowing you to always get the direct itemstack (exception being itemstack iterator). NOTE: There is a reason why Klemen changed this, only use this if you are sure this won't cause issues
### Set custom item name of [item] to [txt] (NF Only)
- Unlike a display name, the txt won't be in italics. However, it can easily be replaced by setting a display name for it
### Send command result message [msg] inform admins [boolean]
- Unlike sending a regular message to the player, this procedure: Respects the SendCommandFeedback gamerule, won't show the message when executing this from a procedure, AND works for getting the command result as a string
### Send command failure message [msg]
- Same thing as above, but the text is in all red
### Do [statement] for each world in server-side
- Iterates each dimension and does the given statement. This does count as a loop, so you can use the "(break out/continue with next iteration) of loop" procedure with it
### Set tick rate of provided world to [amount] (NF Only)
- Works for both client and server; using a client-side check is recommended
### Set default component [datacomponent] of [item] to [value] (NF Only)
- Note: The value input accepts anything and has checks but only for *some* datacomponents. Those datacomponents, and the value types you can use are:
- DAMAGE / MAX_DAMAGE / MAX_STACK_SIZE / REPAIR_COST / USE_COOLDOWN: number
- ITEM_NAME / CUSTOM_NAME: text
- NOTE_BLOCK_SOUND / TOOLTIP_STYLE: text (though it should be formatted as a resourcelocation, ex: `minecraft:diamond`)
- ITEM_MODEL: itemstack
### Attempt to do [statement1] if failure, do [statement2] [printerrorcheck] print error to console
- Attempts to run the contents of [statement1]. If something is encountered in the code that would result in a crash, it starts running [statement2].

## Data
### Get permission level of [entity]
- Always is 0 for non-player entities
### Get distance between [entity] and [sourceentity]
- If sourceentity is null, returns -1
### Get display name of mod from id [modid]
- This applies *only* to currently active mods in your mod folder
### Get version string of mod from id [modid]
- Same as above
### Is [entity] moving
- Requested by someone in the NeoToolKit discord
### Can [entity] find [sourceentity]
- Checks if sourceentity isn't obscured from entity behind blocks. Always returns false if the distance is greater than 128 (this is not my doing, just something that is part of the method I used)
### Get X/Y/Z position of block inbetween [entity] and [sourceentity]
- Returns 0 if there is no block in the way
### Are Overlays hidden
- Overlays are hidden when you press F1, with this procedure check you can make your custom overlays also hide when F1 is pressed
### Is keybind [key] being pressed
- not actual key names (ex: A,B, C, etc) but the keybinds listed in the control settings. Includes custom keybinds. For example: If the selected keybind is "Attack" and "Attack/Destroy" in the games Key Bind settings is set to Left Button, then the procedure will return true if Left Button is currently being pressed
### Is provided world singleplayer
- Server sided check; will never return true in client
### Is default game mode of provided world [gamemode]
- Same as above
### Get tick rate of the provided world (NF Only)
- Includes both server and client, so checking for client-side is recommended

## Global Trigger Procedures
### Set break speed to [breakspeed] (Player block speed tick)
- Changes your break speed of the block to the given number, not the break speed of the block itself
### Set canHarvest of block to [boolean] (Player harvest block tick)
- Whether or not the block being mined should drop its loot (does not act as the "silk touch" enchantment, so breaking a glass block with an item without the enchantment will still drop nothing)
### Set level cost to [amount] (On anvil updated)
- The level XP needed to upgrade an anvil item. The minimum amount needed is 1. Setting it to 0 will make it impossible to take the anvil output.
### Set material cost to [amount] (On anvil updated)
- The stack of items needed in item slot 2 to upgrade the item in slot 1

## Utils
### Is UUID [string] valid
- returns true if the given string can be used as a UUID

## Global Triggers
### Entity teleports
### On anvil updated
- Fires when either the left or right item slot of an anvil is changed
### Item output taken from anvil
- Fires when the output slot of an anvil is taken
### Player harvest block tick
- does not fire for unbreakable blocks, such as bedrock
### Player block speed tick
- does not fire for unbreakable blocks, such as bedrock. The breakspeed number variable represents your break speed, not the blocks hardness
### Sound played at position
- - (Some sounds - from both sound events - cannot be changed unfortunately. Some of these i've noticed are block breaking sounds and the glass shattering sound when throwing a potion)
### Sound played from entity
- Same as above
### Entity being converted
- NOTE: the "entityOutcome" for this event isn't the *actual* entity it transforms to considering event.getOutcome() only returns an EntityType for LivingConversionEvent.Pre. Basically, this just means its a reference to the entity it transforms to, not the actual transformed entity
### Entity finished converting
- The entity for this trigger *is* the outcome of the entity (and not just a reference to it)
### Modify default components of item (NF Only)
- As the name states, allows you to set the default components of an item or remove it. For example, you could set the max stack size of Snowballs to 64, or remove Max Damage of a sword to make it have unlimited uses

# Mutable Components

## Actions
### Append [comp1] to [comp2]
- Adds comp1 to comp2 as a sibling
### For each sibling appending to [component] as [componentiterator] do [statement]
- Iterates through each sibling component in [component]
### Send command result component [component] inform admins [true]
- See [here for explanation](PluginProcedureInfo.md#send-command-result-message-msg-inform-admins-boolean)
### Send command failure component [component]
- Sends an error message (note: This is always colored red due to the way it's coded)
### Set custom item name of [item] to [component] (NF Only)
- See [here for explanation](PluginProcedureInfo.md#set-custom-item-name-of-item-to-txt-nf-only). Unlike setting a display name, the (custom) item name won't be italicized by default
### Set text of sign block at [x] [y] [z] at line [number] to [component] front side [boolean]
- NOTE: For versions 1.19.4 and under, the "front side [boolean]" has no effect as you cannot edit the back side of signs on versions below 1.20.x
- The boolean determines what side of the sign should be changed. If it's true, the front will be edited, otherwise the back will be edited

## Data
### [component] with click event of type [clickeventtype] with value [string]
- Do note that not every click type works in all contexts. For example, (I believe) signs can only use RUN_COMMAND, and display names for entities/items don't use any. CHANGE_PAGE is currently useless as it only applies to books, but that will very likely be added in a future update
### [component] with hover event with [component]
- The type of this hover event is SHOW_TEXT, the result is component2
### Get component from hover event of [component]
- Gets the message of the hoverevent if its set to SHOW_TEXT
### Component with text [string]
- The basic component that MCreator uses by default
### Does [component] have [component2]
- Checks if component2 is a sibling of component
### Get text from sign at [x] [y] [z] from line [int] get front [boolean]
- The boolean thing is already explained in the actions tab
###  [component] with hover event with entity [entity]
- Not entirely sure where this is used in 1.21.1, but in 1.21.4 you can see the info of the given entity for command messages
