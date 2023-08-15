#! /bin/bash
mirar(){
  echo ""
  echo "¿Hacia donde quieres mirar?"
  echo ""
  echo "0. Norte"
  echo "1. Este"
  echo "2. Sur"
  echo "3. Oeste"
  # put here each location's extra options
  if [[ $1 == "global" ]]; then
    echo "4. Plato de metal"
    echo "5. Catre"
    if (( $int > 1 )) || [[ $global_wall_iterator == 0 ]]; then
      echo "6. Agujero en la pared"
    fi
  fi
  echo "Q. Dejar de mirar"
  read answer
  #put here each location's functions
  if [[ $1 == "global" ]]; then
    if [[ $answer == "0" ]] || [[ $answer == "Norte" ]]; then
      clear
      echo "No puedes ver nada en la pared de piedra que te llame la atención"
      mirar global
    elif [[ $answer == "1" ]] || [[ $answer == "Este" ]]; then
      clear
      echo "Ves la puerta de la celda, esta entrabierta, a traves de las rejas puedes ver un pasillo de piedra con una puerta de rejas de cada lado, por el angulo no llegas a ver el final del pasillo."
      mirar global
    elif [[ $answer == "2" ]] || [[ $answer == "Sur" ]]; then
      clear
      echo "La pared esta hecha de piedra, no ves nada que te llame la atención a simple vista"
      if (( $int > 1 )) || [[ $global_wall_iterator == 0 ]]; then
      echo ""
      echo "En la parte inferior de la pared ves un pequeño agujero entre las piedras"
      fi
      if (( $int == 1 )) && [[ $global_wall_iterator == 1 ]]; then
      global_wall_iterator=0
      fi
      mirar global
    elif [[ $answer == "3" ]] || [[ $answer == "Oeste" ]]; then
      clear
      echo "Ves el catre donde te despertaste sin recordar nada de tu puta vida."
      mirar global
    elif [[ $answer == "4" ]] || [[ $answer == "Plato de metal" ]]; then
      clear
      echo "Un plato de metal. Vacio. Nada mas."
      mirar global
    elif [[ $answer == "5" ]] || [[ $answer == "Catre" ]]; then
      clear
      echo "Ves el catre donde te despertaste sin recordar nada de tu puta vida."
      mirar global
    elif [[ $answer == "6" ]] || [[ $answer == "Hueco en la pared" ]]; then
      if (( $int > 1 )) || [[ $global_wall_iterator == 0 ]]; then
        echo "Ves un par de dados y una nota."
        mirar global
      else
        mirar global
      fi
    elif [[ $answer == "Q" ]]; then
      echo "Vuelves a lo tuyo"
    else
      echo "No lo ves muy claro"
      mirar global
    fi
  fi
}
