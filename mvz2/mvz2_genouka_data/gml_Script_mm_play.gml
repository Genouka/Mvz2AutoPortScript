// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    music_unlock(argument0);
    return external_call(global.__mm_dll_play, argument0);
}
else
{
    var d0 = argument0;
    if(d0 - 100000 > 0)
    {
        d0 = d0 - 100000;
    }
    music_unlock(d0);
    
    if (ds_map_find_value(global.__mm_genouka_isplaying, d0) == 0)
    {
        ds_map_set(global.__mm_genouka_position_list, d0, 0);
    }
    
    ds_map_set(global.__mm_genouka_isplaying, d0, 1);
    
    if (d0 == global.mscMinigame2_)
    {
        return audio_play_sound(d0, 10, false);
    }
    else
    {
        return audio_play_sound(d0, 10, true);
    }
}
