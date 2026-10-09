<img width="651" height="463" alt="image" src="https://github.com/user-attachments/assets/32eeda84-ffac-4e6d-8b8b-e0c33571521f" /># Using DnSpy + Il2Cpp dumper & how to cheat in BTD6 using said tools
<img width="1027" height="582" alt="BTD6 screenshot of a hypersonic Monkey Ace" src="https://github.com/user-attachments/assets/37a9709a-f7bf-4fc3-8c0d-6335d42b22a0" />

In this tutorial, we will be learning how to enable hypersonic towers
# Tool Downloads
- Get the latest dnSpy releases [here](https://github.com/dnSpy/dnSpy/releases/tag/v6.1.8)
- Get the latest Il2Cpp GUI releases [here](https://github.com/AndnixSH/Il2CppDumper-GUI/releases)

# Step 1
- Open up the `Il2CppDumper GUI x86_64.exe` file (I believe `Il2CppDumper GUI x86.exe` does essentially the same thing, but BTD6 is a x64-bit game anyways, so...)
<img width="705" height="499" alt="1a" src="https://github.com/user-attachments/assets/896c72ee-be6b-4951-97ab-89191e7dff69" />

- (Personally, I recommend turning every setting off *except* for "Check for updates" & "Generate dummy DLL", as those are the only 2 settings that matter for for us)
# Step 2
<img width="743" height="306" alt="1" src="https://github.com/user-attachments/assets/a31c2993-951e-44ff-9340-e1764dac83f5" />

- Navigate to your Bloons TD6 install directory. For example, I have it installed on my D: drive, so it's gonna be at `D:\SteamLibrary\steamapps\common\BloonsTD6`. If you have Bloons TD6 installed on steam, you can right-click on the game in your library, select [Properties > Installed Files > Browse...] to open up the games directory.
- For "executable file", select "GameAssembly.dll" from the directory.
- For "global-metadata.dat", navigate to `BloonsTD6_Data\il2cpp_data\Metadata`, and select the `global-metadata.dat` file inside
- Click the blue "Press start or drop APK, APKS, [...] to dump" file to begin the process, and wait for the "Done!" message in the console. If you get an error saying the output file path is denied, try moving the output directory to a path outside of OneDrive, then try again.
# Step 3
- Open up `Assembly-CSharp.dll` in dnSpy from the Output directory's `DummyDll` folder, which should look like this:
<img width="1296" height="723" alt="3" src="https://github.com/user-attachments/assets/b9293016-76b8-47bc-b240-578dd603c34f" />

# Step 4
- Navigate to `Assets.Scripts.Models.Towers.Weapons.WeaponModel`, which is going to have the information we'll need for hypersonic towers
<img width="395" height="690" alt="4" src="https://github.com/user-attachments/assets/711d1138-5b40-407b-9fe6-b18992cd735a" />

# Step 5
- Click on the `rate: float` field inside `WeaponModel` and take note of the `FieldOffset` number inside it.
<img width="763" height="146" alt="5" src="https://github.com/user-attachments/assets/8a032a73-85c6-4c57-b3ed-9cbd0eb638a3" />

**IMPORTANT INFO:**
  - The offset for `rate` currently is 0x68 as of **BTD6 57.0**. It ***may change in future updates,*** which is why having an updated dump file is important.
# Part 6 (Cheat Engine time)
- In Cheat Engine, open up "Memory View", right-click on any random address shown, click on "Go to address" from the context menu, and then go to `Assets.Scripts.Models.Towers.Weapons.WeaponModel.Clone`. Float fields like `rate` will typically have `xmm0`, `xmm1`, `xmm2`, etc. shown in the opcode, so it's safe to assume that the address the picture points at is what we want. Note: the `+68` matches the `0x68` offset as shown in dnSpy.
<img width="651" height="463" alt="image" src="https://github.com/user-attachments/assets/f7371dc9-f62c-4e9c-9ad8-882749f68802" />

- Fun fact: Most classes inside the `Assets.Scripts.Models.*` directly have a `Clone` method, which is helpful for us to track down certain fields that it uses. (You cannot go-to the address of the class itself, but *might* be able to poke around a `..ctor` method)
- Some opcodes may be represented in 8 digits instead of just 2. For example, an offset of a field with `0x12A` will be represented as `0000012A` in Cheat Engine

# Step 6
