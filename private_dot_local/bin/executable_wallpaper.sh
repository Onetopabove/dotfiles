#!/bin/sh

# 壁纸目录
WALLPAPER_DIR="$HOME/wallpapers"

# 从目录随机挑选一张图片
IMG=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)

# 如果没找到图片就退出
[ -z "$IMG" ] && exit 1

# 杀掉已有的 swaybg（避免多个进程叠加）
pkill -x swaybg 2>/dev/null

# 设置壁纸（-m fill 可以改成 fit/stretch/center/tile）
swaybg -i "$IMG" -m fill &
