// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    ds_list_destroy(global.__mm_dll_stream_list);
    external_call(global.__mm_dll_free);
    external_free(global.__mm_dll_path);
}
else
{
    ds_list_destroy(global.__mm_dll_stream_list);
    ds_map_destroy(global.__mm_genouka_position_list);
    ds_map_destroy(global.__mm_genouka_loop_position_list);
    ds_map_destroy(global.__mm_genouka_loop_position_end_list);
    ds_map_destroy(global.__mm_genouka_isplaying);
    ds_map_destroy(global.__mm_genouka_stream_index_list);
    ds_map_destroy(global.__mm_genouka_stream_reserveindex_list);
}

