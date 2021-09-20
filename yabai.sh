#!/bin/bash

# Run this on recovery mode... Restart, cmd-R, Utilities > Terminal
# csrutil disable --with kext --with dtrace --with nvram --with basesystem

brew install koekeishiya/formulae/yabai

brew services start koekeishiya/formulae/yabai

echo "Press enter once you've given permission to yabai"
read

sudo yabai --install-sa

sudo yabai --load-sa

brew services restart yabai

sudo tee -a /private/etc/sudoers.d/yabai > /dev/null << EOF
$(whoami) ALL = (root) NOPASSWD: $(which yabai) --load-sa
EOF
