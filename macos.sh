#!/bin/sh

## Dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set properties to {dark mode:true}'


## Tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

