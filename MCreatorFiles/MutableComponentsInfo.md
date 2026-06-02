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
