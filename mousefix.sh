#!/bin/bash

# Deactivate mouse acceleration
sudo tee /usr/share/X11/xorg.conf.d/90-mouse.conf <<EOF
Section "InputClass"
    Identifier "mouse"
    MatchIsPointer "on"
    Option "AccelerationProfile" "-1"
    Option "AccelerationScheme" "none"
EndSection
EOF

# Mouse pooling rate
sudo tee /etc/modprobe.d/usbhid.conf <<EOF
options usbhid mousepoll=1
EOF
