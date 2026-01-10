// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    return external_call(global.__mm_dll_set_pitch, argument0, argument1);
}
else
{
    //TODO: implement for other platforms
    return 0;
}