// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if(os_type == os_android || os_type == os_ios)
{
    //这里还没有验证是否有效
    var time1 = get_timer();
    with (Bullet)
    {
        if(!variable_instance_exists(id, "genouka_delta_frame"))
        {
            genouka_delta_frame = get_timer();
        }
        if((time1 - genouka_delta_frame) > (1000000 * 8)) // 每8秒
        {
            genouka_delta_frame = get_timer();
            if(global.genouka_adjust_padsetting < 30 && global.genouka_LevelMainPause == 0)
            {
                if(variable_instance_exists(id, "genouka_dcx"))
                {
                    if(abs(x - genouka_dcx) < 2)
                    {
                        instance_destroy();
                    }
                }
                else
                {
                    if(xspeed == 0)
                    {
                        instance_destroy();
                    }
                    else
                    {
                        genouka_dcx = x;
                    }
                }            
            }
        }
    }
}
if(!variable_global_exists("genouka_empty_room_entering_1"))
{
    if(room == roomTitle)
    {
        global.genouka_empty_room_entering_1 = true;
        instance_deactivate_all(true);
        instance_activate_object(objectGenoukaNotes);
    }
}

if (auto_aspect_meinit == 3)
{
    if(!directory_exists(working_directory + "genouka_disable_auto_aspect/"))
    {
        if(directory_exists(working_directory + "genouka_hd_aspect/"))
        {
            global.genouka_leftpad_offset_x =  250;
            global.genouka_rightpad_offset_x = -150;
        }
    }
}
if(auto_aspect_meinit <= 3)
{
    auto_aspect_meinit += 1;
}