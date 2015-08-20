#!/bin/bash

function SETPROPERTY {
	# objeto propiedad valor
	ob=$(echo $1 | cut -d "-" -f 2)
	if test -e $ob.var 
	then 
		cat $ob.var | grep -v "$2" > $1.var
	fi
	echo "$2=$3" >> $ob.var
}

function GETPROPERTY {
	# p=Objeto value=Propiedad
	ob=$(echo $1 | cut -d "-" -f 2)
	if test -e $ob.var; then r=$(cat $ob.var | grep -w "$2" | cut -d "=" -f 2); fi
	echo -e "$r \c"
}

function New {
	# Instancia un objeto
	nm=$(echo $* | cut -d " " -f 2)
	ty=$(echo $* | cut -d " " -f 1)
	if [[ -e $ty.sh ]]; then 
		cp $ty.sh $ty.sh-$nm 
		chmod a+x $ty.sh-$nm
		export $nm=$ty.sh-$nm
	else
		echo "El Objeto "$ty" no existe en" $(pwd)
	fi
}


function Unload {
	if test -e $1; then rm $1; fi
	if test -e $1.var; then rm $1.var; fi
	o=$(echo $1 | cut -d "-" -f 2)
	if test -e $o.var; then rm $o.var; fi
}

function pr {
	o=$(echo $1 | cut -d "-" -f 1)
	p=$(echo $1 | cut -d "-" -f 2 | cut -d "." -f 1)
	m=$(echo $* | cut -d "." -f 3)
	sm=$(echo $1 | cut -d "." -f 3)
	property=$(echo $m | cut -d "=" -f 1)
	property=$(echo $property | cut -d " " -f 2)
	value=$(echo $m | cut -d "=" -f 2)
	
	
	if [[ $sm = "GET" ]]
	then
		GETPROPERTY $o-$p $value
	else
		if [[ $sm = "SET" ]]
		then
			SETPROPERTY $o-$p $property $value
		else
			./$o-$p $m $4 $5 $6 $7 $8 $9
		fi
	fi
	
}
