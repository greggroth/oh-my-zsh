# Shortcut to my code projects
c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

# Shortcut for opening finder
alias f='open .'

# Shortcut for VIM
alias v='vim'
alias vi='vim'

# Some extra things for git
alias ggraph='git log --date-order --graph --date=short --pretty="%h (%ad): %s (%an)"'
compdef _git ggraph=git-log
gcam() { git commit -a -m $1; }
compdef _git gcam=git-commit

# Copy with progress indicator
cpi() {
  if [ -z $2 ]; then
    echo "Usage:  cpi [origin] [destination]"
    return
  fi
  rsync --progress $1 $2
}

# Mount my desktop computer
alias mount_home='mount_smbfs //Greggory@greggory-pc/Users/Greggory/ ~/share'

# Open a file with VLC
vlc() { open $1 -a vlc; }