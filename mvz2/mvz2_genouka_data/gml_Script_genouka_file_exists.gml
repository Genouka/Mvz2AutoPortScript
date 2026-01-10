// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (global.genouka_os_type != 0)
{
    if(file_exists(argument0)) return true;
    //  Workround: 修复PR版因为 file_exists 判空导致的 mm_music_load 功能失效
    var full_name = filename_name(argument0)
    var file_name = string_replace(full_name, ".mp3", "");
    file_name = string_replace(file_name, ".wav", "");
    file_name = string_replace(file_name, ".ogg", "");
    if(full_name == file_name) return false;
    file_text_close(file_text_open_append(argument0));
    if(!variable_global_exists("genouka_resource_loading_content"))
    {
        global.genouka_resource_loading_content = "";
    }
    global.genouka_resource_loading_content += "[GenoukaMusic] Workround: Created empty music file to workaround file_exists issue: " + string(argument0) + "\r";
    return true;
}
return file_exists(argument0);