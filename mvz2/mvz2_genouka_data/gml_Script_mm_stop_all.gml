// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    var list = global.__mm_dll_stream_list;
    var size = ds_list_size(list);
    
    for (var i = 0; i < size; i += 1)
    {
        mm_stop(ds_list_find_value(list, i));
    }
}
else
{
    audio_stop_all();
    var size = ds_map_size(global.__mm_genouka_isplaying);
    var key = ds_map_find_first(global.__mm_genouka_isplaying);
    
    for (var i = 0; i < size; i++)
    {
        ds_map_set(global.__mm_genouka_position_list, key, 0);
        ds_map_set(global.__mm_genouka_isplaying, key, 0);
        audio_sound_set_track_position(key, 0);
        key = ds_map_find_next(global.__mm_genouka_isplaying, key);
    }
}
