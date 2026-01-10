# Minecraft VS Zombie 2 GMS Auto Port Script

## Usage

1. Install python3.8+

   You can download it at https://www.python.org/downloads/

2. Change the path in `drag_regular.bat`

   Line 13: the path to `UndertaleModCli.exe` (v0.8.3.0)

   You can download it at https://github.com/UnderminersTeam/UndertaleModTool/releases

3. (Optional) If you want to update ffmpeg, then change the path in `drag_gen_qmout_sounds_v3.bat`

   Line 13: the path to `ffmpeg.exe` (version N-120990-gf6bcd661f0-20250905)

      You can download it at https://ffmpeg.org/download.html

4. Run `drag_gen_qmout_sounds_v3.bat` and drag the `data.win` into console. press Enter.

   Wait for it until finished.

5. Drag the `data.win` to `drag_regular.bat`.

   Wait for it until prompted.

6. You will get `game.droid` file.

7. (Optional) If you want to build a apk, then continue reading. Or you could quit the console.

   Generate a jks significance and put it at `private\sign.jks`

   Write password of jks at `private\kspass.txt`

   Write password of alias at `private\keypass.txt`

8. (Optional) Input `Game ID` and `Game Display Name` in console.

9. (Optional) You will get `signed.apk` file.

## License

MPL2.0, please look at [LICENSE](LICENSE.txt) for detail.
