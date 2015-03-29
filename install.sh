#!/bin/bash
VERSION="alpha"
THEME_PREFIX=/usr/share/icons/EvoPop

echo "Installing..."
[ -d "$THEME_PREFIX" ] && sudo rm -rf $THEME_PREFIX
sudo mkdir -pv "$THEME_PREFIX" && sudo cp -rf EvoPop/* "$THEME_PREFIX"

echo "EvoPop $VERSION icon theme installed successful"