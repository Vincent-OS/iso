#!/bin/bash
if grep -q "install-only" /proc/cmdline; then
    systemctl stop display-manager.service
    systemctl enable --now calamares.service
else
    systemctl set-default graphical.target
fi
