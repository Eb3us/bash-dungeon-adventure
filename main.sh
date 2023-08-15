#! /bin/bash

source ./functions/colors.sh
source ./functions/mirar/mirar.sh
source ./functions/ayuda.sh
source ./functions/salir.sh
source ./functions/guardar.sh
source ./functions/mirar_alrededor/comienzo.sh

shopt -s nocasematch

echo "Bienvenido a esta aventura!"
echo ""
echo "¿Que deseas hacer?"
echo "1.Comenzar a jugar"
echo "2.Cargar partida"
echo "3. Salir"
read main_menu
if [[ $main_menu == "1" ]]; then
  source ./functions/juego_nuevo.sh
elif [[ $main_menu == "2" ]]; then
  source ./functions/cargar.sh
elif [[ $main_menu == "3" ]]; then
  exit
else
  echo "Elige una de las opciones disponibles."
fi


global_cmd() {
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
    mirar_alred_comienzo
  elif [[ $answer == "mirar" ]]; then
    mirar comienzo
  elif [[ $answer == "guardar" ]]; then
    guardar 
  elif [[ $answer == "salir" ]]; then
    echo ""
    echo "¿Estas seguro de que quieres salir? (S/N)"
    salir_del_juego
  else
    clear
    echo "No puedo descifrar ese comando..."
  fi
  global_cmd
}
global_cmd

