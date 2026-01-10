// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (argument0 > 0)
{
    if (global.genouka_os_type != 0)
    {
        mm_stop(argument0);
        global.music = -4;
        exit;
    }
    
    if (argument0 > 100000)
    {
        mm_stop(argument0);
        global.music = -4;
    }
    else
    {
        audio_stop_sound(argument0);
        global.music = -4;
    }
}
