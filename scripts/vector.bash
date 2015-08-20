#!/bin/bash

# Clase base. (1)
function Vector()
{
    # Un puntero a esta clase. (2)
    base=$FUNCNAME
    this=$1

    # Herencia de clases (opcional). (3)
    export ${this}_inherits="Class1 Class2 Class3" # (3.1)

    for class in $(eval "echo \$${this}_inherits")
    do
        for property in $(compgen -A variable ${class}_)
        do
            export ${property/#$class\_/$this\_}="${property}" # (3.2)
        done

        for method in $(compgen -A function ${class}_)
        do
            export ${method/#$class\_/$this\_}="${method} ${this}"
        done
    done

    # Declaramos las propiedades. (4)
    export ${this}_x=$2
    export ${this}_y=$3
    export ${this}_z=$4

    # Declaramos los métodos. (5)
    for method in $(compgen -A function)
    do
        export ${method/#$base\_/$this\_}="${method} ${this}"
    done
}

# Representación visual del vector. (6)
function Vector_show()
{
    # (7)
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1

    x=$(eval "echo \$${this}_x")
    y=$(eval "echo \$${this}_y")
    z=$(eval "echo \$${this}_z")

    echo "$this ($x, $y, $z)"
}

# Suma de vectores.
function Vector_add()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
    other=$2

    # Obtenemos sus componentes
    x1=$(eval "echo \$${this}_x")
    y1=$(eval "echo \$${this}_y")
    z1=$(eval "echo \$${this}_z")

    x2=$(eval "echo \$${other}_x")
    y2=$(eval "echo \$${other}_y")
    z2=$(eval "echo \$${other}_z")

    # Sumamos sus componentes
    x=$(($x1 + $x2))
    y=$(($y1 + $y2))
    z=$(($z1 + $z2))

    # Creamos un nuevo vector. (8)
    Vector 'vector3' $x $y $z

    $vector3_show
}
