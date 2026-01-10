// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (ds_map_find_value(async_load, "id") == http_request_id2)
{
    if (ds_map_find_value(async_load, "status") != 0)
    {
        if (ds_map_find_value(async_load, "status") < 0)
        {
            instance_destroy();
            instance_activate_all();
        }
        exit;
    }
    
    if (ds_map_exists(async_load, "http_status"))
    {
        if (ds_map_find_value(async_load, "http_status") >= 500)
        {
            instance_destroy();
            instance_activate_all();
            exit;
        }
        
        if (ds_map_find_value(async_load, "http_status") == 418)
        {
            instance_destroy();
            instance_activate_all();
            exit;
        }
    }
    
    var result = ds_map_find_value(async_load, "result");
    
    if (result == "")
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    var jsd = json_decode(result);
    
    if (jsd == -1)
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    if (is_string(jsd))
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    if (!ds_map_exists(jsd, "default"))
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    var dc1 = ds_map_find_value(jsd, "default");
    
    if (dc1 == -1)
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    if (is_string(dc1))
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    if (is_undefined(dc1))
    {
        instance_destroy();
        instance_activate_all();
        exit;
    }
    
    if (ds_list_empty(dc1))
    {
        ds_list_destroy(dc1);
        instance_destroy();
        instance_activate_all();
        dc1 = -1;
        exit;
    }
    
    global.genouka_network_verann_ds_list = dc1;
}
