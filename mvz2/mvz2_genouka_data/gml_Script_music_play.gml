// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (argument0 > 0)
{
    if (global.genouka_os_type != 0)
    {
        if (mm_get_active(argument0) == 0)
        {
            music_stop(global.music);
            mm_play(argument0);
        }
        
        global.music = argument0;
        exit;
    }
    
    if (argument0 > 100000)
    {
        if (mm_get_active(argument0) == 0)
        {
            music_stop(global.music);
            mm_play(argument0);
        }
    }
    else if (!audio_is_playing(argument0))
    {
        music_stop(global.music);
        audio_play_sound(argument0, 10, true);
    }
    
    global.music = argument0;
}
