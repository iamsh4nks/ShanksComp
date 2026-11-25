# ShanksComp VST3

A simple stereo/mono compressor for FL Studio, built with JUCE.

## Controls
- Threshold: -48 to 0 dB
- Ratio: 1:1 to 20:1
- Attack: 0.1 to 100 ms
- Release: 10 to 1000 ms
- Knee: 0 to 12 dB
- Makeup: -12 to +24 dB
- Mix: 0 to 100%

## Build on Windows
1. Install **Visual Studio 2022** with the *Desktop development with C++* workload.
2. Install **CMake** (3.22 or newer) and **Git**.
3. Extract this folder.
4. Double-click `build_windows.bat` (or run it from a terminal). It configures and builds the Release VST3 automatically.

5. The VST3 will be built under `build/ShanksComp_artefacts/Release/VST3/`.
   CMake is configured to copy the plugin to the standard VST3 location after build.

## Load in FL Studio
1. Open **Options > Manage plugins**.
2. Add/confirm the VST3 folder in Plugin search paths.
3. Click **Find installed plugins**.
4. Search for **ShanksComp** and load it on a mixer insert.

## Starter vocal setting
Try Threshold -18 dB, Ratio 3:1, Attack 10 ms, Release 100 ms, Knee 6 dB,
Makeup +2 dB, Mix 100%. Adjust threshold until the loudest phrases get a few dB
of gain reduction. This is a starting point, not a fixed vocal preset.

## Notes
This is source code for a VST3 plugin project, not a precompiled installer.
The first CMake configure downloads JUCE from its official GitHub repository,
so an internet connection is required during setup.
