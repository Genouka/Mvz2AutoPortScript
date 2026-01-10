// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if (os_type == os_android || os_type == os_ios)
{
    if(global.genouka_fps_lock){
        if(directory_exists(working_directory + "genouka_game_set_speed_1/"))
        {
            game_set_speed(1, gamespeed_fps);
        }
        else if(directory_exists(working_directory + "genouka_game_set_speed_2/"))
        {
            game_set_speed(1, gamespeed_microseconds);
        }
        else
        {
            global.genouka_fps_lock=0;
        }
    }
    // 切换房间时调用这个分支
    if (variable_global_exists("_genouka_window_set_size_current_room"))
    {
        if (global._genouka_window_set_size_current_room != room)
        {
            //调整窗口大小

            if (!variable_global_exists("ResolutionMultiples"))
            {
                global.ResolutionMultiples = 1;
            }
            
            genouka_window_set_size(global.ResolutionWidth * power(1.2, global.ResolutionMultiples), global.ResolutionHeight * power(1.2, global.ResolutionMultiples));

            if(directory_exists(working_directory + "genouka_ResolutionMultiples_1/"))
            {
                global.ResolutionMultiples = 1;
            }

            if(directory_exists(working_directory + "genouka_ResolutionMultiples_2/"))
            {
                global.ResolutionMultiples = 2;
            }

            if(directory_exists(working_directory + "genouka_ResolutionMultiples_4/"))
            {
                global.ResolutionMultiples = 4;
            }

            if(directory_exists(working_directory + "genouka_fake_command/"))
            {
                genouka_window_set_size(50, 50);
            }

            if(directory_exists(working_directory + "genouka_level_override/"))
            {
                global.Debug = 1;
                if (os_type == os_ios)
                {
                    keyboard_virtual_show(0, 0, 0, 0);
                }
                else if (os_type == os_android)
                {
                    keyboard_virtual_show(1, 0, 0, 0);
                }
            }
            //调试用：设置游戏速度

            if(directory_exists(working_directory + "genouka_game_set_speed_1/"))
            {
                game_set_speed(1, gamespeed_fps);
                global.genouka_fps_lock=1;
            }

            if(directory_exists(working_directory + "genouka_game_set_speed_2/"))
            {
                game_set_speed(1, gamespeed_microseconds);
                global.genouka_fps_lock=1;
            }

            //记忆显示虚拟按键设置

            ini_open(working_directory + "genouka_settings/vkeys.ini");
            var lvl = "";
            if(variable_global_exists("level"))
            {
                lvl = string(global.level);
            }
            ini_write_real("genouka_ShowVkeyInLevelMain", string(global._genouka_window_set_size_current_room) + "_" + lvl, global.genouka_ShowVkeyInLevelMain);
            global.genouka_ShowVkeyInLevelMain = ini_read_real("genouka_ShowVkeyInLevelMain", string(room) + "_" + lvl, 0);
            ini_close();
            
            global._genouka_window_set_size_current_room = room;
        }
    }
    else
    {
        global._genouka_window_set_size_current_room = room;
    }
    if (genouka_isinlevel())
    {
        var a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12;
        a1 = 0;
        a2 = 0;
        a3 = 0;
        a4 = 0;
        a5 = 0;
        a6 = 0;
        a7 = 0;
        a8 = 0;
        a9 = 0;
        a10 = 0;
        a11 = 0;
        a12 = 0;
        for (var i = global.genouka_max_touch_count; i >= 0; i -= 1)
        {
            if(!device_mouse_check_button_released(i, mb_left)) continue;
            var mx = device_mouse_x_to_gui(i);
            var my = device_mouse_y_to_gui(i);

            if ((point_in_rectangle(mx, my, -64 + global.genouka_leftpad_offset_x, 360, -4 + global.genouka_leftpad_offset_x, 420)))
            {
                a1 = 1;
                //keyboard_key_release(ord("D"));
            }
            
            if ((point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 360, -64 + global.genouka_leftpad_offset_x, 420)))
            {
                a2 = 1;
                //keyboard_key_release(ord("S"));
            }
            
            if ((point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 360, -124 + global.genouka_leftpad_offset_x, 420)))
            {
                a3 = 1;
                //keyboard_key_release(ord("A"));
            }
            
            if ((point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 280, -64 + global.genouka_leftpad_offset_x, 340)))
            {
                a4 = 1;
                //keyboard_key_release(ord("W"));
            }

            if ((point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 200, -124 + global.genouka_leftpad_offset_x, 260)))
            {
                a5 = 1;
                //keyboard_key_release(vk_delete);
            }

            if ((point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 200, -64 + global.genouka_leftpad_offset_x, 260)))
            {
                a6 = 1;
                //keyboard_key_release(ord("F"));
            }

            if ((point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 360, 876 + global.genouka_leftpad_offset_x, 420)))
            {
                a7 = 1;
                //keyboard_key_release(ord("W"));
            }

            if ((point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 440, 876 + global.genouka_leftpad_offset_x, 500)))
            {
                a8 = 1;
                //keyboard_key_release(ord("Q"));
            }

            if ((point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 520, 876 + global.genouka_leftpad_offset_x, 580)))
            {
                a9 = 1;
                //keyboard_key_release(ord("E"));
            }
            
            if((point_in_rectangle(mx, my, -64 + global.genouka_leftpad_offset_x, 200, -4 + global.genouka_leftpad_offset_x, 260)))
            {
                a10 = 1;
                //keyboard_key_release(ord("K"));
            }
            if((point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 440, -124 + global.genouka_leftpad_offset_x, 500)))
            {
                a11 = 1;
            }
            if((point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 500, -124 + global.genouka_leftpad_offset_x, 560)))
            {
                a12 = 1;
            }
        }
        if(a1==0)
        {
            keyboard_key_release(ord("D"));
        }
        if(a2==0)
        {
            keyboard_key_release(ord("S"));
        }
        if(a3==0)
        {
            keyboard_key_release(ord("A"));
        }

        if(a4==0)
        {
            keyboard_key_release(ord("W"));
        }

        if(a7==0)
        {
            keyboard_key_release(ord("W"));
        }

        if(a5==0)
        {
            keyboard_key_release(vk_delete);
        }
        if(a6==0)
        {
            keyboard_key_release(ord("F"));
        }
        if(a10==0)
        {
            keyboard_key_release(ord("K"));
        }
        
        if(a8==0)
        {
            keyboard_key_release(ord("Q"));
        }
        if(a9==0)
        {
            keyboard_key_release(ord("E"));
        }
        
        if(a11==0)
        {
            keyboard_key_release(vk_up);
        }
        if(a12==0)
        {
            keyboard_key_release(vk_down);
        }
    }
    // var mx = device_mouse_x_to_gui(0);
    // var my = device_mouse_y_to_gui(0);
    // var mb = device_mouse_check_button(0, mb_left);
    // if (genouka_isinlevel())
    // {
        
    //     if ((!point_in_rectangle(mx, my, -64, 360, -4, 420)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("D"));
    //     }
        
    //     if ((!point_in_rectangle(mx, my, -124, 360, -64, 420)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("S"));
    //     }
        
    //     if ((!point_in_rectangle(mx, my, -184, 360, -124, 420)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("A"));
    //     }
        
    //     if ((!point_in_rectangle(mx, my, -124, 280, -64, 340)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("W"));
    //     }

    //     if ((!point_in_rectangle(mx, my, -184, 200, -124, 260)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(vk_delete);
    //     }

    //     if ((!point_in_rectangle(mx, my, -124, 200, -64, 260)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("F"));
    //     }

    //     if ((!point_in_rectangle(mx, my, 800, 360, 876, 420)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("W"));
    //     }

    //     if ((!point_in_rectangle(mx, my, 800, 440, 876, 500)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("Q"));
    //     }

    //     if ((!point_in_rectangle(mx, my, 800, 520, 876, 580)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("E"));
    //     }
        
    //     if((!point_in_rectangle(mx, my, -64, 200, -4, 260)) || device_mouse_check_button_released(0, mb_left))
    //     {
    //         keyboard_key_release(ord("K"));
    //     }
    // }
    if(global.__genouka_touchhelper_roomTitle == 1 && device_mouse_check_button_released(0, mb_left))
    {
        // keyboard_key_release(ord("'"));
        // keyboard_key_release(ord("="));
        global.__genouka_touchhelper_roomTitle = 0;
    }
}