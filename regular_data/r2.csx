// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

using System;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Linq;
using UndertaleModLib.Util;

EnsureDataLoaded();

string dataPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "texts");

GlobalDecompileContext globalDecompileContext = new(Data);
Underanalyzer.Decompiler.IDecompileSettings decompilerSettings = Data.ToolInfo.DecompilerSettings;

UndertaleModLib.Compiler.CodeImportGroup importGroup = new(Data);

importGroup.QueueReplace("gml_Script_genouka_texthardcode", File.ReadAllText(dataPath + "\\output_gml_script.gml"));

importGroup.Import();