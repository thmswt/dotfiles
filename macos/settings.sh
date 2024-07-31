#!/usr/bin/env bash

set -e

# This file contains settings for mac which makes me happy.
# It is not a full list.
#
# The best resource of finding new settings for other users is:
# https://www.defaults-write.com
#
# Some parts are taken from:
# - https://github.com/rootbeersoup/dotfiles
# - https://github.com/skwp/dotfiles
#
# All values are sorted inside their blocks: newest are on the top.
#

echo 'Configuring your mac. Hang tight.'
osascript -e 'tell application "System Preferences" to quit'


# === General ===

# Disable startup noise:
sudo nvram SystemAudioVolume=%01

# Maximize windows on double clicking them:
defaults write -g AppleActionOnDoubleClick 'Maximize'

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


# === Appearance ===

defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"


# === Dock ===

# Do not show suggested and recent apps in Dock
defaults write com.apple.dock show-recents -int 0

# Size:
defaults write com.apple.dock tilesize -int 48

# Show indicator lights for open apps in Dock:
defaults write com.apple.dock show-process-indicators -bool true


# === Finder ===

# Show Finder path bar:
defaults write com.apple.finder ShowPathbar -bool true

# Do not show status bar in Finder:
defaults write com.apple.finder ShowStatusBar -bool false

# Show hidden files in Finder:
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show file extensions in Finder:
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show Library folder
chflags nohidden ~/Library

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true


# === Mouse ===

# Disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -int 0

# === Activity monitor ===

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Restarting apps:
echo 'Restarting apps...'
killall Finder
killall Dock

echo 'Done!'