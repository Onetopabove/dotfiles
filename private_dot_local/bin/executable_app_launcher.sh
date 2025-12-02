#!/bin/sh
# ~/.local/bin/app_launcher.sh
env > /tmp/app_launcher.env
echo $(date) >> /tmp/app_launcher.log
echo "app_launcher.sh triggered" >> /tmp/app_launcher.log

echo -n "$PATH" | \
xargs -d : -I {} -r find -L {} -maxdepth 1 -mindepth 1 -type f -executable \
| sed 's/^.*\///' \
| sort \
| fzf \
| xargs -r -I {} ~/.local/bin/launcher.sh {}
