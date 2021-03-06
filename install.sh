#!/bin/sh
#https://github.com/eosrei/emojione-color-font

font_conf=/home/fonts.conf
echo "Color-Font installer for Ubuntu\n"

# Check for Bitstream Vera
fc-list | grep "Bitstream Vera" > /dev/null
RETURN=$?

if [ $RETURN -ne 0 ];then
  echo "Bitstream Vera font family not found. Please install it:"
  echo "sudo apt-get install -y ttf-bitstream-vera"
fi

echo "NOTE: Changing default font family to Bitstream Vera"

# Stop on errors
set -e

# Set XDG_DATA_HOME to default if empty.
if [ -z "$XDG_DATA_HOME" ];then
  XDG_DATA_HOME=$HOME/.local/share
fi

# Create a user font directory
mkdir -p $XDG_DATA_HOME/fonts
echo "Installing the font in: $XDG_DATA_HOME/fonts/"
cp $font $XDG_DATA_HOME/fonts/


# Create a font config directory
FONTCONFIG=$HOME/.config/fontconfig
mkdir -p $FONTCONFIG/conf.d/

# Check for an existing font config
if [ -f $FONTCONFIG/fonts.conf ];then
  # (temporary backwards compat)
  echo "Existing fonts.conf backed up to fonts.bak"
  cp $FONTCONFIG/fonts.conf $FONTCONFIG/fonts.bak
fi

# Install fonts.conf
cp $font_conf $FONTCONFIG/conf.d/

# Install NotoColorEmoji
echo "Install NotoColorEmoji"
wget https://noto-website.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip
unzip NotoColorEmoji-unhinted.zip
mkdir -p /usr/share/fonts/opentype/noto
mv NotoColorEmoji.ttf /usr/share/fonts/opentype/noto
rm NotoColorEmoji-unhinted.zip

echo "Clearing font cache"
fc-cache -f -v

echo "Done!"
