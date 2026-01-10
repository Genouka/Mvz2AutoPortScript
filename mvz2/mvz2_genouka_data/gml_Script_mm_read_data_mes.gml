// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if(os_type == os_windows)
{
    return external_call(global.__mm_dll_read_data_mes, argument0);
}
else
{
    if(!variable_global_exists("genouka_mm_read_data_mes_a1"))
    {
        global.genouka_mm_read_data_mes_a1 = random(0.3);
    }
    else
    {
        global.genouka_mm_read_data_mes_a1 += random(0.1);
    }

    if(global.genouka_mm_read_data_mes_a1 > 0.6)
    {
        global.genouka_mm_read_data_mes_a1 -= random(0.6);
    }
    
    return global.genouka_mm_read_data_mes_a1;
}