#!/bin/bash

# 定义要查找和修改的文件列表
files=("ckm3u8.html" "ffm3u8.html" "360zy.html" "lzm3u8.html" "tkm3u8.html" "zz.html")

# 遍历文件列表
for file in "${files[@]}"; do
  echo "Searching for $file in directories containing /js/player..."
  # 查找包含 /js/player 路径的目录中的文件
  find . -type f -path "*/js/player/${file}" -print -exec sed -i 's|https://jx.wujinkk.com/dplayer/|https://lziplayer.com/|g' {} \;
done

echo "Script execution completed."
