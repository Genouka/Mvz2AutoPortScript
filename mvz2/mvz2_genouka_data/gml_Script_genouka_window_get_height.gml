// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (os_type == os_android || os_type == os_ios)
{
    if (!variable_global_exists("genouka_window_height"))
    {
        global.genouka_window_height = window_get_height();
    }
    
    return global.genouka_window_height;
}
else
{
    return window_get_height();
}
