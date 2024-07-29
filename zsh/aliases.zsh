# Aliases go here

# Neovim gang
export EDITOR="nvim"
alias vi="nvim"
alias vim="nvim"
alias nv="nvim"

# Base overwrite commands
alias ls="lsd --extensionsort --versionsort"

# A good looking diff
alias diff-sf="diff-so-fancy"

# Easy configuration editing
alias zsource="source ${HOME}/.zshrc"
alias aliasedit="$EDITOR ${ZSH_CONFIG}/aliases.zsh"
alias zshedit="$EDITOR ${HOME}/.zshrc"

# Easy copying and pasting
alias copy="clipcopy"
alias paste="clippaste"

# The F*ck, auto-command fixer
eval $(thefuck --alias)
alias f="fuck"

# Youtube-DL

function ydla-audio() {
    output="${HOME}/d/Music/Youtube/"
    cd $output && \
        yt-dlp \
            --retries infinite \
	    --verbose \
            --extract-audio \
            --audio-format m4a \
            --audio-quality 0 \
            --embed-thumbnail \
            --output "%(title)s.%(ext)s" \
            -4 \
            --download-archive "$output/.youtube-dl.txt" \
            $1
}


# Parsec for Kubuntu
alias parsec="flatpak run com.parsecgaming.parsec"

# Backup to Synology NAS
alias backup-now="rsync -av -e ssh /home /etc /root /usr/local/bin /usr/local/sbin /opt adespotakis@nascar.cody.local::NetBackup/cody-laptop --delete"

# Restart kdeconnect in case shit goes south
function kdec-restart() {
    killall kdeconnectd
    sleep 5
    kdeconnect-app &
}
