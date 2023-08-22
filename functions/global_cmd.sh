global_cmd() {
  trap '' INT TSTP
  room=$1; shift
  source ./functions/mirar_alrededor/$room.sh

  echo ""
  echo 'escribe "ayuda" para una lista de comandos'
  read answer
  if [[ $answer == "ayuda" ]]; then
    clear
    ayuda
  elif [[ $answer == "estadisticas" ]]; then
    clear
    echo "Estadisticas de ${RED} $name ${WHITE} "
    echo ""
    echo "Puntos de habilidad: $sp"
    echo "Fuerza: $st"
    echo "Resistencia: $end"
    echo "Inteligencia: $int"
    echo "Salud: $hp"
    echo ""
  elif [[ $answer == "asignar" ]]; then
    source ./functions/asign_sp.sh
  elif [[ $answer == "mirar alrededor" ]]; then
    mirar_alred_$room
  elif [[ $answer == "mirar" ]]; then
    mirar $room
  elif [[ $answer == "guardar" ]]; then
    guardar 
  elif [[ $answer == "salir" ]]; then
    echo ""
    echo "¿Estas seguro de que quieres salir? (S/N)"
    salir_del_juego
  else
    clear
    frases=("vacio" "Meditas en ello y te das cuenta de que no tiene ningun sentido" "¿De que rayos estas hablando?" "La vida es demasiado corta como para perderla pensando ese tipo de cosas" "Eso no sirve" "No te entiendo nada" "Mañana te cuento como resultó eso")
    nr=$[ $RANDOM % 6 + 1 ]
    echo ${frases[$nr]}
  fi
  global_cmd $room
}
