// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if(os_type != os_windows && os_type != os_macosx && os_type != os_linux && !device_mouse_check_button(1, mb_left))
{
    if (!stop && room != roomMainMap)
    {
        moving = 1;
        
        if (ox != -4)
        {
            hspeed = (mouse_x - camera_get_view_x(view_camera[0]) - ox) / 5;
            vspeed = (mouse_y - camera_get_view_y(view_camera[0]) - oy) / 5;
        }
    }
}
