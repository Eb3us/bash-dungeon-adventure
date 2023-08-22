main_menu_fnc(){
  clear
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
    main_menu_fnc
  fi
}

