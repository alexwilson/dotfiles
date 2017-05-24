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

# Hide desktop
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.finder CreateDesktop -bool FALSE

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

