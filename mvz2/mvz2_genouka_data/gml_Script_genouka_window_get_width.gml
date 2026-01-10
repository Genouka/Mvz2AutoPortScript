// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (os_type == os_android || os_type == os_ios)
{
    if (!variable_global_exists("genouka_window_width"))
    {
        global.genouka_window_width = window_get_width();
    }
    
    return global.genouka_window_width;
}
else
{
    return window_get_width();
}
