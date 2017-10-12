# Shell Aliases
# Adam Heins

# ================================= General ================================== #

# Vim.
alias v="vim"
alias vim="nvim"

# Terminal.
alias cl="clear"
alias x="exit"
alias lo="logout"

# Quickly make a webserver out of the current directory.
alias serve="python -m SimpleHTTPServer"

# Install debian packages.
alias deb="sudo dpkg -i"

# Update packages.
alias update="sudo apt update && sudo apt upgrade"

# Unpack tarballs.
alias untar="tar -xf"

# Quick C compilation.
alias cc="gcc -std=c99"

# Cscope aliases.
alias cs="cscope -d"
alias csb="cscope -bq"

# Base conversion. Note that the `base' tool must be installed.
# https://github.com/adamheins/base
alias hex="base 10:16"
alias unhex="base 16:10"

# Change file's executability permissions.
alias -- +x="chmod +x"
alias -- -x="chmod -x"

# Decrypt files to stdout.
alias show="gpg --decrypt --quiet --batch"

# Python package source code locations.
alias p2dist="cd /usr/local/lib/python2.7/dist-packages"
alias p3dist="cd /usr/local/lib/python3.5/dist-packages"
alias p2lib="cd /usr/lib/python2.7"
alias p3lib="cd /usr/lib/python3.5"

# Size of files and directories.
alias fsize="du -h --apparent-size"
alias dsize="du -sh --apparent-size"

# Easier copying of passwords from password-store.
alias p="pass show -c"

# =============================== Date & Time ================================ #

# Today's date and time, in a nice format.
alias now="date +%F\ %T"

# ============================ Modified Builtins ============================= #

# Start the calculator with math support.
alias bc="bc -l"

# Use insect as a calculator. npm install -g insect
alias calc="insect"

# Make cd follow symlinks by default.
alias cd="cd -P"

# Allow mkdir to create intermediate directories.
alias mkdir="mkdir -p"

# If safe-rm is installed, use that.
if command -v safe-rm >/dev/null 2>&1; then
  alias rm=safe-rm
fi

# Prefer exa to ls, if it is installed.
if command -v exa > /dev/null 2>&1; then
  alias ls=exa
  alias la="exa -a"
else
  alias ls="ls --color=auto"
  alias la="ls -A"
fi

case $OS in
  Linux) alias open="xdg-open" ;;
esac
