// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if (global.genouka_os_type != 0)
{
    if (variable_global_exists("__mm_genouka_isplaying"))
    {
        var zero = 0;
        
        if (zero == 1)
        {
            var __genouka_timeround_old = 1 / game_get_speed(gamespeed_fps);
        }
        
        var __genouka_timeround = delta_time / 1000000;
        global.__mm_genouka_position_current += __genouka_timeround;
        global.genouka_music_things = "genouka_music_enabled frame_delta=" + string(__genouka_timeround) + "\r";
        var size = ds_map_size(global.__mm_genouka_isplaying);
        var __genouka_key = ds_map_find_first(global.__mm_genouka_isplaying);
        global.genouka_music_things += ("Cache List Size:" + string(size) + "\r");
        
        for (var __mm_genouka_i = 0; __mm_genouka_i < size; __mm_genouka_i++)
        {
            var genouka_playing_status = ds_map_find_value(global.__mm_genouka_isplaying, __genouka_key);
            var genouka_sound_name = " Unknown";
            if(ds_map_exists(global.__mm_genouka_stream_reserveindex_list, __genouka_key))
            {
                genouka_sound_name = " " + string(ds_map_find_value(global.__mm_genouka_stream_reserveindex_list, __genouka_key));
            }
            global.genouka_music_things += string(__genouka_key) + string(genouka_sound_name);
            
            if (genouka_playing_status == 1)
            {
                var genouka_old_position = ds_map_find_value(global.__mm_genouka_position_list, __genouka_key);
                var genouka_current_position = ((genouka_old_position == undefined) ? 0 : genouka_old_position) + __genouka_timeround;
                global.genouka_music_things += (" playing [ " + string(genouka_old_position) + "->" + string(genouka_current_position) + "]");
                ds_map_set(global.__mm_genouka_position_list, __genouka_key, genouka_current_position);
                
                if (ds_map_exists(global.__mm_genouka_loop_position_list, __genouka_key))
                {
                    var genouka_loop_e = ds_map_find_value(global.__mm_genouka_loop_position_end_list, __genouka_key);
                    var genouka_loop_s = ds_map_find_value(global.__mm_genouka_loop_position_list, __genouka_key);
                    global.genouka_music_things += (" loop [" + string(genouka_loop_s) + "->" + string(genouka_loop_e) + "]");
                    
                    if(genouka_loop_e <= genouka_loop_s)
                    {
                        global.genouka_music_things += " (Invalid Loop)";
                    }

                    if (genouka_current_position > genouka_loop_e)
                    {
                        mm_set_position(__genouka_key, genouka_loop_s);
                    }
                    else
                    {
                        var genouka_length = mm_get_length(__genouka_key);

                        if ( genouka_loop_e > genouka_length )
                        {
                            mm_set_position(__genouka_key, genouka_loop_s);
                        }
                        if (genouka_current_position > genouka_length)
                        {
                            mm_set_position(__genouka_key, 0);
                        }
                    }
                }
                else if (genouka_current_position > mm_get_length(__genouka_key))
                {
                    mm_set_position(__genouka_key, 0);
                }
            }
            
            global.genouka_music_things += "\r";
            __genouka_key = ds_map_find_next(global.__mm_genouka_isplaying, __genouka_key);
        }
    }
}

if(global.genouka_adjust_padsetting >= 30)
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    // 设置浮窗模式
    if(global.genouka_adjust_padsetting == 30)
    {
        global.genouka_adjust_padsetting += 1;
    }
    else if(global.genouka_adjust_padsetting == 31)
    {
        instance_deactivate_all(true);
        global.genouka_adjust_padsetting += 1;
    }
    else if(device_mouse_check_button_pressed(0,mb_left))
    {
        
        if (point_in_rectangle(mx, my, -80, 80, -4, 140))
        {
            global.genouka_adjust_padsetting = -1;
            if(surface_exists(genouka_keep_surface))
            {
                surface_free(genouka_keep_surface);
            }
            instance_activate_all();
            exit;
        }
    }

    if(device_mouse_check_button(0,mb_left))
    {
        if (point_in_rectangle(mx, my, 0, 20, 80, 80))
        {
            global.genouka_leftpad_offset_x -= 1;
        }
        if (point_in_rectangle(mx, my, 90, 20, 170, 80))
        {
            global.genouka_leftpad_offset_x += 1;
        }
        if (point_in_rectangle(mx, my, 0, 100, 80, 160))
        {
            global.genouka_rightpad_offset_x -= 1;
        }
        if (point_in_rectangle(mx, my, 90, 100, 170, 160))
        {
            global.genouka_rightpad_offset_x += 1;
        }
    }
    exit;
}

if (os_type == os_android || os_type == os_ios)
{    
    var _dt = delta_time / 1000000;
    if (room == roomMainMenu)
    {
        if(device_mouse_check_button_pressed(0,mb_left))
        {
            if (directory_exists(working_directory + "genouka_enable_music_debug/"))
            {
                global.genouka_debuggui = 1;
            }
            genouka_debug_mode();
        }
    }

    if (room == roomMainMenu || genouka_isinlevel())
    {
        if(device_mouse_check_button_pressed(0,mb_left))
        {
            var mx = device_mouse_x_to_gui(0);
            var my = device_mouse_y_to_gui(0);
            if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 150, 876 + global.genouka_rightpad_offset_x, 210))
            {
                global.genouka_VkeyTwoCLickTurnToRight = !global.genouka_VkeyTwoCLickTurnToRight;
                device_mouse_dbclick_enable(global.genouka_VkeyTwoCLickTurnToRight);
                mouse_clear(mb_any);
                //global.__genouka_touchhelper_roomTitle = 1;
            }
        }
    }

    // 拾取模式
    if(device_mouse_check_button_pressed(0,mb_left))
    {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);
        if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 220, 876 + global.genouka_rightpad_offset_x, 280))
        {
            global.genouka_PickMode = (global.genouka_PickMode + 1) % 8;
            mouse_clear(mb_any);
        }
    }

    //虚拟键调整
    if(device_mouse_check_button(0,mb_left) && global.genouka_adjust_padsetting != -1)
    {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);
        if (point_in_rectangle(mx, my, -80, 80, -4, 140))
        {
            //global.genouka_adjust_padsetting += 1;
            global.genouka_adjust_padsetting = 30;
        }
    }
    else if(device_mouse_check_button_released(0,mb_left))
    {
        global.genouka_adjust_padsetting = 0;
    }

    if (room == roomMainMenu || instance_exists(Map))
    {
        if(device_mouse_check_button_pressed(0,mb_left))
        {
            var mx = device_mouse_x_to_gui(0);
            var my = device_mouse_y_to_gui(0);
            // 召唤键盘
            if (point_in_rectangle(mx, my, -80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60))
            {
                if (os_type == os_ios)
                {
                    keyboard_virtual_show(0, 0, 0, 0);
                }
                else if (os_type == os_android)
                {
                    keyboard_virtual_show(1, 0, 0, 0);
                }
            }
            
            // 调试模式
            if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 290, 876 + global.genouka_rightpad_offset_x, 350))
            {
                global.genouka_DebugMode = (global.genouka_DebugMode + 1) % 4;
                switch(global.genouka_DebugMode)
                {
                    case 0:
                    case 1:
                        global.__genouka__debug_mode_inner = 0;
                    break;
                    case 2:
                    case 3:
                        global.__genouka__debug_mode_inner = 1;
                    break;
                    default:
                        global.__genouka__debug_mode_inner = 0;
                }
                switch(global.genouka_DebugMode)
                {
                    case 0:
                    case 1:
                        global.Debug = 0;
                    break;
                    case 2:
                    case 3:
                        global.Debug = 1;
                    break;
                    default:
                        global.Debug = 0;
                }
                switch(global.genouka_DebugMode)
                {
                    case 0:
                    case 2:
                        global.genouka_debuggui = 0;
                    break;
                    case 1:
                    case 3:
                        global.genouka_debuggui = 1;
                    break;
                    default:
                        global.genouka_debuggui = 0;
                }
                mouse_clear(mb_any);
            }
        }
    }
    
    if (genouka_isinlevel())
    {
        var should_release_keys = true;
        for (var i = global.genouka_max_touch_count; i >= 0; i -= 1)
        {
            var mx = device_mouse_x_to_gui(i);
            var my = device_mouse_y_to_gui(i);
            var mb = device_mouse_check_button(i, mb_left);
            
            // if (!variable_global_exists("genouka_LevelMainPause"))
            // {
            //     global.genouka_LevelMainPause = 0;
            // }
            
            // if (!variable_global_exists("genouka_m_autoj_area"))
            // {
            //     global.genouka_m_autoj_area = 0;
            // }

            
            if (mb)
            {
                if(global.genouka_ShowVkeyInLevelMain>0)
                {
                    if(global.genouka_ShowVkeyInLevelMain>2)
                    {
                        if (point_in_rectangle(mx, my, -64 + global.genouka_leftpad_offset_x, 360, -4 + global.genouka_leftpad_offset_x, 420))
                        {
                            keyboard_key_press(ord("D"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 360, -64 + global.genouka_leftpad_offset_x, 420))
                        {
                            keyboard_key_press(ord("S"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 360, -124 + global.genouka_leftpad_offset_x, 420))
                        {
                            keyboard_key_press(ord("A"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 280, -64 + global.genouka_leftpad_offset_x, 340))
                        {
                            keyboard_key_press(ord("W"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }

                        if (point_in_rectangle(mx, my, -64 + global.genouka_leftpad_offset_x, 200, -4 + global.genouka_leftpad_offset_x, 260))
                        {
                            keyboard_key_press(ord("K"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }

                        if (point_in_rectangle(mx, my, -184 + global.genouka_leftpad_offset_x, 200, -124 + global.genouka_leftpad_offset_x, 260))
                        {
                            keyboard_key_press(vk_delete);
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }

                        if (point_in_rectangle(mx, my, -184 +  global.genouka_leftpad_offset_x, 440, -124 + global.genouka_leftpad_offset_x, 500))
                        {
                            keyboard_key_press(vk_up);
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }

                        if (point_in_rectangle(mx, my, -184 +  global.genouka_leftpad_offset_x, 500, -124 + global.genouka_leftpad_offset_x, 560))
                        {
                            keyboard_key_press(vk_down);
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                    }
                    if(global.genouka_ShowVkeyInLevelMain>1)
                    {
                        if (point_in_rectangle(mx, my, -124 + global.genouka_leftpad_offset_x, 200, -64 + global.genouka_leftpad_offset_x, 260))
                        {
                            keyboard_key_press(ord("F"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 360, 876 + global.genouka_rightpad_offset_x, 420))
                        {
                            keyboard_key_press(ord("W"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 440, 876 + global.genouka_rightpad_offset_x, 500))
                        {
                            keyboard_key_press(ord("Q"));
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                        
                        if (point_in_rectangle(mx, my, 800 + global.genouka_rightpad_offset_x, 520, 876 + global.genouka_rightpad_offset_x, 580))
                        {
                            keyboard_key_press(192); //` key
                            mouse_clear(mb_any);
                            should_release_keys = false;
                        }
                    }
                }
            }
            
            if (device_mouse_check_button_pressed(i, mb_left))
            {
                if (point_in_rectangle(mx, my, -80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60))
                {
                    global.genouka_ShowVkeyInLevelMain = (global.genouka_ShowVkeyInLevelMain + 1) % 4;
                    if(global.genouka_ShowVkeyInLevelMain == 0)
                    {
                        if (os_type == os_ios)
                        {
                            keyboard_virtual_show(0, 0, 0, 0);
                        }
                        else if (os_type == os_android)
                        {
                            keyboard_virtual_show(1, 0, 0, 0);
                        }
                    }
                }
                
                if (global.genouka_LevelMainPause == 0)
                {
                    var m_pause_area = point_in_rectangle(mx, my, -80 + global.genouka_leftpad_offset_x, 440, -4 + global.genouka_leftpad_offset_x, 500);
                    
                    if (m_pause_area)
                    {
                        global.genouka_LevelMainPause = 1;
                        
                        with (LevelMain)
                        {
                            pausing = 1;
                        }
                        mouse_clear(mb_any);
                    }
                }
                
                var m_autoj_area = point_in_rectangle(mx, my, -80 + global.genouka_leftpad_offset_x, 520, -4 + global.genouka_leftpad_offset_x, 580);
                
                if (m_autoj_area && global.genouka_PickMode != 0)
                {
                    global.genouka_m_autoj_area = 1;
                    switch(global.genouka_PickMode)
                    {
                        case 3:
                        case 5:
                        case 6:
                        case 7:
                            with (StarShard) //星碎
                            {
                                event_perform(ev_mouse, ev_left_button); //EXTRA
                                event_perform(ev_mouse, ev_left_press);
                            }
                    }
                    switch(global.genouka_PickMode)
                    {
                        case 1:
                        case 2:
                        case 3:
                        case 7:
                            with (Item) //红石之类的
                            {
                                event_perform(ev_mouse, ev_left_button); //EXTRA
                                event_perform(ev_mouse, ev_left_press);
                            }
                    }
                    switch(global.genouka_PickMode)
                    {
                        case 2:
                        case 4:
                        case 5:
                        case 7:
                            with (ItemMoney) //钱
                            {
                                event_perform(ev_mouse, ev_left_button); //EXTRA
                                event_perform(ev_mouse, ev_left_press);
                            }
                    }
                    mouse_clear(mb_any);
                }
            }
            else if (device_mouse_check_button_released(i, mb_left))
            {
                if (global.genouka_LevelMainPause == 1)
                {
                    if(!instance_exists(PauseDialog)&&!instance_exists(MenuDialog))
                    {
                        with (LevelMain)
                        {
                            pausing = 0;
                        }
                        global.genouka_unlock_fps_after_pause = 1;
                        mouse_clear(mb_any);
                    }
                }
                global.genouka_LevelMainPause = 0;
                global.genouka_m_autoj_area = 0;
            }
        }
        
        if (should_release_keys)
        {
            keyboard_key_release(ord("D"));
            keyboard_key_release(ord("S"));
            keyboard_key_release(ord("A"));

            keyboard_key_release(ord("W"));

            keyboard_key_release(vk_delete);
            keyboard_key_release(ord("F"));
            keyboard_key_release(ord("K"));

            keyboard_key_release(ord("W"));
            keyboard_key_release(ord("Q"));
            keyboard_key_release(192); //` key
            
            keyboard_key_release(vk_up);
            keyboard_key_release(vk_down);
        }

        // if(global.genouka_unlock_fps_after_pause == 2)
        // {
        //     if(!directory_exists(working_directory + "genouka_old_pause_action/"))
        //     {
        //         game_set_speed(30, gamespeed_fps);
        //     }
        //     global.genouka_unlock_fps_after_pause = 0;
        // }
        // else if(global.genouka_unlock_fps_after_pause == 1)
        // {
        //     if(!directory_exists(working_directory + "genouka_old_pause_action/"))
        //     {
        //         game_set_speed(5, gamespeed_fps);
        //     }
        //     global.genouka_unlock_fps_after_pause = 2;
        // }
    }
}
