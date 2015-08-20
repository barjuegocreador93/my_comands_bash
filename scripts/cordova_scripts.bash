#!/bin/bash



#permite copiar el ejecutable de un proyecto cordova a otro sitio

alias apk_dir="cd platforms/android/build/outputs/apk"

cp_apk()
{
if [ ! -d  platforms ]; then
  echo "no esta en un proyecto de cordova"
else
if [ "$1" = "build" ]; then
if [ ! -d  platforms/android ]; then 
cordova platform add android
fi
cordova build android
cordova compile android 
fi
	if [ -d platforms/android/build/outputs/apk ]; then
		read -p " Quire exportalo a una unidad externa (s/n): " UNI
		if [ "$UNI" = "s"  ]; then
			read -p "Escoja la unidad  y el lugar dentro de ella: " DIR
			if [ -d "$DIR" ]; then
			sd cp platforms/android/build/outputs/apk/android-debug.apk /media/camilo/$DIR
			else
			echo "No existe el directorio $DIR"
			fi	
		elif [ "$UNI" = "n" ]; then
			read -p " Escoja el directorio que dece copiar el apk: " DIR
			if [ -d "$DIR" ]; then
			sd cp platforms/android/build/outputs/apk/android-debug.apk "$DIR"
			else
			echo "No existe el directorio $DIR"
			fi			
		fi			
	fi
fi
if [ "$1" = "help" ]; then
echo "Comando creado por Camilo barbosa"
echo "para proyectos cordova"
echo "\n"
echo "Comando para copiar el apk de la plataforma andorid a otra carpeta o dispositivo sin mover un dedo!"
echo " build - Si no haz compilado el proyecto el lo hace todo y luego copia el archivo a donde deces"
fi
}


alias scordova_script.bash="source ${My_Comands_dir}/my_comands_bash/cordova_scripts.bash"
alias gcordova_script.bash="gedit ${My_Comands_dir}/my_comands_bash/cordova_scripts.bash"
