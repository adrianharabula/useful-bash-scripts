#!/bin/bash

# Deactivate mouse acceleration
# sudo tee /usr/share/X11/xorg.conf.d/90-mouse.conf <<EOF
# Section "InputClass"
#     Identifier "mouse"
#     MatchIsPointer "on"
#     Option "AccelerationProfile" "-1"
#     Option "AccelerationScheme" "none"
# EndSection
# EOF

# no mouse acceleration with libinput
# in ubuntu 16.04 install libinput with
# sudo apt install xserver-xorg-input-libinput-hwe-16.04
sudo tee /usr/share/X11/xorg.conf.d/90-mouse-libinput.conf <<EOF
Section "InputClass"
    Identifier "Remove mouse acceleration"
    Driver "libinput"
    MatchIsPointer "yes"
    Option "AccelProfile" "flat"
EndSection

Section "InputClass"
    Identifier "Slowdown g203 8000dpi mouse"
    Driver "libinput"
    MatchProduct "G203"
    # set mouse cursor speed, -1 is slowest, 1 is fastest
    Option "AccelSpeed" "-0.95"
EndSection
EOF

# Set mouse pooling rate
# 1 = 1000Hz
# 2 = 500Hz
# 4 = 250Hz
# 8 = 125Hz
# 10 = 100Hz (Default) 
sudo tee /etc/modprobe.d/usbhid.conf <<EOF
options usbhid mousepoll=1
EOF
