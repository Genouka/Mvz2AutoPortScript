// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

using System;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Linq;
using UndertaleModLib.Util;

bool runInCli = false;
if (Environment.GetEnvironmentVariable("Genouka_MVZ2_Port")?.ToLower() == "cli") runInCli = true;

bool jumpHardCode = false;
if (Environment.GetEnvironmentVariable("Genouka_MVZ2_Port_JumpHardCode")?.ToLower() == "true") jumpHardCode = true;

EnsureDataLoaded();

string displayName = Data.GeneralInfo?.DisplayName?.Content.ToLower();

string dataPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "mvz2_genouka_data");

GlobalDecompileContext globalDecompileContext = new(Data);
Underanalyzer.Decompiler.IDecompileSettings decompilerSettings = Data.ToolInfo.DecompilerSettings;

UndertaleModLib.Compiler.CodeImportGroup importGroup = new(Data);

// 导入

foreach (var path in Directory.GetFiles(dataPath, "*.gml"))
{
    if (path.EndsWith("gml_Script_genouka_texthardcode.gml"))
    {
        if (!runInCli && ScriptQuestion("跳过 genouka_texthardcode.gml 的导入吗？\n(如果你之前已经导入过这个脚本，选择是。如果不确定，选择否。)"))
        {
            continue;
        }
        if (runInCli && jumpHardCode)
        {
            continue;
        }
    }
    QueueGMLFile(path);
}

importGroup.Import();
importGroup = new(Data);

{
    List<UndertaleCode> toDump = Data.Code.Where(c => c.ParentEntry is null).ToList();
    foreach (UndertaleCode code in toDump)
    {
        try
        {
            if (code is not null)
            {
                if (code.Name.Content.Contains("genouka"))
                {
                    continue;
                }
                if (code.Name.Content.Contains("Genouka"))
                {
                    continue;
                }
                var gmlstr =  getGMLString(code);
                if (gmlstr.StartsWith("/*"))
                {
                    continue;
                }
                if (gmlstr.StartsWith("//"))
                {
                    continue;
                }
                gmlstr = "\n" + gmlstr;
                var gmlstr2 = gmlstr;
                for (int j = 0; j < 2; j++)
                {
                    foreach (
                        var keyword in new String[]{
                            "window_set_size",
                            "window_get_width",
                            "window_get_height",
                            "show_message",
                            "show_error",
                            "show_question",
                            "draw_surface_ext",
                            "draw_surface_part_ext",
                            "draw_surface",
                            "surface_set_target",
                            "surface_reset_target",
                            "surface_free",
                            "file_exists",
                            "get_string",
                            "get_integer"
                        })
                    {
                        foreach (var t in new string[][] {
                            [ "\n", "(" ],
                            [ "\r", "(" ],
                            [ "(", "(" ],
                            [ " ", "(" ],
                            [ ",", "(" ],
                            [ ";", "(" ],
                            [ "!", "(" ],
                            [ ":", "(" ]
                        })
                        {
                            var prefix1 = t[0];
                            var keyword1 = keyword + t[1];
                            if (!gmlstr.Contains(keyword))
                            {
                                continue;
                            }
                            if (j == 0)
                                gmlstr = gmlstr.Replace(prefix1 + "genouka_" + keyword1, prefix1 + keyword1, StringComparison.Ordinal);
                            else
                                gmlstr = gmlstr.Replace(prefix1 + keyword1, prefix1 + "genouka_" + keyword1, StringComparison.Ordinal);
                        }
                    }
                    foreach (var t in new string[] {
                            "\n",
                            "\r",
                            "(",
                            " ",
                            ",",
                            ";",
                            "!",
                            ":"
                        })
                    {
                        if (!gmlstr.Contains("debug_mode"))
                        {
                            continue;
                        }
                        if (j == 0)
                            gmlstr = gmlstr.Replace(t + "genouka_debug_mode()", t + "debug_mode", StringComparison.Ordinal);
                        else
                            gmlstr = gmlstr.Replace(t + "debug_mode", t + "genouka_debug_mode()", StringComparison.Ordinal);
                    }
                }
                if (gmlstr2 == gmlstr)
                {
                    continue;
                }
                importGroup.QueueReplace(code, gmlstr);
            }
        }
        catch (Exception ex)
        {
            //throw ex;
            ScriptMessage("AST抛出异常：" + ex.ToString());
        }
    }
}

importGroup.Import();
importGroup = new(Data);

{
    var gmusicobj = Data.GameObjects.ByName("GenoukaMusic");

    gmusicobj.Persistent = true;

    var firstRoom = Data.Rooms[0];
    var shouldAdd = !(firstRoom.GameObjects.Any(o => o.ObjectDefinition == gmusicobj));

    if (shouldAdd)
    {
        firstRoom.GameObjects.Add(new UndertaleRoom.GameObject()
        {
            InstanceID = Data.GeneralInfo.LastObj++,
            ObjectDefinition = gmusicobj,
            X = 0,
            Y = 0
        });
    }
}

{
    StringBuilder builder1 = new StringBuilder(getGMLString(Data.Code.ByName("gml_Object_Entering_Create_0")));
    var shouldAdd = true;
    if (builder1.ToString().Contains("genouka_os_type"))
        shouldAdd = !(runInCli || ScriptQuestion("检测到 Entering 的 Create 事件中已经包含 genouka_os_type 相关代码，是否跳过对该事件的修改？\n(如果你之前已经导入过这个脚本，选择是)"));
    if (shouldAdd)
    {
        builder1.Insert(0, """
global.genouka_os_type = genouka_get_config_os_type();

if (os_type == os_ios || os_type == os_android)
{
display_set_sleep_margin(10);
display_reset(0, 1);
}

if (os_type != os_windows)
{
genouka_texthardcode();
}

""");
        builder1.ToString();
        importGroup.QueueReplace("gml_Object_Entering_Create_0", builder1.ToString());
    }
    else
    {
    }
}

{
    StringBuilder builder1 = new StringBuilder(getGMLString(Data.Code.ByName("gml_Object_Chest_Step_0")));
    var shouldAdd = true;
    if (builder1.ToString().Contains("device_mouse_check_button_released"))
        shouldAdd = !(runInCli || ScriptQuestion("检测到 Chest 的 Step 事件中已经包含 device_mouse_check_button_released 相关代码，是否跳过对该事件的修改？\n(如果你之前已经导入过这个脚本，选择是。如果不确定，选择否。)"));
    if (shouldAdd)
    {
        builder1.Insert(0, """
if (image_alpha >= 0.9333333333333333)
{
    if (os_type != os_windows && os_type != os_macosx && device_mouse_check_button_released(0, mb_left))
    {
        room_goto(roomTitle);
    }
}


""");
        builder1.ToString();
        importGroup.QueueReplace("gml_Object_Chest_Step_0", builder1.ToString());
    }
    else
    {
    }
}

{
    StringBuilder builder1 = new StringBuilder(getGMLString(Data.Code.ByName("gml_Object_Map_Create_0")));
    var shouldAdd = true;
    if (builder1.ToString().Contains("zoom_current"))
        shouldAdd = !(runInCli || ScriptQuestion("检测到 Map 的 Create 事件中已经包含 zoom_current 相关代码，是否跳过对该事件的修改？\n(如果你之前已经导入过这个脚本，选择是。如果不确定，选择否。)"));
    if (shouldAdd)
    {
        builder1.Insert(0, """
zoom_current = 1;
zoom_min = 0.4;
zoom_max = 3;
touch_dist_cur = 0;
touch_dist_old = 0;
first_two = 1;

""");
        builder1.ToString();
        importGroup.QueueReplace("gml_Object_Map_Create_0", builder1.ToString());
    }
    else
    {
    }
}
{
    var code = Data.Code.ByName("gml_Object_SettingButton_Draw_0");
    var codestr = getGMLString(code);
    if (!codestr.Contains("本版本由秋冥散雨_Genouka移植"))
    {
        codestr = codestr.Replace("\"按住并拖动鼠标右键以移动视野！\\r滑动鼠标滚轮以缩放视野！\"",
        "((os_type == os_android || os_type == os_ios) ? \"按住并拖动手指以移动视野！\\r双指缩放以缩放视野！\\r本版本由秋冥散雨_Genouka移植。\\r禁止用于商业用途及上传第三方平台\" : \"按住并拖动鼠标右键以移动视野！\\r滑动鼠标滚轮以缩放视野！\")",
         StringComparison.Ordinal);
        importGroup.QueueReplace(code, codestr);
    }
}

importGroup.Import();

void QueueGMLFile(string path)
{
    importGroup.QueueReplace(Path.GetFileNameWithoutExtension(path), File.ReadAllText(path));
}
String getGMLString(UndertaleCode code)
{
    return new Underanalyzer.Decompiler.DecompileContext(globalDecompileContext, code, decompilerSettings).DecompileToString();
}