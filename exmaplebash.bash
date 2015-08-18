#!/bin/bash





alias gExamplebah="gedit ~/${My_Comands_dir}/my_comands_bash/exmaplebash.bash"
alias sExamplebah="source ~/${My_Comands_dir}/my_comands_bash/exmaplebash.bash"



# directorio actual-> pwd

pausa()
{

read -p "Presiona intro para continuar: " var;


}





. ~/Documentos/comandos/Obj.sh




function vin()
{
	
	#Constructor	
	this=$1
	
	#
	#propiedades			
	export ${this}_name=$2		
	#
	#metodos
	
	function print()
	{	
				
		echo $(eval "echo \$${this}_name") 
	}
	function ejec()
	{
		
		y=$(eval "echo \$${this}_name")
		$y
	
	}	
}


function prog()
{
	function sal()
	{
		echo "Hola"
		read -p "Presiona intro para continuar: " var;
	}

	x=1
	while [ "$x" != "2" ]
	do
		clear
		echo "Menu Principal"
		echo "1. Saludo"
		echo "2. Salir"
		read -p "Seleccione la opcion: " x;
		case $x in
			1)Sal;;
		esac
			
	done
	clear		
	
}




