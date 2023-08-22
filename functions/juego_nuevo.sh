#! /bin/bash
shopt -s nocasematch
source ./functions/global_vars.sh
empezar(){
  echo "¿Como te llamas?"
  read name
  if (ls ./saves/ | grep -q "^$name$"); then
    echo "Ese nombre ya esta siendo usado por otro jugador en este dispositivo. Elegi otro."
    empezar 
  else
    clear
    echo "Hola, $name! Tienes 2 puntos de habilidad disponibles!"
    echo ""
    echo 'Puedes asignar tus puntos de habilidad (si los tienes) en cualquier momento escribiendo "asignar" (sin las comillas), prueba hacerlo ahora.'
    echo ""
    asign1(){
    read asign_1
    if [[ $asign_1 == "asignar" ]]; then
      source ./functions/asign_sp.sh
    else 
      echo "Prueba asignar tus puntos de habilidad disponibles escribiendo la palabra 'asignar'."
      asign1
    fi
    }
    asign1
    echo "Bien Hecho! Aquí comienza tu aventura, puedes comenzar escribiendo 'ayuda' para ver los comandos disponibles."
    echo ""
    echo "Probablemente el primero que quieras usar es 'mirar alrededor' para ver donde estas. Buena suerte aventurer@!"
    echo ""
    echo "Para ver tus puntos de habilidad disponibles, salud y mas informacion sobre ti mismo escribe 'estadisticas'"
  fi
}
empezar
