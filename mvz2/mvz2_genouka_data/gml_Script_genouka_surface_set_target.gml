// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if(!variable_global_exists("genouka_surface_set_target_has_been_executed"))
{
    global.genouka_surface_set_target_has_been_executed = 0;
}

if(global.genouka_surface_set_target_has_been_executed)
{
    surface_reset_target();
    global.genouka_surface_set_target_has_been_executed = 0;
}

if(surface_exists(argument0))
{
    global.genouka_surface_set_target_has_been_executed = 1;
    surface_set_target(argument0);
}
else
{
    global.genouka_surface_set_target_has_been_executed = 0;
    if(!variable_global_exists("genouka_resource_loading_content"))
    {
        global.genouka_resource_loading_content = "";
    }
    global.genouka_resource_loading_content += "[GenoukaSurface]"+ genouka_getstackstring(3) +" surface_set_target surface to set target does not exist:" + string(argument0) + "\r";
}