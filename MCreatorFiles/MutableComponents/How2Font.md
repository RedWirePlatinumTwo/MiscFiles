# Step 1
<img width="307" height="135" alt="image" src="https://github.com/user-attachments/assets/adb24523-e212-46b8-9c1d-973d8c00eee2" />

Locate the Resources folder of your mod. You can do this either by opening the "Resources" folder in the default program in MCreator's file browser, or manually locate it on your pc.
Example: `C:\Users\USER\MCreatorWorkspaces\WORKSPACE_NAME\src\main\resources`
# Step 2
<img width="561" height="282" alt="image" src="https://github.com/user-attachments/assets/df65fec6-1c7d-4007-a3fa-dfa86cfbbc86" />
<img width="730" height="159" alt="image" src="https://github.com/user-attachments/assets/af5b33bf-5f06-474f-861b-0a6156b46367" />

Go to (or create a folder) `assets/MOD_ID/font` within the resources folder. Inside, create another folder called `fonts` put the font file(s) you want inside it. **NOTE: The names for the actual font file and JSON file defining the font should only contain lowercase characters, numbers, and underscores.**
# Step 3
<img width="753" height="207" alt="image" src="https://github.com/user-attachments/assets/f826ada4-981c-47d5-8813-c5d41c5a9dca" />

Go to `assets/MOD_ID/font` and a JSON file inside the main "font" folder. The name of this JSON file will be the actual font ID that the game will use. Inside, paste the following contents:

```json
{
  "providers": [
    {
      "type": "ttf",
      "file": "MOD_ID:fonts/your_font.ttf",
      "shift": [0, 0],
      "size": 12.0,
      "oversample": 4.0
    }
  ]
}
```
Replace `MOD_ID` with the id of your mod, and `your_font` with the name of the (actual) file inside `assets/MOD_ID/font/fonts`.
## JSON Keys:
- type: This tells Minecraft the type of the font file you will be using. (for example, my `8bitoperator.ttf` will be using `"ttf"`)
- shift: Offsets the font display in-game. For example, a shift value of `[0, 2]` will offset the font down by 2 pixels.
- size: The font size
- oversample: The render resolution. Higher numbers can make the text quality clearer, but can take more resources to load.
# Step 4
<img width="654" height="174" alt="image" src="https://github.com/user-attachments/assets/fffbee54-31b1-4b00-a242-37bd4eb1e9ec" />
<img width="414" height="163" alt="image" src="https://github.com/user-attachments/assets/037e22a9-b422-4733-b295-f53b58259ec9" />

To use your new custom font anywhere with the plugin, simply format it like `modid:font_name`. In this example, my JSON file name is `pixel_font`, so i'll be using `redwiresmod:pixel_font`
