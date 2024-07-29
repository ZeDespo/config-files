# Source environment variables and auxillary files
source $HOME/.config/zsh/environment.zsh

typeset -ga sources
sources+="/etc/zsh_command_not_found"
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh"
sources+="$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
sources+="$ZSH_PLUGINS/dirhistory.plugin.zsh"
sources+="$ZSH_PLUGINS/clipboard.zsh"
sources+="$ZSH_PLUGINS/web-search.plugin.zsh"


# Eigen Stuff
sources+="$ZSH_CONFIG/eigen_environment.zsh"
sources+="$ZSH_CONFIG/eigen_aliases.zsh"


foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end


# ZSH Snap Store fix
shareApps="$HOME/.local/share/applications"
snapApps="/var/lib/snapd/desktop/applications"

# Detect all installed applications by snap
for file in $snapApps/*.desktop
do
  # Get a not-ugly version of the .desktop 
  # Example: todoist_todoist.desktop -> todoist.desktop
  link="$shareApps/$(echo $file | cut -d '_' -f2)"

  # Create new link if none exists
  [[ -f $link ]] || ln -s $file $link
done


# NOTE: Remove this if you do NOT want automatic broken symbolic link cleanup
for link in $shareApps/*.desktop; do
  # Remove any broken *.desktop symbolic links
  [[ -e $link ]] || rm $link
done
