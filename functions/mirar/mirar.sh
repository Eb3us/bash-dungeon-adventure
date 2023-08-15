#! /bin/bash
mirar(){
  room=$1; shift
  source ./functions/mirar/$room/descripcion.sh
  source ./functions/mirar/$room/results.sh


  echo ""
  echo "¿Hacia donde quieres mirar?"
  echo ""
  echo "0. Norte"
  echo "1. Este"
  echo "2. Sur"
  echo "3. Oeste"
  # put here each location's extra options
  desc_$room
  echo "Q. Dejar de mirar"
  read answer
  #put here each location's functions
  res_comienzo
}
