# Step 1
<img width="307" height="135" alt="image" src="https://github.com/user-attachments/assets/adb24523-e212-46b8-9c1d-973d8c00eee2" />

Locate the Resources folder of your mod. You can do this either by opening the "Resources" folder in the default program in MCreator's file browser, or manually locate it on your pc.
Example: `C:\Users\USER\MCreatorWorkspaces\WORKSPACE_NAME\src\main\resources`
# Step 2
<img width="561" height="282" alt="image" src="https://github.com/user-attachments/assets/df65fec6-1c7d-4007-a3fa-dfa86cfbbc86" />
<img width="735" height="171" alt="image" src="https://github.com/user-attachments/assets/7a8e518b-33f3-4f8e-8aca-08e964a56eed" />

Go to `assets/MOD_ID/font` within the resources folder. If there is no `font` folder, simply create one with the name. Inside, put the font file(s) you want inside it. **NOTE: The names for the actual font file and JSON file defining the font should only contain lowercase characters and underscores.** For example, the original name of the font file was "8bitoperator", but I renamed it to "pixel_font" as minecraft doesn't allow numbers in the ID name.
# Step 3
<img width="763" height="187" alt="image" src="https://github.com/user-attachments/assets/068b09e3-ab21-401a-9fbd-1522408a6c47" />
Go to `assets/MOD_ID/fonts` within the resources folder (again, create it if it's not there).
Create a JSON file inside the fonts folder. The name of this JSON file will be the actual font ID that the game will use. Inside, paste the following contents:

```json
{
  "providers": [
    {
      "type": "ttf",
      "file": "MOD_ID:font/your_font.ttf",
      "shift": [0, 0],
      "size": 12.0,
      "oversample": 4.0
    }
  ]
}
```
Replace `MOD_ID` with the id of your mod, and `your_font` with the name of the (actual) file inside `assets/MOD_ID/font`.
