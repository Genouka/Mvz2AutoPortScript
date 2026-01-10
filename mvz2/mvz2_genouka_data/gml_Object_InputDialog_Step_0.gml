// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
var in_box = mouse_x > (x + 24) && mouse_x < (x + 232) && mouse_y > (y + 65) && mouse_y < (y + 83);

if (mouse_check_button_pressed(mb_left))
{
    inputing = in_box;
    show_end_line_timer = 0;
    
    if (os_type == os_ios)
    {
        keyboard_virtual_show(0, 0, 0, 0);
    }
    else if (os_type == os_android)
    {
        keyboard_virtual_show(1, 0, 0, 0);
    }
}

show_end_line_timer = (show_end_line_timer + 1) % 30;

if (inputing)
{
    input = keyboard_string;
    //inputing_index += 1;
    
    if (keyboard_lastkey == vk_backspace)
    {
        if (string_length(input) > 0)
        {
            input = string_copy(input, 0, string_length(input) - 1);
        }
        
        show_end_line_timer = 0;
        keyboard_lastkey = vk_nokey;
    }
}

// while (string_width(input) > 80)
// {
//     input = string_copy(input, 0, string_length(input) - 1);
// }

inputing_index = string_length(input) + 1;
//inputing_index = max(1, min(string_length(input) + 1, inputing_index));
