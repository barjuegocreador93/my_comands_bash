#!/bin/bash
clear
date
echo "Hola '$HOSTNAME'!"
echo ""

My_Comands_dir="~/Documentos"
My_Comands_root="$My_Comands_dir/my_comands_bash"


alias My_Comands_init="source $My_Comands_root/init.bash"
alias my_Comands_help="source $My_Comands_root/helps/helps.bash"
My_Comands_init
# Inicio de mis comandos
alias gbsh="gedit ~/.bashrc"
alias sbsh="source ~/.bashrc"
alias gcbsh="gedit "+$My_comands_root+"/comandos_basicos.bash"
alias scbsh="source "+$My_comands_root+"/comandos_basicos.bash"
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

alias cDocumentos="cd $DocumentsDir/ ; ls "

alias cProyects="cd $ProyectosDir ; ls"
alias dProyectos="$ProyectosDir"

alias cComandos="cd $My_Comands_root; ls"
alias dComandos="$DocumentsDir/my_comands_bash/"

alias cDescargas="cd $DowloadsDir; ls"
alias dDescargas="$DowloadsDir"

function cDir()
{
cd $1
ls
}
#'''
#Examples:

#alias cMyDir="cd $initVar : ls" 

#'''
# end my_dirs

# my cordova comands proyects
alias My_comands_cordovaScripts="source $My_Comands_root/scripts/cordova_scripts.bash"
My_comands_cordovaScripts
# end my cordova
alias My_comands_examples="source $My_Comands_root/scripts/exmaplebash.bash"
My_comands_examples
function cpdt()
{
	sd cp -r -u -v  $1 $2
}


alias examplePhp='cd ~/Documentos/Proyects ; cpdt exmaplePHP /var/www/html/'
