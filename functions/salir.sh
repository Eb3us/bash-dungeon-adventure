salir_del_juego() {
    read salir
    if [[ $salir =~ (s|si) ]]; then
      quiere_guardar_func
    elif [[ $salir =~ (n|no) ]]; then
      echo "Claro, hijo."
    else 
      echo "Hablá bien."
      salir_del_juego
    fi
  }
  quiere_guardar_func() {
      clear
      echo "¿Querria le señorite guardar la partida antes de salir? S/N"
      read quiere_guardar
      if [[ $quiere_guardar =~ (si|s) ]]; then
        guardar
        sleep 1
        exit
      elif [[ $quiere_guardar =~ (no|n) ]]; then
        exit
      else
        clear
        echo "Responda si o no por favor."
        quiere_guardar_func
      fi
  }
