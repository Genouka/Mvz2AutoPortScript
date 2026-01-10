// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

framedd++;
if (device_mouse_check_button_pressed(0, mb_left))
{
    if(genouka_network_restart_required)
    {
        game_end();
        exit;
    }
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    var m_pause_area = point_in_rectangle(mx, my, 600, 500, 700, 560);
    if (m_pause_area)
    {
        if (global.genouka_network_ann_force)
        {
            show_message_async(global.genouka_network_ann_address);
            url_open(global.genouka_network_ann_address);
        }
        else
        {
            global.genouka_network_verann_ds_list_index++;
        }
    }
}