// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

// This file is used to initialize Genouka Network related variables and make a request to get announcements and version information.

genouka_random_color = choose(c_fuchsia,c_orange,c_aqua,c_gray,c_maroon);
global.genouka_random_hint = "";

framedd = 0;
button_created = 0;
pausable = 0;
genouka_network_restart_required = 0;

if (!os_is_network_connected())
{
    show_message_async("请连接到互联网后重启游戏，否则游戏将不会运行。\r\n\r\nPlease connect to the Internet and restart the game, otherwise the game will not run.");
    genouka_network_restart_required = 1;
    instance_deactivate_all(true);
    exit;
}
var preurl = "https://fastcom-update.genouka.top/mvz2_script/";
var url = preurl + "api.php?type=rules&version=" + string(global.Version) + "&ostype=" + string(os_type) + "&nocache=" + string(random(1000));
http_request_id2 = http_get(url);
global.genouka_network_verann_ds_list_index = 0;

if (!variable_global_exists("genouka_network_ann_ds_list"))
{
    global.genouka_network_ann_ds_list = ds_list_create();
    ds_list_clear(global.genouka_network_ann_ds_list);
}
else if (global.genouka_network_ann_ds_list == -1)
{
    global.genouka_network_ann_ds_list = ds_list_create();
    ds_list_clear(global.genouka_network_ann_ds_list);
}

if (!variable_global_exists("genouka_network_verann_ds_list"))
{
    global.genouka_network_verann_ds_list = ds_list_create();
    ds_list_clear(global.genouka_network_ann_ds_list);
}
else if (global.genouka_network_ann_ds_list == -1)
{
    global.genouka_network_verann_ds_list = ds_list_create();
    ds_list_clear(global.genouka_network_verann_ds_list);
}