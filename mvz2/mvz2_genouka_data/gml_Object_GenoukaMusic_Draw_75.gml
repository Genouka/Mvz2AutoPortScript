// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

//Draw GUI End

if (os_type == os_android || os_type == os_ios)
{
    draw_set_color(c_aqua);
    draw_set_font(fntArial12);
    draw_text_transformed(802 + global.genouka_rightpad_offset_x, 5, "QiumingScript\rVersion 105\r26-01-08\r"+string(global.Version),1.2,1.2,0);
}

if(global.genouka_adjust_padsetting <= 30 && (os_type == os_android || os_type == os_ios))
{
    draw_set_color(c_gray);
    draw_roundrect_ext(-80, 80, -4, 140, 5, 5, global.genouka_adjust_padsetting <= 0);
    draw_set_color(c_aqua);
    draw_set_font(fntArial12);
    draw_text_transformed(-72, 82, "按键设定\rSet VKey", 1, 1, 0);
}
else if(global.genouka_adjust_padsetting == 31)
{
    //拷贝当前显示内容的副本
    if (!surface_exists(genouka_keep_surface)){
        genouka_keep_surface = surface_create(800, 600);
    }
    var w = surface_get_width(genouka_keep_surface);
    var h = surface_get_height(genouka_keep_surface);
    surface_resize(genouka_keep_surface, w, h);
    surface_copy(genouka_keep_surface, x, y, application_surface);
    exit;
}
else if(global.genouka_adjust_padsetting == 32)
{
    //全黑
    //draw_set_color(c_black);
    //draw_rectangle(0, 0, 800, 600, 0);

    //显示缓存的表面
    if (surface_exists(genouka_keep_surface)){
        draw_surface(genouka_keep_surface, 0, 0);
    }
    else
    {
        draw_set_color(c_black);
        draw_rectangle(0, 0, 800, 600, 0);
    }

    //预览按键
    draw_set_color(c_gray);
    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 220, 876 + global.genouka_rightpad_offset_x, 280, 5, 5, true);
    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 290, 876 + global.genouka_rightpad_offset_x, 360, 5, 5, true);
    draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60, 5, 5, 1);
    draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60, 5, 5, 1);
    draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 440, -4 + global.genouka_leftpad_offset_x, 500, 5, 5, !global.genouka_LevelMainPause);
    draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 520, -4 + global.genouka_leftpad_offset_x, 580, 5, 5, !global.genouka_m_autoj_area);
    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 360, 876 + global.genouka_rightpad_offset_x, 420, 5, 5, !keyboard_check(ord("W")));
    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 440, 876 + global.genouka_rightpad_offset_x, 500, 5, 5, !keyboard_check(ord("Q")));
    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 520, 876 + global.genouka_rightpad_offset_x, 580, 5, 5, !keyboard_check(192));
    draw_roundrect_ext(-64 + global.genouka_leftpad_offset_x, 360, -4 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("D")));
    draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 360, -64 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("S")));
    draw_roundrect_ext(-184 + global.genouka_leftpad_offset_x, 360, -124 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("A")));
    draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 280, -64 + global.genouka_leftpad_offset_x, 340, 5, 5, !keyboard_check(ord("W")));
    draw_roundrect_ext(-184 + global.genouka_leftpad_offset_x, 200, -124 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(vk_delete));
    draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 200, -64 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(ord("F")));
    draw_roundrect_ext(-64 + global.genouka_leftpad_offset_x, 200, -4 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(ord("K")));
    draw_roundrect_ext(-184 +  global.genouka_leftpad_offset_x, 440, -124 + global.genouka_leftpad_offset_x, 500, 5, 5, !keyboard_check(vk_up));
    draw_roundrect_ext(-184 +  global.genouka_leftpad_offset_x, 500, -124 + global.genouka_leftpad_offset_x, 560, 5, 5, !keyboard_check(vk_down));
    draw_set_color(c_aqua);

    //设置按键
    draw_roundrect_ext(-80, 80, -4, 140, 5, 5, 1);

    draw_roundrect_ext(0, 20, 80, 80, 5, 5, 1);
    draw_roundrect_ext(90, 20, 170, 80, 5, 5, 1);

    draw_roundrect_ext(0, 100, 80, 160, 5, 5, 1);
    draw_roundrect_ext(90, 100, 170, 160, 5, 5, 1);

    draw_set_color(c_aqua);
    draw_set_font(fntArial12);
    draw_text(-72, 86, "确认设定\rApply");

    draw_text(6, 0, "左虚拟键 Left Pad "+string(global.genouka_leftpad_offset_x));
    draw_text_transformed(6, 26, "<-", 2, 2, 0);
    draw_text_transformed(96, 26, "->", 2, 2, 0);

    draw_text(6, 80, "右虚拟键 Right Pad "+string(global.genouka_rightpad_offset_x));
    draw_text_transformed(6, 106, "<-", 2, 2, 0);
    draw_text_transformed(96, 106, "->", 2, 2, 0);

    draw_set_color(c_red);
    draw_set_font(fntArial12);
    draw_text(660, 10, "虚拟键设定模式");
    exit;
}

if (os_type == os_android || os_type == os_ios)
{
    if (genouka_isinlevel())
    {
        draw_set_color(c_gray);
        draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60, 5, 5, 1);
        if(global.genouka_ShowVkeyInLevelMain>0)
        {
            draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 440, -4 + global.genouka_leftpad_offset_x, 500, 5, 5, !global.genouka_LevelMainPause);
            if(global.genouka_PickMode != 0)
            {
                draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 520, -4 + global.genouka_leftpad_offset_x, 580, 5, 5, !global.genouka_m_autoj_area);
            }
            if(global.genouka_ShowVkeyInLevelMain>1)
            {
                draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 360, 876 + global.genouka_rightpad_offset_x, 420, 5, 5, !keyboard_check(ord("W")));
                draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 440, 876 + global.genouka_rightpad_offset_x, 500, 5, 5, !keyboard_check(ord("Q")));
                draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 520, 876 + global.genouka_rightpad_offset_x, 580, 5, 5, !keyboard_check(192)); //` key
            }

            if(global.genouka_ShowVkeyInLevelMain>2)
            {
                draw_roundrect_ext(-64 + global.genouka_leftpad_offset_x, 360, -4 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("D")));
                draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 360, -64 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("S")));
                draw_roundrect_ext(-184 + global.genouka_leftpad_offset_x, 360, -124 + global.genouka_leftpad_offset_x, 420, 5, 5, !keyboard_check(ord("A")));

                draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 280, -64 + global.genouka_leftpad_offset_x, 340, 5, 5, !keyboard_check(ord("W")));

                draw_roundrect_ext(-184 + global.genouka_leftpad_offset_x, 200, -124 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(vk_delete));
                draw_roundrect_ext(-124 + global.genouka_leftpad_offset_x, 200, -64 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(ord("F")));
                draw_roundrect_ext(-64 + global.genouka_leftpad_offset_x, 200, -4 + global.genouka_leftpad_offset_x, 260, 5, 5, !keyboard_check(ord("K")));

                draw_roundrect_ext(-184 +  global.genouka_leftpad_offset_x, 440, -124 + global.genouka_leftpad_offset_x, 500, 5, 5, !keyboard_check(vk_up));
                draw_roundrect_ext(-184 +  global.genouka_leftpad_offset_x, 500, -124 + global.genouka_leftpad_offset_x, 560, 5, 5, !keyboard_check(vk_down));
            }
        }

        draw_set_color(c_aqua);
        draw_set_font(fntArial12);

        if(global.genouka_ShowVkeyInLevelMain==3)
        {
            draw_text(-74 + global.genouka_leftpad_offset_x, 6, "全\rVKey:Full");
        }
        else if(global.genouka_ShowVkeyInLevelMain==2)
        {
            draw_text(-74 + global.genouka_leftpad_offset_x, 6, "多\rVKey:More");
        }
        else if(global.genouka_ShowVkeyInLevelMain==1)
        {
            draw_text(-74 + global.genouka_leftpad_offset_x, 6, "少\rVKey:Less");
        }
        else if(global.genouka_ShowVkeyInLevelMain==0)
        {
            draw_text(-74 + global.genouka_leftpad_offset_x, 6, "关\rVKey:Off");
        }

        if(global.genouka_ShowVkeyInLevelMain>0)
        {
            draw_text(-74 + global.genouka_leftpad_offset_x, 446, "按住时停\rHold to\rpause");
            if(global.genouka_PickMode!=0)
            {
                draw_text_transformed(-74 + global.genouka_leftpad_offset_x, 526, "拾取\rPick", 0.8, 1, 0);
            }
            if(global.genouka_ShowVkeyInLevelMain>1)
            {
                draw_text(806 + global.genouka_rightpad_offset_x, 366, "星碎\rStarshard");
                draw_text(806 + global.genouka_rightpad_offset_x, 446, "铁镐\rPickaxe");
                draw_text(806 + global.genouka_rightpad_offset_x, 526, "驱动\rGear");
            }
            if(global.genouka_ShowVkeyInLevelMain>2)
            {
                //下排
                draw_text_transformed(-64 + global.genouka_leftpad_offset_x, 360, "D", 1.4, 1.4, 0);
                draw_text_transformed(-124 + global.genouka_leftpad_offset_x, 360, "S", 1.4, 1.4, 0);
                draw_text_transformed(-184 + global.genouka_leftpad_offset_x, 360, "A", 1.4, 1.4, 0);
                //中排
                draw_text_transformed(-124 + global.genouka_leftpad_offset_x, 280, "W", 1.4, 1.4, 0);
                //上排
                draw_text_transformed(-184 + global.genouka_leftpad_offset_x, 200, "DELETE", 1.1, 1.1, 0);
                draw_text_transformed(-124 + global.genouka_leftpad_offset_x, 200, "F", 1.4, 1.4, 0);
                draw_text_transformed(-64 + global.genouka_leftpad_offset_x, 200, "K", 1.4, 1.4, 0);
                //左下
                draw_text_transformed(-184 +  global.genouka_leftpad_offset_x, 446, "上\rUp", 1.2, 1.2, 0);
                draw_text_transformed(-184 +  global.genouka_leftpad_offset_x, 506, "下\rDown", 1.2, 1.2, 0);
            }
        }
    }

    if (room == roomMainMenu || genouka_isinlevel())
    {
        // draw_set_color(c_gray);

        // draw_roundrect_ext(800, 440, 876, 500, 5, 5, !keyboard_check(ord("'")));
        // draw_roundrect_ext(800, 520, 876, 580, 5, 5, !keyboard_check(ord("=")));

        // draw_set_color(c_aqua);
        // draw_set_font(fntArial12);

        // draw_text(806, 466, "'");
        // draw_text(806, 546, "=");

        draw_set_color(c_gray);

        draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 150, 876 + global.genouka_rightpad_offset_x, 210, 5, 5, true);

        draw_set_color(c_aqua);
        draw_set_font(fntArial12);
        if(!global.genouka_VkeyTwoCLickTurnToRight)
        {
            draw_text_transformed(806 + global.genouka_rightpad_offset_x, 156, "双击右键:关\rDBtoRClick:\rOFF" ,0.6, 1, 0);
        }
        else
        {
            draw_text_transformed(806 + global.genouka_rightpad_offset_x, 156, "双击右键:开\rDBtoRClick:\rON" ,0.6, 1, 0);
        }
    }
    if (room == roomMainMenu || instance_exists(Map))
    {
        // draw_set_color(c_gray);

        // draw_roundrect_ext(800, 440, 876, 500, 5, 5, !keyboard_check(ord("'")));
        // draw_roundrect_ext(800, 520, 876, 580, 5, 5, !keyboard_check(ord("=")));

        // draw_set_color(c_aqua);
        // draw_set_font(fntArial12);

        // draw_text(806, 466, "'");
        // draw_text(806, 546, "=");

        draw_set_color(c_gray);

        
        draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 290, 876 + global.genouka_rightpad_offset_x, 350, 5, 5, true);

        draw_roundrect_ext(-80 + global.genouka_leftpad_offset_x, 0, -4 + global.genouka_leftpad_offset_x, 60, 5, 5, 1);

        draw_set_color(c_aqua);
        draw_set_font(fntArial12);

        if(global.genouka_DebugMode==1)
        {
            draw_text_transformed(806 + global.genouka_rightpad_offset_x, 296, "调试:浮层\rDebug:Layer", 0.8, 1, 0);
        }
        else if(global.genouka_DebugMode==2)
        {
            draw_text_transformed(806 + global.genouka_rightpad_offset_x, 296, "调试:游戏\rDebug:Game", 0.8, 1, 0);
        }
        else if(global.genouka_DebugMode==3)
        {
            draw_text_transformed(806 + global.genouka_rightpad_offset_x, 296, "调试:浮层+游戏\rDebug:\rLayer+Game", 0.5, 1, 0);
        }
        else
        {
            draw_text(806 + global.genouka_rightpad_offset_x, 296, "调试:关\rDebug:OFF");
        }

        draw_text(-74 + global.genouka_leftpad_offset_x, 6, "召唤键盘\rKeyboard");
    }
    else
    {
        draw_set_color(c_gray);
        draw_set_font(fntArial12);
    }

    draw_set_color(c_gray);

    draw_roundrect_ext(800 + global.genouka_rightpad_offset_x, 220, 876 + global.genouka_rightpad_offset_x, 280, 5, 5, true);

    draw_set_color(c_aqua);
    draw_set_font(fntArial12);

    if(global.genouka_PickMode==0)
    {
        draw_text_transformed(806 + global.genouka_rightpad_offset_x, 226, "拾取:关\rPick Mode:\rOFF", 0.8, 1, 0);
    }
    else if(global.genouka_PickMode==1)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾取:红石\rP.M.:\rRedstone");
    }
    else if(global.genouka_PickMode==2)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾:红+钱\rP.M.:\rR+Money");
    }
    else if(global.genouka_PickMode==3)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾:红+碎\rP.M.:\rR+S");
    }
    else if(global.genouka_PickMode==4)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾取:钱\rP.M.:\rMoney");
    }
    else if(global.genouka_PickMode==5)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾:钱+碎\rP.M.:\rM+S");
    }
    else if(global.genouka_PickMode==6)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾取:星碎\rP.M.:\rStarshard");
    }
    else if(global.genouka_PickMode==7)
    {
        draw_text(806 + global.genouka_rightpad_offset_x, 226, "拾:红+钱+碎\rP.M.:\rR+M+S");
    }

    // if (room == roomTitle || room == roomMainMenu || instance_exists(Map))
    // {
    //     draw_set_color(c_teal);
    //     draw_set_font(fntArial12);
    //     draw_text(806 + global.genouka_rightpad_offset_x, 10, "秋冥移植脚本\rQiuming Port Stript\rVersion 100\r2025-11-22");
    // }

}

if (global.genouka_debuggui)
{
    draw_set_font(fntArial12);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(0, 0, "Qiuming Debug Layer3");
    draw_text(0, 20, "FPS:" + string(game_get_speed(gamespeed_fps)) + " InsCount:" + string(instance_count) + " " + room_get_name(room));
    
    if (global.genouka_os_type != 0)
    {
        draw_set_font(fntArial12);
        draw_text(0, 60, string(global.genouka_music_things));
    }
}