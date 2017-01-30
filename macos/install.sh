#!/bin/sh

## Dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set properties to {dark mode:true, appearance:graphite}'

# Dock preferences
osascript -e 'tell application "System Events" to tell dock preferences to set properties to {screen edge:right, autohide:true}'

# Irritating as this requires a full logout to take effect.
defaults write NSGlobalDomain _HIHideMenuBar -bool true

## Tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

