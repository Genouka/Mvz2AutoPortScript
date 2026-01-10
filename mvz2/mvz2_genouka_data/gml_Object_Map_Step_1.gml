// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if (!stop && room != roomMainMap)
{
    if (gesture_get_pinch_angle_towards() != 45)
    {
        gesture_pinch_angle_towards(45);
    }

    if (gesture_get_pinch_angle_away() != 45)
    {
        gesture_pinch_angle_away(45);
    }

    if (gesture_get_pinch_distance() != 0.1)
    {
        gesture_pinch_distance(0.1);
    }
    var t0_x = device_mouse_x(0);
    var t0_y = device_mouse_y(0);
    var t1_x = device_mouse_x(1);
    var t1_y = device_mouse_y(1);
    var t0_p = device_mouse_check_button(0, mb_left);
    var t1_p = device_mouse_check_button(1, mb_left);
    
    if (t0_p && t1_p)
    {
        touch_dist_cur = point_distance(t0_x, t0_y, t1_x, t1_y);
        
        if (first_two)
        {
            touch_dist_old = touch_dist_cur;
            first_two = 0;
        }
        else
        {
            var ratio = touch_dist_cur / touch_dist_old;
            zoom_current *= ratio;
            zoom_current = clamp(zoom_current, zoom_min, zoom_max);
            touch_dist_old = touch_dist_cur;
            global.view_xscale = zoom_current;
            global.view_yscale = zoom_current;
            camera_set_view_size(view_camera[0], global.view_xscale * global.ResolutionWidth, global.view_yscale * global.ResolutionHeight);
        }
        mouse_clear(mb_any);
    }
    else
    {
        first_two = 1;
    }
}