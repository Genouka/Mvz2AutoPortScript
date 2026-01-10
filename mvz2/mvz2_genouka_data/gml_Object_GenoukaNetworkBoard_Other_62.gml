// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
if (ds_map_find_value(async_load, "id") == http_request_id2)
{
    if (ds_map_find_value(async_load, "status") != 0)
    {
        if (ds_map_find_value(async_load, "status") < 0)
        {
            message_text = "加载失败.";
        }
        
        exit;
    }
    
    if (ds_map_exists(async_load, "http_status"))
    {
        if (ds_map_find_value(async_load, "http_status") >= 500)
        {
            message_text = "服务器内部错误.";
            exit;
        }
        
        if (ds_map_find_value(async_load, "http_status") == 418)
        {
            message_text = "茶壶茶壶!你请求的太频繁了.";
            exit;
        }
    }
    
    var result = ds_map_find_value(async_load, "result");
    
    if (result == "")
    {
        message_text = "result空阈值错误.";
        exit;
    }
    
    var jsd = json_decode(result);
    
    if (jsd == -1)
    {
        message_text = "jsd负阈值错误.";
        exit;
    }
    
    if (is_string(jsd))
    {
        message_text = "jsd非字符串错误.";
        exit;
    }
    
    if (!ds_map_exists(jsd, "top_players"))
    {
        message_text = "top_players非预期默认错误.";
        exit;
    }
    
    var dc1 = ds_map_find_value(jsd, "top_players");
    
    if (dc1 == -1)
    {
        message_text = "dc1负阈值错误.";
        exit;
    }
    
    if (is_string(dc1))
    {
        message_text = "dc1非字符串错误.";
        exit;
    }
    
    if (is_undefined(dc1))
    {
        message_text = "dc1空指针错误.";
        exit;
    }
    
    if (ds_list_empty(dc1))
    {
        ds_list_destroy(dc1);
        dc1 = -1;
        message_text = "排行榜为空.";
        exit;
    }

    // 列表读值
    message_text = "";
    for (var n = 0; n < ds_list_size(dc1); n++;)
    {
        var map = ds_list_find_value(dc1, n);
        var curr = ds_map_find_first(map);
        while (is_string(curr))
        {
            var username = ds_map_find_value(map, "username");
            var display_value = ds_map_find_value(map, "display_value");
            var rank = ds_map_find_value(map, "rank");
            message_text += string(rank) + " " + string(username) + " " + string(display_value) + "\r";
            curr = ds_map_find_next(map, curr);
        }
    }

    if (!ds_map_exists(jsd, "user_rank"))
    {
        message_text += "user_rank非预期默认错误.";
        exit;
    }
    
    var dc2 = ds_map_find_value(jsd, "user_rank");
    
    if (dc2 == -1)
    {
        message_text += "dc2负阈值错误.";
        exit;
    }
    
    if (is_string(dc2))
    {
        message_text += "dc2非字符串错误.";
        exit;
    }
    
    if (is_undefined(dc2))
    {
        message_text += "dc2空指针错误.";
        exit;
    }

    var username2 = ds_map_find_value(dc2, "username");
    var display_value2 = ds_map_find_value(dc2, "display_value");
    var rank2 = ds_map_find_value(dc2, "rank");
    message_text += string(rank2) + " " + string(username2) + " " + string(display_value2) + "\r";
    

    exit;
    
    
    
    // if (!button_created)
    // {
    //     button_create(0, 0, 223, id, 0, 11200, "好", 0, 0);
    //     button_created = 1;
    // }
}
