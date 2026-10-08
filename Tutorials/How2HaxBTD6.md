# Using DnSpy + Il2Cpp dumper & how to cheat in BTD6 using said tools
<img width="664" height="478" alt="BTD6 screenshot feat. mulitiple Ezilis" src="https://github.com/user-attachments/assets/29977c1e-0746-400d-a67a-b78bf1c3510d" />

# Tool Downloads
- Get the latest dnSpy releases [here](https://github.com/dnSpy/dnSpy/releases/tag/v6.1.8)
- Get the latest Il2Cpp GUI releases [here](https://github.com/AndnixSH/Il2CppDumper-GUI/releases)

# Step 1
- Open up the `Il2CppDumper GUI x86_64.exe` file (I believe `Il2CppDumper GUI x86.exe` does essentially the same thing, but BTD6 is a x64-bit game anyways, so...)
# Step 2
<img width="738" height="521" alt="image" src="https://github.com/user-attachments/assets/5c7ad268-b0c9-4198-8d57-5f127475f441" />

- Navigate to your Bloons TD6 install directory. For example, I have it installed on my D: drive, so it's gonna be at `D:\SteamLibrary\steamapps\common\BloonsTD6`. If you have Bloons TD6 installed on steam, you can right-click on the game in your library, select [Properties > Installed Files > Browse...] to open up the games directory.
- For "executable file", select "GameAssembly.dll" from the directory.
- For "global-metadata.dat", navigate to `BloonsTD6_Data\il2cpp_data\Metadata`, and select the `global-metadata.dat` file inside
- Click the blue "Press start or drop APK, APKS, [...] to dump" file to begin the process, and wait for the "Done!" message in the console. If you get an error saying the output file path is denied, try moving it to a directory outside of OneDrive.
