#!/bin/bash
clear
date
echo "Hola "
echo ""
DocumentsDir="Documentos"
My_Comands_dir="Documentos"
function Documents_dir_name()
{
	DocumentsDir=$1
}

function My_Comands_dir()
{
	My_Comands_dir=$1
}


alias help-my_comands="source ~/${My_Comands_dir}/my_comands_bash/helps/helps.bash"

# Inicio de mis comandos
alias gbsh="gedit ~/.bashrc"
alias sbsh="source ~/.bashrc"
alias gcbsh="gedit ~/${My_Comands_dir}/my_comands_bash/comandos_basicos.bash"
alias scbsh="source ~/${My_Comands_dir}/my_comands_bash/comandos_basicos.bash"
alias sd="sudo"
alias sag="sd apt-get"
alias s-ins="sag install"
alias s-upd="sag update"
alias s-chk="sag check"
alias s-arm="sag autoremove"
alias s-acl="sag autoclean"
alias s-chl="sag changelog"
alias cls="sbsh"
# Fin de mis comandos

#  my git comands
alias git-c="git clone"
alias git-a="git add"
alias git-i="git init"
alias git-s="git status"
alias git-com="git commit -m"
alias git-p="git push"
alias git-pom="git push origin master"
# end git

# my_dirs
alias Atr="cd ..; ls"

alias android_sdk_tools="cd ~/Android/Sdk/tools/; sh ./android"
alias android_studio="cd ~/Apps-MasterCab/android-studio/bin; sh ./studio.sh"

alias my_documts="cd ~/${DocumentsDir}/"

alias my_proyects="my_documts ; cd Proyects/ ; ls"
alias dirmy_proyects="~/${DocumentsDir}/Proyects/"

alias my_comands="my_documts ; cd my_comands_bash/; ls"
alias dirmy_comands="~/${DocumentsDir}/my_comands_bash/"

alias my_repositorys="my_documts ; cd Repositorios/; ls"
alias dirmy_repositorys="~/${DocumentsDir}/Repositorios/"

alias my_downlds="cd ~/Descargas/; ls"
alias dirmy_downlds="~/Descargas/"

alias my_disp="cd /media/camilo/; ls"
alias dirmy_disp="~/media/camilo/"

alias my_wine="cd ~/.wine/; ls"
alias dirmy_wine="~/.wine/"

alias my_media="cd /media/camilo/; ls"
alias dirmy_media="/media/camilo/"

alias my_wine_pro="cd ~/.wine/drive_c/'Program Files/'; ls"
alias dirmy_wine_pro="~/.wine/drive_c/'Program Files/'"

alias my_wine_pro86="cd ~/.wine/drive_c/'Program Files (x86)'/; ls"
alias dirmy_wine_pro="~/.wine/drive_c/'Program Files (x86)'/"

alias my_appm="cd ~/Apps-MasterCab/; ls"
alias dirmy_appm="~/Apps-MasterCab/"
# end my_dirs

# my cordova comands proyects
source ~/$My_Comands_dir/my_comands_bash/cordova_scripts.bash
# end my cordova
source ~/$My_Comands_dir/my_comands_bash/exmaplebash.bash
