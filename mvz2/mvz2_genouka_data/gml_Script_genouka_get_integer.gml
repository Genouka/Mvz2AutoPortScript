// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

global.genouka_window_set_size_noused_version_script_v2 = 1;
if (os_type != os_windows)
{
    var of1 = 0;
    var t2 = "";
    var t = debug_get_callstack(2);
    var t1= string_replace(string(t[1]),":","_");
    if(file_exists(working_directory + "genouka_data.ini"))
    {
        ini_open(working_directory + "genouka_data.ini");
        if (!ini_key_exists("dialog", t1))
        {
            t2 = ("-----------------------------\r\n"
            + "你之所以看到本提示是因为移植端不支持召唤阻塞函数，如果你要更改这个输入值，请在存档目录的genouka_data.ini中更改以下内容（The reason why you see this prompt is that the port does not support calling blocking functions. If you want to change this input value, please modify the following content in genouka_data.ini in the archive directory）：\r\n"
            + "[dialog]\r\n"
            + "xxx=xxx\r\n"
            + t1 + "=你想填写的值（The Value You Want To Change）\r\n    <-只要修改这一行（Just modify this line）"
            + "xxx=xxx\r\n");
            clipboard_set_text(t1);
        }
        of1 = ini_read_real("dialog", t1, real(argument1));
        ini_close();
    }
    else
    {
        t2 = ("-----------------------------\r\n"
        + "你之所以看到本提示是因为移植端不支持召唤阻塞函数，如果你要更改这个输入值，请在存档目录创建名为genouka_data.ini的文件并添加以下内容（The reason why you see this prompt is that the port does not support calling blocking functions. If you want to change this input value, please create a file named genouka_data.ini in the archive directory and add the following content）：\r\n"
        + "[dialog]\r\n"
        + t1 + "=你想填写的值（The Value You Want To Change）\r\n");
        clipboard_set_text(t1);
        of1 = real(argument1);
    }
    
    var str=("-----------------------------\r\n"
    + "get_integer [" + string(argument0) + "]\r\n"
    + "-----------------------------\r\n"
    + "当前的值为\"" + string(of1) + "\"\r\n"
    + "Current Value is \"" + string(of1) + "\"\r\n"
    + t2
    + "[OK] 继续(Continue)");
    show_message_async(str);
    return of1;
}
else
{
    return get_integer(argument0,argument1);
}
