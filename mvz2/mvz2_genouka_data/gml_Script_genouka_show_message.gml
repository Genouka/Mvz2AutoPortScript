// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

global.genouka_window_set_size_noused_version_script_v2 = 1;
if (os_type != os_windows)
{
    show_message_async(argument0);
}
else
{
    show_message(argument0, 0);
}
