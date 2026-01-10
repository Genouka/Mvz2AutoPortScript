// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    return external_call(global.__mm_dll_pause, argument0);
}
else
{
    var d0 = argument0;
    if(d0 - 100000 > 0)
    {
        d0 = d0 - 100000;
    }
    ds_map_set(global.__mm_genouka_isplaying, d0, 2);
    return audio_pause_sound(d0);
}
