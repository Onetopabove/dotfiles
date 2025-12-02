#!/bin/sh

case "$1" in
    obsidian)
        exec obsidian --enable-features=UseOzonePlatform \
                      --ozone-platform=wayland \
                      --enable-wayland-ime \
                      --wayland-text-input-version=3
        ;;
    firefox)
        exec firefox -P Personal
        ;;
    *)
        exec "$@"
        ;;
esac
