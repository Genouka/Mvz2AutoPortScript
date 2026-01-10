// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (variable_global_exists("genouka_network_verann_ds_list"))
{
    if (global.genouka_network_verann_ds_list != -1)
    {
        if(!is_undefined(global.genouka_network_verann_ds_list))
        {
            var size = ds_list_size(global.genouka_network_verann_ds_list);
            if (size > 0)
            {
                if (global.genouka_network_verann_ds_list_index >= size)
                {
                    instance_destroy();
                    instance_activate_all();
                    exit;
                    //room_goto(roomTitle);
                }
                else
                {
                    draw_clear(c_dkgray);
                    draw_set_color(c_silver);
                    draw_roundrect_ext(600, 500, 700, 560, 5, 5, true);
                    draw_set_color(c_white);
                    draw_set_font(fntArial12);
                    draw_text(620, 520, "确认\rOK");
                    
                    var map = ds_list_find_value(global.genouka_network_verann_ds_list, global.genouka_network_verann_ds_list_index);

                    if (!is_undefined(map))
                    {
                        global.genouka_network_ann_content = ds_map_find_value(map, "content");
                        global.genouka_network_ann_address = ds_map_find_value(map, "address");
                        global.genouka_network_ann_force = ds_map_find_value(map, "force");
                        global.genouka_network_ann_created_at = ds_map_find_value(map, "created_at");
                        global.genouka_network_ann_username = ds_map_find_value(map, "username");
                        draw_set_font(fntArial12);
                        draw_set_color(c_white);
                        
                        if (variable_global_exists("genouka_network_ann_content") && !is_undefined(global.genouka_network_ann_content))
                        {
                            draw_text(0, 80, global.genouka_network_ann_content);
                        }
                        
                        if (variable_global_exists("genouka_network_ann_username") && !is_undefined(global.genouka_network_ann_username))
                        {
                            draw_text(450, 340, global.genouka_network_ann_username);
                        }
                        
                        if (variable_global_exists("genouka_network_ann_created_at") && !is_undefined(global.genouka_network_ann_created_at))
                        {
                            draw_text(450, 360, global.genouka_network_ann_created_at);
                        }
                    }

                    exit;
                }
            }
        }
    }
}
if(os_type == os_android || os_type == os_ios)
{
    draw_clear(c_black);
    draw_set_font(fntArial12);
    if(framedd % 6 == 0)
    {
        genouka_random_color = choose(c_fuchsia,c_orange,c_aqua,c_gray,c_maroon);
    }
    if(framedd % 120 == 3)
    {
        global.genouka_random_hint = choose(
            "多次点击关卡内的切换虚拟键按钮可以弹出真的软键盘。\rClicking the toggle virtual key button in levels multiple times can pop up the real keyboard.",
            "你可以通过创建名为'genouka_os_type_set_to_X/'的文件夹来强制设置操作系统类型，X代表数字0-5。\rYou can force set the OS type by creating a folder named 'genouka_os_type_set_to_X/', where X is a number from 0 to 5.",
            "2月30日来到了吗？\rHas February 30th arrived yet?",
            "每个关卡的虚拟键布局是独立记忆的！\rThe virtual key layouts for each level are memorized independently!",
            "如果你累了，不妨休息一会儿。\rIf you're tired, take a break.",
            "秋冥喜欢mvz2 sukisuki~\rQiuming loves mvz2 sukisuki~",
            "咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga\r咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga咕咕嘎嘎gugugaga",
            "任何作者都痛恨自己的作品被别人糟蹋。\rEvery author despises their work being trampled by others.",
            "人有心。\rPeople have hearts.\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rReal?",
            "我有一个很准的预言，那就是你的出生日期一定晚于1800年。\rI have a very accurate predict, that is, your date of birth must be later than 1800.",
            "存档目录下有没有 genouka_ciallo 这个文件夹？试试新建一个？\rIs there a folder called genouka_ciallo in the archive directory? Try creating a new one?",
            "存档目录下有没有 genouka_0d000721 这个文件夹？试试新建一个？\rIs there a folder called genouka_0d000721 in the archive directory? Try creating a new one?",
            "存档目录下有没有 genouka 这个文件夹？试试新建一个？\rIs there a folder called genouka in the archive directory? Try creating a new one?"
        );
    }
    draw_set_color(genouka_random_color);
    //draw_text(50, 50, "加载中...\rLoading...");
    draw_text(50 + (((framedd % 400)>200)?(200-(framedd % 200)):((framedd % 200))), 20 + (((framedd % 30)>15)?(30-(framedd % 30)):((framedd % 30))), "你知道吗？\rDid you know?");
    // switch(global.genouka_random_hint)
    // {
    //     case 0:
    //         draw_text(50, 100, "多次点击关卡内的切换虚拟键按钮可以弹出真的软键盘。\rClicking the toggle virtual key button in levels multiple times can pop up the real keyboard.");
    //         break;
    //     case 1:
    //         draw_text(50, 100, "今天不是星期八。\rToday is not Funday.");
    //         break;
    //     case 2:
    //         draw_text(50, 100, "虚拟键是随着关卡有记忆的！\rVirtual keys have memory with levels!");
    //         break;
    //     case 3:
    //         draw_text(50, 100, "你可以在游戏目录下创建名为'genouka_debug_mode/'的文件夹来启用调试模式。\rYou can enable debug mode by creating a folder named 'genouka_debug_mode/' in the game directory.");
    //         break;
    //     case 4:
    //         draw_text(50, 100, "如果你累了，不妨放下手机休息一会儿。\rIf you are tired, you might want to put down your phone and take a break.");
    //         break;
    //     case 5:
    //         draw_text(50, 100, "任何作者都不喜欢自己的作品被别人污蔑。\rNo author likes their work being slandered by others.");
    //         break;
    // }
    draw_set_color(c_white);
    draw_text(50, 100, global.genouka_random_hint);
}
else if(os_type == os_windows)
{
    draw_clear(c_black);
    draw_set_font(fntArial12);
    draw_set_color(choose(c_white,c_ltgray,c_dkgray,c_gray,c_silver));
    var idenchar="-";
    switch(framedd % 4)
    {
        case 0:
            idenchar="|";
            break;
        case 1:
            idenchar="/";
            break;
        case 2:
            idenchar="—";
            break;
        case 3:
            idenchar="\\";
            break;
    }
    draw_text(50, 50, "加载中..."+idenchar+"\rLoading..."+idenchar);
}