// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
mouse_over_close = (mouse_x >= close_button_x && mouse_x <= close_button_x + 25 && 
                   mouse_y >= close_button_y && mouse_y <= close_button_y + 20);
                   
mouse_over_enter = (mouse_x >= window_x + 50 && mouse_x <= window_x + 130 && 
                   mouse_y >= window_y + window_height - 50 && mouse_y <= window_y + window_height - 20);

mouse_over_refresh = (mouse_x >= window_x + 150 && mouse_x <= window_x + 230 && 
                    mouse_y >= window_y + window_height - 50 && mouse_y <= window_y + window_height - 20);

if (mouse_check_button_pressed(mb_left)) {
    if (mouse_over_close) {
        instance_destroy();
    } else if (mouse_over_enter) {
        instance_destroy();
    } else if (mouse_over_refresh) {
        http_request_id2 = http_get(url);
        message_text = "加载中...";
    }
}

if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter)) {
    instance_destroy();
}