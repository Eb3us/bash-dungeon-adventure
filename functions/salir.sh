salir_del_juego() {
    read salir
    if [[ $salir =~ (s|si) ]]; then
      exit
    elif [[ $salir =~ (n|no) ]]; then
      echo "Ya me parecia que no eras taaaaan cobarde"
    else 
      echo "Por favor responde con si o no."
      salir_del_juego
    fi
  }
