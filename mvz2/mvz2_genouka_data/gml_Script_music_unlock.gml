// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

var num = -4;
num = music_get_number(argument0);

if (num < 1)
{
    if(os_type == os_windows)
    {
        show_error("music hasn't been recorded.", 0);
    }
    else
    {
        if(!variable_global_exists("genouka_resource_loading_content"))
        {
            global.genouka_resource_loading_content = "";
        }
        global.genouka_resource_loading_content += "[GenoukaMusic]"+ genouka_getstackstring(3) +" Music hasn't been recorded:" + string(argument0) + "\r";
        exit;
    }
}

//增加范围安全检查
if(num > array_length_1d(global.UnlockedMusic) - 1)
{
    // It's possibly a mm music ID
    var tnum = num - 100000;
    if(tnum < 1 || tnum > array_length_1d(global.UnlockedMusic) - 1)
    {
        num = num % array_length_1d(global.UnlockedMusic);
        if(num < 1 || num > array_length_1d(global.UnlockedMusic) - 1)
        {
            exit;
        }
    }
    else
    {
        num = tnum;
    }
}

if (num == 33)
{
    num = 1;
}
else if (global.UnlockedMusic[num] == 0)
{
    global.UnlockedMusic[num] = 1;
    save_write_user(global.userPath, 1024 + num, 1);
}
