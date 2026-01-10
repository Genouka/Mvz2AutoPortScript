// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

if (!variable_global_exists("genouka_os_type"))
{
    global.genouka_os_type = genouka_get_config_os_type();
}

if (global.genouka_os_type == 0)
{
    var path = "MaizeMusic.dll";
    var isRunInGms = 1;
    global.__mm_dll_path = path;
    global.__mm_dll_init = external_define(path, "mmInit", 0, 0, 2, 0, 0);
    global.__mm_dll_free = external_define(path, "mmFree", 1, 0, 0);
    global.__mm_dll_load_music = external_define(path, "mmLoadMusic", 1, 0, 2, 1, 0);
    global.__mm_dll_load_music_ext = external_define(path, "mmLoadMusicExt", 1, 0, 4, 1, 0, 0, 0);
    global.__mm_dll_load_music_mem = external_define(path, "mmLoadMusicMem", 1, 0, 2, 1, 0);
    global.__mm_dll_load_music_mem_ext = external_define(path, "mmLoadMusicMemExt", 1, 0, 4, 1, 0, 0, 0);
    global.__mm_dll_load_url = external_define(path, "mmLoadMusicUrl", 1, 0, 1, 1);
    global.__mm_dll_LoadMusicRes = external_define(path, "mmLoadMusicRes", 1, 0, 2, 0, 0);
    global.__mm_dll_free_music = external_define(path, "mmFreeMusic", 1, 0, 1, 0);
    global.__mm_dll_play = external_define(path, "mmMusicPlay", 1, 0, 1, 0);
    global.__mm_dll_pause = external_define(path, "mmMusicPause", 1, 0, 1, 0);
    global.__mm_dll_resume = external_define(path, "mmMusicResume", 1, 0, 1, 0);
    global.__mm_dll_stop = external_define(path, "mmMusicStop", 1, 0, 1, 0);
    global.__mm_dll_slide_volume = external_define(path, "mmMusicSlideVolume", 1, 0, 3, 0, 0, 0);
    global.__mm_dll_MusicIsActive = external_define(path, "mmMusicIsActive", 1, 0, 1, 0);
    global.__mm_dll_get_length = external_define(path, "mmMusicGetLength", 1, 0, 1, 0);
    global.__mm_dll_get_position = external_define(path, "mmMusicGetPosition", 1, 0, 1, 0);
    global.__mm_dll_get_volume = external_define(path, "mmMusicGetVolume", 1, 0, 1, 0);
    global.__mm_dll_get_pan = external_define(path, "mmMusicGetPan", 1, 0, 1, 0);
    global.__mm_dll_get_speed = external_define(path, "mmMusicGetSpeed", 1, 0, 1, 0);
    global.__mm_dll_get_tempo = external_define(path, "mmMusicGetTempo", 1, 0, 1, 0);
    global.__mm_dll_get_pitch = external_define(path, "mmMusicGetPitch", 1, 0, 1, 0);
    global.__mm_dll_get_global_volume = external_define(path, "mmMusicGetGlobalVolume", 1, 0, 0);
    global.__mm_dll_get_level_left = external_define(path, "mmMusicGetLeftLevel", 1, 0, 1, 0);
    global.__mm_dll_get_level_right = external_define(path, "mmMusciGetRightLevel", 1, 0, 1, 0);
    global.__mm_dll_get_data = external_define(path, "mmMusicGetData", 1, 0, 2, 0, 0);
    global.__mm_dll_get_wave_data = external_define(path, "mmMusicGetWaveData", 1, 0, 2, 0, 0);
    global.__mm_dll_read_data_mes = external_define(path, "mmMusicReadDataPos", 1, 0, 1, 0);
    global.__mm_dll_set_position = external_define(path, "mmMusicSetPosition", 1, 0, 2, 0, 0);
    global.__mm_dll_set_volume = external_define(path, "mmMusicSetVolume", 1, 0, 2, 0, 0);
    global.__mm_dll_set_pan = external_define(path, "mmMusicSetPan", 1, 0, 2, 0, 0);
    global.__mm_dll_set_speed = external_define(path, "mmMusicSetSpeed", 1, 0, 2, 0, 0);
    global.__mm_dll_set_tempo = external_define(path, "mmMusicSetTempo", 1, 0, 2, 0, 0);
    global.__mm_dll_set_pitch = external_define(path, "mmMusicSetPitch", 1, 0, 2, 0, 0);
    global.__mm_dll_set_global_volume = external_define(path, "mmMusicSetGlobalVolume", 1, 0, 1, 0);
    global.__mm_dll_set_loop = external_define(path, "mmMusicSetLoopSection", 1, 0, 3, 0, 0, 0);
    global.__mm_dll_remove_loop = external_define(path, "mmMusicRemoveLoopSection", 1, 0, 1, 0);
    global.__mm_dll_fx_set = external_define(path, "mmMusicSetFX", 1, 0, 2, 0, 0);
    global.__mm_dll_fx_remove = external_define(path, "mmMusicRemoveFX", 1, 0, 2, 0, 0);
    global.__mm_dll_fx_reset = external_define(path, "mmMusicEffectReset", 1, 0, 1, 0);
    global.__mm_dll_fx_chorus = external_define(path, "mmMusicEffectChorus", 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0);
    global.__mm_dll_fx_echo = external_define(path, "mmMusicEffectEcho", 1, 0, 6, 0, 0, 0, 0, 0, 0);
    global.__mm_dll_fx_flanger = external_define(path, "mmMusicEffectFlanger", 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0);
    global.__mm_dll_fx_gargle = external_define(path, "mmMusicEffectGargle", 1, 0, 3, 0, 0, 0);
    global.__mm_dll_fx_reverb = external_define(path, "mmMusicEffectReverb", 1, 0, 5, 0, 0, 0, 0, 0);
    global.__mm_dll_fx_compressor = external_define(path, "mmMusicEffectCompressor", 1, 0, 7, 0, 0, 0, 0, 0, 0, 0);
    global.__mm_dll_fx_equalizer = external_define(path, "mmMusicEffectEqualizer", 1, 0, 4, 0, 0, 0, 0);
    global.__mm_dll_RecordStart = external_define(path, "mmRecordStart", 1, 0, 0);
    global.__mm_dll_RecordStop = external_define(path, "mmRecordStop", 1, 0, 0);
    global.__mm_dll_RecordGetVolume = external_define(path, "mmRecordGetVolume", 1, 0, 0);
    global.__mm_dll_RecordSetInput = external_define(path, "mmRecordSetInput", 1, 0, 2, 0, 0);
    global.__mm_dll_stream_list = ds_list_create();
    return external_call(global.__mm_dll_init, window_handle(), isRunInGms);
}
else
{
    var path = 0;
    var isRunInGms = 1;
    global.__mm_dll_path = path;
    global.__mm_dll_init = 0;
    global.__mm_dll_free = 0;
    global.__mm_dll_load_music = 0;
    global.__mm_dll_load_music_ext = 0;
    global.__mm_dll_load_music_mem = 0;
    global.__mm_dll_load_music_mem_ext = 0;
    global.__mm_dll_load_url = 0;
    global.__mm_dll_LoadMusicRes = 0;
    global.__mm_dll_free_music = 0;
    global.__mm_dll_play = 0;
    global.__mm_dll_pause = 0;
    global.__mm_dll_resume = 0;
    global.__mm_dll_stop = 0;
    global.__mm_dll_slide_volume = 0;
    global.__mm_dll_MusicIsActive = 0;
    global.__mm_dll_get_length = 0;
    global.__mm_dll_get_position = 0;
    global.__mm_dll_get_volume = 0;
    global.__mm_dll_get_pan = 0;
    global.__mm_dll_get_speed = 0;
    global.__mm_dll_get_tempo = 0;
    global.__mm_dll_get_pitch = 0;
    global.__mm_dll_get_global_volume = 0;
    global.__mm_dll_get_level_left = 0;
    global.__mm_dll_get_level_right = 0;
    global.__mm_dll_get_data = 0;
    global.__mm_dll_get_wave_data = 0;
    global.__mm_dll_read_data_mes = 0;
    global.__mm_dll_set_position = 0;
    global.__mm_dll_set_volume = 0;
    global.__mm_dll_set_pan = 0;
    global.__mm_dll_set_speed = 0;
    global.__mm_dll_set_tempo = 0;
    global.__mm_dll_set_pitch = 0;
    global.__mm_dll_set_global_volume = 0;
    global.__mm_dll_set_loop = 0;
    global.__mm_dll_remove_loop = 0;
    global.__mm_dll_fx_set = 0;
    global.__mm_dll_fx_remove = 0;
    global.__mm_dll_fx_reset = 0;
    global.__mm_dll_fx_chorus = 0;
    global.__mm_dll_fx_echo = 0;
    global.__mm_dll_fx_flanger = 0;
    global.__mm_dll_fx_gargle = 0;
    global.__mm_dll_fx_reverb = 0;
    global.__mm_dll_fx_compressor = 0;
    global.__mm_dll_fx_equalizer = 0;
    global.__mm_dll_RecordStart = 0;
    global.__mm_dll_RecordStop = 0;
    global.__mm_dll_RecordGetVolume = 0;
    global.__mm_dll_RecordSetInput = 0;
    global.__mm_dll_stream_list = ds_list_create();
    
    global.__mm_genouka_position_list = ds_map_create();
    global.__mm_genouka_loop_position_list = ds_map_create();
    global.__mm_genouka_loop_position_end_list = ds_map_create();
    global.__mm_genouka_isplaying = ds_map_create();
    global.__mm_genouka_stream_index_list = ds_map_create();
    global.__mm_genouka_stream_reserveindex_list = ds_map_create();

    var gmi = 0;
    if(!variable_global_exists("genouka_resource_loading_content"))
    {
        global.genouka_resource_loading_content = "";
    }

    while(audio_exists(gmi))
    {
        //sndt_xxx -> xxx
        var aname=audio_get_name(gmi);
        if(string_length(aname)>=6){
            ds_map_set(global.__mm_genouka_stream_index_list,string_copy(aname,6,string_length(aname)-5),gmi);
        }
        if(string_pos("ms",aname)==1&&string_length(aname)>=3){
            ds_map_set(global.__mm_genouka_stream_index_list,string_copy(aname,3,string_length(aname)-2),gmi);
        }
        if(string_pos("qm",aname)==1&&string_length(aname)>=3){
            ds_map_set(global.__mm_genouka_stream_index_list,string_copy(aname,3,string_length(aname)-2),gmi);
        }
        ds_map_set(global.__mm_genouka_stream_index_list,aname,gmi);
        ds_map_set(global.__mm_genouka_stream_index_list,string_lower(aname),gmi);
        ds_map_set(global.__mm_genouka_stream_reserveindex_list,gmi,aname);

        global.genouka_resource_loading_content += ("[GenoukaMusic]mm_init 预加载音乐（Preloding sound）: " + string(aname) + "\r");
        gmi++;
    }
    
    show_message_async("本版本由Bilibili:@秋冥散雨_Genouka移植，禁止用于任何盈利用途，未经本人明确授权禁止上传任何第三方平台。\n\nThis version is ported by Qiuming, and is prohibited for any commercial use and uploading to any third-party platforms.\n\nBilibili:@秋冥散雨_Genouka\nDiscord:@qiuming_official\nGithub:Genouka");

    return 0;
}
