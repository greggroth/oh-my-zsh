# Shortcut to my code projects
c() { cd ~/Programing/$1; }
_c() { _files -W ~/Programing -/; }
compdef _c c

# Shortcut to my papers directory
p() { cd ~/Dropbox/Documents/Papers/$1; }
_p() { _files -W ~/Dropbox/Documents/Papers -/; }
compdef _p p

# Shortcut for opening finder
alias f='open .'

# Some extra things for git
alias ggraph='git log --date-order --graph --date=short --pretty="%h (%ad): %s"'
compdef _git ggraph=git-log
gcam() { git commit -a -m $1; }
compdef _git gcam=git-commit

# Build pdflatex and bibtex
pbpp() {
  if [ -z $1 ]; then
    echo "No arugment given"
    return
  fi
  if [ ! -e "${1}.tex" ]; then
    echo "Tex file not found.  Verify that the current directory contains a file named ${1}.tex"
    return
  fi
  pdflatex $1
  bibtex $1
  pdflatex $1
  pdflatex $1
  open "${1}.pdf"
}

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