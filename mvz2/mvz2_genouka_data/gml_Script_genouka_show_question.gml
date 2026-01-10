// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

global.genouka_window_set_size_noused_version_script_v2 = 1;
if (os_type != os_windows)
{
    var t1;
    var t2;
    if(directory_exists(working_directory + "genouka_select_no/"))
    {
        t1 = ("您选择的是 No\r\n"
        + "由于平台限制，如果需要选择Yes请删去存档目录下名为genouka_select_no的目录\r\n"
        + "You have selected No.\r\n"
        + "Due to platform limitations, if you need to select 'Yes', please delete the directory named genouka_delect_no from the archive directory\r\n");
        t2 = false;
    }
    else
    {
        t1 = ("您选择的是 Yes (默认值)\r\n"
        + "由于平台限制，如果需要选择No请在存档目录新建一个名为genouka_select_no的目录\r\n"
        + "You have selected Yes (Default Value).\r\n"
        + "Due to platform limitations, if you need to select 'No', please create a new directory named genouka_delect_no in the archive directory录\r\n");
        t2 = true;
    }
    var str=("-----------------------------\r\n"
    + "质询\r\n"
    + "-----------------------------\r\n"
    + string(argument0)
    + "\r\n"
    + t1
    + "[OK] 继续");
    show_message_async(str);
    return t2;
}
else
{
    return show_question(argument0);
}
