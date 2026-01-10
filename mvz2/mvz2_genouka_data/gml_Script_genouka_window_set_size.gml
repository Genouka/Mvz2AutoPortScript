// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

global.genouka_window_set_size_noused_version_script_v2 = 1;
if (os_type == os_android || os_type == os_ios)
{
    if(os_is_paused()){
        exit;
    }
    var g_arg0 = floor(argument0);
    var g_arg1 = floor(argument1);
    var t0_x = device_mouse_raw_x(0);
    var t1_x = device_mouse_raw_x(1);
    var t0_p = device_mouse_check_button(0, mb_left);
    var t1_p = device_mouse_check_button(1, mb_left);
    var t2_p = device_mouse_check_button(2, mb_left);
    var real_to_change_size = 1;
    
    if(variable_global_exists("genouka_window_width"))
    {
        if(global.genouka_window_width == g_arg0 && global.genouka_window_height == g_arg1)
        {
            real_to_change_size = 0;
        }
    }
    
    global.genouka_window_width = g_arg0;
    global.genouka_window_height = g_arg1;
    
    if (g_arg0 <= 0 || g_arg1 <= 0)
    {
        g_arg0 = abs(g_arg0);
        g_arg1 = abs(g_arg1);
    }

    if (g_arg0 == 0)
    {
        g_arg0 = 1;
    }

    if (g_arg1 == 0)
    {
        g_arg1 = 1;
    }

    if (t0_p && t1_p)
    {
        if (t2_p)
        {
            global.genouka_window_set_size_first_two = 0;
            global.genouka_window_set_size_touch_dist_old = 9999;
        }
        else
        {
            global.genouka_window_set_size_touch_dist_cur = abs(t0_x - t1_x);
            
            if (variable_global_exists("genouka_window_set_size_first_two"))
            {
                if (global.genouka_window_set_size_first_two)
                {
                    global.genouka_window_set_size_touch_dist_old = global.genouka_window_set_size_touch_dist_cur;
                    global.genouka_window_set_size_first_two = 0;
                }
                else
                {
                    var dc = abs(global.genouka_window_set_size_touch_dist_cur - global.genouka_window_set_size_touch_dist_old);
                    
                    if (abs(global.genouka_window_set_size_touch_dist_cur - g_arg0) < 200)
                    {
                        g_arg0 = (g_arg0 + max(1, global.genouka_window_set_size_touch_dist_cur)) div 2;
                        global.genouka_window_width = g_arg0;
                    }
                    else
                    {
                        global.genouka_window_set_size_first_two = 1;
                    }
                }
            }
            else
            {
                global.genouka_window_set_size_first_two = 1;
            }
        }
    }
    else
    {
        global.genouka_window_set_size_first_two = 1;
    }
    
    if(real_to_change_size)
    {
        if (surface_exists(application_surface))
        {
            surface_resize(application_surface, g_arg0, g_arg1);
        }
        
        display_set_gui_size(g_arg0, g_arg1);
        window_set_size(argument0, argument1);
    }
}
else
{
    window_set_size(argument0, argument1);
}
