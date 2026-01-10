// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if(!variable_global_exists("__genouka__debug_mode_inner"))
{
    if (directory_exists(working_directory + "genouka_enable_debug_mode/"))
    {
        global.__genouka__debug_mode_inner = 1;
        global.Debug = 1;
    }
    else if (directory_exists(working_directory + "genouka_disable_debug_mode/"))
    {
        global.__genouka__debug_mode_inner = 0;
        global.Debug = 0;
    }
    else
    {
        global.__genouka__debug_mode_inner = debug_mode;
    }
}
return global.__genouka__debug_mode_inner;