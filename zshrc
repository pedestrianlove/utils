# System
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias ls="exa"

# Useful commands
function lt {
	leetcode show $1 -g -x -l c -e;
}
function allegro {
	gcc -g -Wall $1 `pkg-config --cflags --libs allegro-5 allegro_acodec-5 allegro_audio-5 allegro_color-5 allegro_dialog-5 allegro_font-5 allegro_image-5 allegro_main-5 allegro_memfile-5 allegro_physfs-5 allegro_primitives-5 allegro_ttf-5`;
}
alias gpu_off="nvidia-settings --assign GPULogoBrightness=0"
alias gpu_on="nvidia-settings --assign GPULogoBrightness=100"
alias gpu_setup="export DISPLAY=:0.0"
alias gpu_reset="nvidia-settings -a [gpu:0]/GPUFanControlState=0"
alias gpu_max="nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=100"
alias clear_vim="rm ~/.cache/vim/swap/*"
alias display_on="xrandr --output HDMI-0 --auto"
alias display_off="xrandr --output HDMI-0 --off"
alias CODE="cd ~/CODE"
alias I2P="cd ~/CODE/I2P"
alias DS="cd ~/CODE/CODE/DS"
alias update="git pull origin master"
alias makegen="cp ~/.makefile makefile"
function partialgen {
	cp ~/Downloads/$1.c $1.c
	cp ~/Downloads/$1.h function.h
}
function upload {
	git add --all
	git commit -m "$1"
	git push -u origin master
}

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme