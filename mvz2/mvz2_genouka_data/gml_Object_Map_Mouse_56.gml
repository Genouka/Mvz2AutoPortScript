// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if(os_type != os_windows && os_type != os_macosx && os_type != os_linux && !device_mouse_check_button(1, mb_left))
{
    if (!stop && room != roomMainMap)
    {
        moving = 0;
        hspeed = 0;
        vspeed = 0;
        ox = -4;
        oy = -4;
    }
}