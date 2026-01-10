// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
global.__mm_genouka_position_current = 0;
global.__genouka_touchhelper_roomTitle = 0;
global.genouka_ShowVkeyInLevelMain = 3;
global.genouka_LevelMainPause = 0;
global.genouka_m_autoj_area = 0;
global.genouka_PickMode = 2;
global.genouka_DebugMode = 0;

global.genouka_VkeyTwoCLickTurnToRight = 0;
global.genouka_debuggui = 0;

global.genouka_disable_draw_set_clear = 0;

global.genouka_leftpad_offset_x = 0;
global.genouka_rightpad_offset_x = 0;
global.genouka_fps_lock = 0;

global.genouka_max_touch_count = 4;

global.genouka_unlock_fps_after_pause = 0;

global.genouka_force_enable_genouka_resource_loading_content = 0;

global.genouka_adjust_padsetting = 0;

genouka_keep_surface = surface_create(800, 600);

auto_aspect_meinit=0;

if(directory_exists(working_directory + "genouka_enable_genouka_resource_loading_content/"))
{
    global.genouka_force_enable_genouka_resource_loading_content = 1;
}
if(directory_exists(working_directory + "genouka_disable_genouka_resource_loading_content/"))
{
    global.genouka_force_enable_genouka_resource_loading_content = -1;
}

if (directory_exists(working_directory + "genouka_ciallo/"))
{
    show_message_async("Ciallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★\r\nCiallo～(∠・ω< )⌒★");
    if(os_type != os_windows)
    {
        url_open("https://ciallo.com.cn/");
    }
}

if (directory_exists(working_directory + "genouka/"))
{
    if(os_type != os_windows)
    {
        url_open("https://genouka.top/");
    }
}

if (directory_exists(working_directory + "genouka_0d000721/"))
{
    if(os_type != os_windows)
    {
        url_open("https://ciallo.com.cn/game1/");
    }
}

if ((os_type == os_android) || (os_type == os_ios))
{
    os_powersave_enable(false);
}

if (directory_exists(working_directory + "genouka_enable_music_debug/"))
{
    global.genouka_debuggui = 1;
}

if (directory_exists(working_directory + "genouka_disable_draw_set_clear/"))
{
    global.genouka_disable_draw_set_clear = 1;
}
pausable = 0;

if (os_type == os_android || os_type == os_ios)
{
    // if (directory_exists(working_directory + "lunatic\\saves"))
    // {
    //     var file_name = file_find_first(working_directory + "lunatic\\saves\\*.dat", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "lunatic\\saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    // if (directory_exists(working_directory + "saves"))
    // {
    //     var file_name = file_find_first(working_directory + "saves\\*.dat", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    // if (directory_exists(working_directory + "saves"))
    // {
    //     var file_name = file_find_first(working_directory + "saves\\*.exp", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    // if (directory_exists(working_directory + "exp_saves"))
    // {
    //     var file_name = file_find_first(working_directory + "exp_saves\\*.exp", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "exp_saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    // if (directory_exists(working_directory + "exp_saves"))
    // {
    //     var file_name = file_find_first(working_directory + "exp_saves\\*.dat", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "exp_saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    // if (directory_exists(working_directory + "recycle\\saves"))
    // {
    //     var file_name = file_find_first(working_directory + "recycle\\saves\\*.dat", 1);
        
    //     while (file_name != "")
    //     {
    //         file_delete(working_directory + "recycle\\saves\\" + file_name);
    //         file_name = file_find_next();
    //     }
        
    //     file_find_close();
    // }
    
}

room_instance_add(roomTitle, 0, 0, objectGenoukaNotes);