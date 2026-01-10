// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
pausable = 0;

message_text = "加载中...";
window_width = 600;
window_height = 400;
title_text = "排行榜";
button_text = "确定";

initialized = false;
check_message = false;

abort_button = -1;
ignore_button = -1;

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

window_x = view_x + (view_w - window_width) / 2;
window_y = view_y + (view_h - window_height) / 2;

close_button_x = window_x + window_width - 35;
close_button_y = window_y + 5;
close_button_hover = false;

mouse_over_close = false;
mouse_over_abort = false;
mouse_over_ignore = false;

depth = -10000;

title_bar_color = $6A240A;
title_text_color = c_white;
window_bg_color = c_white;
border_color = c_black;
text_color = c_black;
hover_color = $E6E6E6;
button_bg_color = c_white;
button_border_color = c_black;

ini_open("genouka_board_guid.ini");
guid = ini_read_string("m", "guid", "bbid");
if(guid == "bbid")
{
    randomise();
    guid = "guv1_" + string(random_range(2, 100));
    ini_write_string("m", "guid", guid );
}
ini_close();

url = "https://fastcom-update.genouka.top/mvz2/api/get_leaderboard.php?game_name=mvz2_" + string(global.Version) + "&user_guid=" + string(guid);
http_request_id2 = http_get(url);