# Stop if something fails
set -e

# Scatter the dotfiles home (from git@github.com:JonNorman/dotfiles.git)
cd ~/.dotfiles

for df in \
	.bash_profile \
	.bashrc \
	.gitconfig
do
		tput setaf 5; echo "Linking ${df}"; tput sgr0
		if [[ -e ~/${df} ]]
		then
			tput setaf 5; echo "Backing up existing ~/${df}"; tput sgr0
			mv ~/${df} ~/${df}.bak
		fi
		ln -s ~/.dotfiles/${df} ~/${df}
done

#
# Core installations
#

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install applications
brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle
brew cask install spotify
brew cask install visual-studio-code

# Install utilities
brew install awscli
brew install bash-completion
brew install git
brew install jq
brew install sbt
brew install scala
brew install yarn

################
#Generic Config
################

# Only require a password for git once an hour
git config --global credential.helper cache

#################
#OS X Preferences
#################
echo "Set setting: System Preferences > Security & Privacy > General > Allow apps to be downloaded from: Anywhere"
read

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
killall Finder

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Don't create .DS_Store files on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#Show the ~/Library folder
chflags nohidden ~/Library

# See ALL the files (and dirs)
defaults write com.apple.finder AppleShowAllFiles YES

# Show date
defaults write com.apple.menuextra.clock DateFormat -string "EEE HH:mm"
defaults write com.apple.menuextra.clock FlashDateSeparators -int 0
defaults write com.apple.menuextra.clock IsAnalog -int 0

killall SystemUIServer
echo "Done. Note that some of these changes require a logout/restart to take effect."