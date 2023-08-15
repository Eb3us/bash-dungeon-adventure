#! /bin/bash

cargar(){
echo "¿Como es el nimbre del personaje que quieres cargar?"
echo "Los personajes guardados en el dispositivo son:"
ls ./saves/
echo ""
read answer
if (ls ./saves/ | grep -q $answer); then 
  name=$answer
  source ./saves/$answer/global_vars.sh
else
  echo "No existe ese personaje"
  cargar
fi
}
cargar
