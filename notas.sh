numeroAprobados=0
numeroSuspendidos=0

read -p "Introduce el numero de notas: " nn

if ((nn <= 0)); then
    echo "El numero no es válido. Saliendo..."
else
    for ((i=1;i<=nn;i++)); do
        read -p "Nota: " n
        notas=$((notas+n))

        if ((n >= 5)); then
            echo "Has aprobado"
            numeroAprobados=$((numeroAprobados+1))
        elif ((n<5)); then
            echo "Has suspendido"
            numeroSuspendidos=$((numeroSuspendidos+1))
        fi
    done
    echo
    echo "Has aprobado $numeroAprobados examenes"
    echo "Has suspendido $numeroSuspendidos examenes"
    media=$((notas/nn))
    echo "Y tu nota media es de $media"
fi