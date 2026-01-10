// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
var x_pos = window_x;
var y_pos = window_y;

draw_set_color(window_bg_color);
draw_rectangle(x_pos, y_pos, x_pos + window_width, y_pos + window_height, false);

draw_set_color(title_bar_color);
draw_rectangle(x_pos, y_pos, x_pos + window_width, y_pos + 30, false);

draw_set_color(title_text_color);
draw_set_halign(fa_center);
draw_text(x_pos + window_width/2, y_pos + 8, title_text);
draw_set_halign(fa_left); 
draw_set_color(close_button_hover ? hover_color : window_bg_color);
draw_rectangle(close_button_x, close_button_y, close_button_x + 25, close_button_y + 20, false);
draw_set_color(text_color);
draw_text(close_button_x + 8, close_button_y + 3, "X");

draw_set_color(border_color);
draw_rectangle(x_pos, y_pos, x_pos + window_width, y_pos + window_height, true);

draw_set_color(text_color);
draw_set_halign(fa_center);
draw_text(x_pos + window_width/2, y_pos + 50, message_text);
draw_set_halign(fa_left); 

var button_width = 80;
var button_height = 30;
var button_y = y_pos + window_height - 50;

draw_set_color(mouse_over_abort ? hover_color : button_bg_color);
draw_rectangle(x_pos + 50, button_y, x_pos + 50 + button_width, button_y + button_height, false);
draw_set_color(text_color);
draw_set_halign(fa_center);
draw_text(x_pos + 50 + button_width/2, button_y + 8, "关闭");
draw_set_halign(fa_left); 

draw_set_color(mouse_over_ignore ? hover_color : button_bg_color);
draw_rectangle(x_pos + 150, button_y, x_pos + 150 + button_width, button_y + button_height, false);
draw_set_color(text_color);
draw_set_halign(fa_center);
draw_text(x_pos + 150 + button_width/2, button_y + 8, "刷新");
draw_set_halign(fa_left); 

draw_set_color(button_border_color);
draw_rectangle(x_pos + 50, button_y, x_pos + 50 + button_width, button_y + button_height, true);
draw_rectangle(x_pos + 150, button_y, x_pos + 150 + button_width, button_y + button_height, true);