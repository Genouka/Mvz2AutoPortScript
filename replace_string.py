# This project is made by Genouka.
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
import os
import sys
import argparse
from pathlib import Path

def replace_in_file(file_path, old_str, new_str):
    """在单个文件中替换字符串"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        if old_str in content:
            new_content = content.replace(old_str, new_str)
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"已替换: {file_path}")
            return True
        return False
    
    except UnicodeDecodeError:
        print(f"跳过二进制文件: {file_path}")
        return False
    except Exception as e:
        print(f"处理文件 {file_path} 时出错: {e}")
        return False

def replace_in_directory(directory, old_str, new_str):
    """递归遍历目录并替换所有文件中的字符串"""
    directory_path = Path(directory)
    
    if not directory_path.exists():
        print(f"错误: 目录 '{directory}' 不存在")
        return
    
    if not old_str:
        print("错误: 要替换的字符串不能为空")
        return
    
    replaced_count = 0
    file_count = 0
    
    print(f"开始处理目录: {directory}")
    print(f"替换规则: '{old_str}' -> '{new_str}'")
    print("-" * 50)
    
    for file_path in directory_path.rglob('*'):
        if file_path.is_file():
            file_count += 1
            if replace_in_file(file_path, old_str, new_str):
                replaced_count += 1
    
    print("-" * 50)
    print(f"处理完成!")
    print(f"扫描文件总数: {file_count}")
    print(f"成功替换文件数: {replaced_count}")

def main():
    parser = argparse.ArgumentParser(
        description='递归替换目录下所有文件中的字符串',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  python replace_string.py /path/to/directory "旧文本" "新文本"
  python replace_string.py . "foo" "bar"
        '''
    )
    
    parser.add_argument('directory', help='要处理的目录路径')
    parser.add_argument('old_string', help='要替换的字符串')
    parser.add_argument('new_string', help='替换后的字符串')
    
    if len(sys.argv) == 1:
        parser.print_help()
        return
    
    args = parser.parse_args()
    
    replace_in_directory(args.directory, args.old_string, args.new_string)

if __name__ == "__main__":
    main()