// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

// 上传成绩
// argument0 量化值，越大排名越靠前，不会显示给玩家，仅统计
// argument1 显示字符串，用来显示给玩家看的排名数据
var url = "https://fastcom-update.genouka.top/mvz2/api/upload_score.php";
var data = "game_name=mvz2_" + string(global.Version) + "&user_guid=" + string(guid) + "&username=" + string(global.Name);
data += "&quantized_value=" + string(argument0) + "&display_value=" + string(argument1);
http_post_string(url,data);