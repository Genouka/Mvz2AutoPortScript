// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if((os_type == os_android || os_type == os_ios || global.genouka_force_enable_genouka_resource_loading_content == 1) && global.genouka_force_enable_genouka_resource_loading_content != -1)
{
    draw_set_font(fntArial12);
    draw_set_color(c_red);
    
    if (variable_global_exists("genouka_resource_loading_content"))
    {
        if(!is_undefined(global.genouka_resource_loading_content))
        {
            // if(global.genouka_resource_loading_content == "")
            // {
            //     exit;
            // }
            draw_text_transformed(-60, 0, string(global.genouka_resource_loading_content) , 1, 0.8, 0);
            global.genouka_resource_loading_content = "";
        }
    }
}