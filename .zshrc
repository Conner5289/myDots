

#Alias
alias vbox="virtualbox &"
alias ni="nvim"
alias nim="nvim ."
alias la="ls -a"
alias cl="clear"
alias 'rm*'="trash-put *"
alias weather="curl wttr.in"
alias rmclass="rm *.class"
alias sshServer="ssh conner@192.168.1.5"
alias mysql="mysql -u root -pOreo2019!"
alias zshrc="cd ~; nvim .zshrc"
alias cdNeo="cd ~/.config/nvim/; nvim ."
alias ran="ranger_cd"
alias vpnup="sudo wg-quick up wg0"
alias vpndown="sudo wg-quick down wg0"
alias rpush="sudo pushRsyncScript.sh"
alias rpull="sudo pullRsyncScript.sh"
alias Rshutdown="sudo pushRsyncScript.sh && shutdown now"
alias Rreboot="sudo pushRsyncScript.sh && reboot" 
alias nasUp="sudo systemctl start home-conner-Nas.mount && sudo systemctl status home-conner-Nas.mount"
alias nasDown="sudo systemctl stop home-conner-Nas.mount && sudo systemctl status home-conner-Nas.mount"
alias nasStatus="sudo systemctl status home-conner-Nas.mount"
alias mute="pactl set-sink-mute @DEFAULT_SINK@ toggle"
alias volUp="pactl set-sink-volume @DEFAULT_SINK@ +10%"
alias volDown="pactl set-sink-volume @DEFAULT_SINK@ -10%"
alias coffee="ssh terminal.shop"
alias fanLow="fw-fanctrl use lazy"
alias fanMed="fw-fanctrl use agile"
alias fanHot="fw-fanctrl use hot"
alias .="./run"
alias ..="cd .."
alias spring="mvn spring-boot:run"
alias rm="sudo trash-put"
alias wakePC="wol 2c:f0:5d:65:31:f7"
alias sshPC="ssh 192.168.1.3"
alias ls="eza --icons"
alias cd="z"


#encrypted disk
alias eDisk="sudo mount /dev/mapper/luks-6303d392-02df-447c-aa4e-86e72713ae88 /home/conner/Disk/eDisk"
alias umeDisk="sudo umount /home/conner/Disk/eDisk/"

#virtual disk
alias vDisk="sudo mount /dev/sda1 /home/conner/Disk/vDisk"
alias umvDisk="sudo umount /home/conner/Disk/vDisk/"

#options
setopt correct

#Where the history is at
export HISTFILE=~/.zsh_history

#how many lines in mem and history
export HISTSIZE=10000
export SAVEHIST=10000 

#More history options
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY     
setopt HIST_IGNORE_DUPS

export XDG_CURRENT_DESKTOP=sway


#Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

#user path adds
export PATH="$HOME/Bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"

#make nvim default editor
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim

#default stuff

export TERMINAL="warp"
export BROWSER="brave"


#Ranger_Cd
ranger_cd() {
    temp_file=$(mktemp)
    ranger --choosedir="$temp_file" "$@"
    if [ -f "$temp_file" ]; then
        cd "$(cat "$temp_file")"
        rm -f "$temp_file"
    fi
}



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
