#!/bin/bash
clear 
date
echo "Hola "
echo ""

function mastercab_info()
{
	

	
		echo "Estos son los comandos: "
		echo " "
		echo "gbsh    -> gedit ~/.bashrc"
		echo "sbsh    -> source ~/.bashrc"
		echo "gcbsh   -> gedit ~/Documentos/comandos/comandos_basicos.bash"
		echo "scbsh   -> source ~/Documentos/comandos/comandos_basicos.bash"
		echo "cls     -> clear"
		echo ""
		echo "--Herramientas de sudo--"
		echo "sd      -> sudo"
		echo "sag     -> sudo apt-get"
		echo "s-ins   -> sag install"
		echo "s-upd   -> sag update"
		echo "s-chk   -> sag check"
		echo "s-arm   -> sag autoremove"
		echo "s-acl   -> sag autoclean"
		echo "s-chl   -> sag changelog"
		echo ""
		echo "--Herramientas de github--"
		echo "git-c   -> git clone"
		echo "git-a   -> git add"	
		echo "git-i   -> git init"
		echo "git-s   -> git status"
		echo "git-com -> git commit -m"
		echo "git-p   -> git push"
		echo "git-pom -> git-p origin master"
	
}

# Inicio de mis comandos
alias gbsh="gedit ~/.bashrc"
alias sbsh="source ~/.bashrc"
alias gcbsh="gedit ~/Documentos/comandos/comandos_basicos.bash"
alias scbsh="source ~/Documentos/comandos/comandos_basicos.bash"
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

alias my_documts="cd ~/Documentos/"

alias my_proyects="my_documts ; cd Proyects/ ; ls"
alias dirmy_proyects="~/Documentos/Proyects/"

alias my_comands="my_documts ; cd comandos/; ls"
alias dirmy_comands="~/Documentos/comandos/"

alias my_repositorys="my_documts ; cd Repositorios/; ls"
alias dirmy_repositorys="~/Documentos/Repositorios/"

alias my_downlds="cd ~/Descargas/; ls"
alias dirmy_downlds="~/Documentos/Descargas/"

alias my_disp="cd /media/camilo/; ls"
alias dirmy_disp="~/Documentos/Descargas/"

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
source ~/Documentos/comandos/cordova_scripts.bash
# end my cordova


source ~/Documentos/comandos/exmaplebash.bash
