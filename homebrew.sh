#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# brew install coreutils
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install Python
brew install python
# brew install python3

# Install more recent versions of some OS X tools.
brew install vim --with-override-system-vi
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen

brew install tmux

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install homebrew/x11/xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
# brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install tig
# brew install hub
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rhino
brew install speedtest_cli
# brew install ssh-copy-id
brew install tree
# brew install webkit2png
# brew install zopfli
# brew install pkg-config libffi
# brew install pandoc

# Lxml and Libxslt
# brew install libxml2
# brew install libxslt
# brew link libxml2 --force
# brew link libxslt --force

# Install Heroku
# brew install heroku-toolbelt
# heroku update

brew install scmpuff
brew install gpg
brew install yarn
# brew install kubectl

brew install ffmpeg

brew install golang
brew install cmake
brew install tesseract

brew install glew

# Install Cask
brew tap caskroom/cask

brew cask install sublime-text

# Core casks
# brew cask install alfred
# brew cask install iterm2
# brew cask install java
brew cask install xquartz
brew cask install bettertouchtool

# Development tool casks
brew cask install sublime-text
# brew cask install atom
# brew cask install virtualbox
# brew cask install vagrant
# brew cask install macdown

# Misc casks
brew cask install google-chrome
# brew cask install firefox
# brew cask install skype
brew cask install slack
# brew cask install dropbox
# brew cask install evernote
brew cask install 1password
#brew cask install gimp
#brew cask install inkscape

brew cask install skim
brew cask install discord
brew cask install spotify
brew cask install google-cloud-sdk

#Remove comment to install LaTeX distribution MacTeX
#brew cask install mactex

# Install Docker, which requires virtualbox
brew cask install docker
brew cask install osxfuse

brew cask install the-unarchiver
# brew install boot2docker

brew install sshfs

brew install the_silver_searcher

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup

