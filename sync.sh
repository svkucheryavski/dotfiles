#!/bin/sh

set -e

syncList=(
   # VIM and Tmux settings
   ".vim"
   ".vimrc"
   ".tmux"
   ".tmux.cong"
   # ZSH settings
   ".zprofile"
   ".zshrc"
   # Other
   ".gitconfig"
)

OLDDIR=~/.dotfiles_old
if [ ! -d "$OLDDIR" ]; then
   echo "ok"
   mkdir "$OLDDIR"
fi

for f in ${syncList[@]}; do
   echo "Processing: $f"
   if [ -e ~/"${f}" ]; then
      if [ ! -L ~/"${f}" ]; then
         echo " - file exist, moving to .dotfiles_old."
         mv ~/"${f}" ~/"$OLDDIR"/"${f}"
      else
         echo " - link exists, removing."
         unlink ~/"${f}"
      fi
   fi
   echo " - creating a link."
   ln -s ~/.dotfiles/"${f}" ~/"${f}"
done