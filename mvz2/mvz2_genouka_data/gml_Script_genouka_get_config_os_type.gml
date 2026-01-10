// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if(variable_global_exists("genouka_VkeyTwoCLickTurnToRight"))
{
    device_mouse_dbclick_enable(global.genouka_VkeyTwoCLickTurnToRight);
}
else
{
    device_mouse_dbclick_enable(false);
}

if (directory_exists(working_directory + "genouka_os_type_set_to_4/"))
{
    return 4;
}
else if (directory_exists(working_directory + "genouka_os_type_set_to_0/"))
{
    return 0;
}
else if (directory_exists(working_directory + "genouka_os_type_set_to_1/"))
{
    return 1;
}
else if (directory_exists(working_directory + "genouka_os_type_set_to_2/"))
{
    return 2;
}
else if (directory_exists(working_directory + "genouka_os_type_set_to_5/"))
{
    return 5;
}

return os_type;
