// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

// PreDraw Event
if (os_type == os_android || os_type == os_ios)
{
    if(global.genouka_disable_draw_set_clear!=1)
    {
        draw_clear(c_black);
    }
}