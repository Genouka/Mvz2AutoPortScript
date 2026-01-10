// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type == 0)
{
    var handle = external_call(global.__mm_dll_load_music, argument0, argument1);
    ds_list_add(global.__mm_dll_stream_list, handle);
    return handle;
}
else
{
    var full_name = filename_name(argument0);
    var file_name = string_replace(full_name, ".mp3", "");
    file_name = string_replace(file_name, ".wav", "");
    file_name = string_replace(file_name, ".ogg", "");
    if(!variable_global_exists("genouka_resource_loading_content"))
    {
        global.genouka_resource_loading_content = "";
    }

    global.genouka_resource_loading_content += ("[GenoukaMusic]检索音乐（Indexing Sound）: " + file_name + "\r");
    if(ds_map_exists(global.__mm_genouka_stream_index_list,file_name) ){
        return ds_map_find_value(global.__mm_genouka_stream_index_list,file_name);
    }else if(ds_map_exists(global.__mm_genouka_stream_index_list,string_lower(file_name))){
        return ds_map_find_value(global.__mm_genouka_stream_index_list,string_lower(file_name));
    }else{
        global.genouka_resource_loading_content += ("[GenoukaMusic]"+ genouka_getstackstring(3) +" 检索音乐错误（Indexing Sound Error）：" + file_name + "\r");
        return -1;
    }
}