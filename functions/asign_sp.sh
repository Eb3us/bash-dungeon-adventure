asign_one_more(){
  if (($sp > 0)); then
    echo "Te quedan $sp puntos de habilidad. ¿Quieres asignarlos ahora? (S/N)"
    read asign
    if [[ $asign =~ (s|si) ]];then 
      asign_sp
    elif [[ $asign =~ (n|no) ]]; then
      echo "Ok"
    else
      echo "Por favor responde si o no."
      asign_one_more
    fi
  fi
}
asign_sp() {
  if (($sp > 0)); then
    echo "Elige a que habilidad asignar tus puntos: (fuerza/resistencia/inteligencia)"
    echo ""
    read answer
    if [[ $answer == "fuerza" ]]; then
      clear
      st=$(($st+1))
      sp=$(($sp - 1))
      max_hp=$(($max_hp + 5))
      echo "Asignaste 1 punto a 'fuerza' tu fuerza actual es $st"
      echo ""
      asign_one_more
    elif [[ $answer == "resistencia" ]]; then
      clear
      res=$(($end+1))
      sp=$(($sp - 1))
      echo "Asignaste 1 punto a 'resistencia' tu resistencia actual es $end"
      echo ""
      asign_one_more
    elif [[ $answer == "inteligencia" ]]; then
      clear
      int=$(($int+1))
      sp=$(($sp - 1))
      echo "Asignaste 1 punto a 'inteligencia' tu inteligencia actual es $int"
      echo ""
      asign_one_more
    else 
      echo "Elige una de las tres habilidades disponibles (fuerza/resistencia/inteligencia)"
      asign_sp
    fi
  else 
    echo "No tienes puntos de habilidad"
    echo ""
  fi
}
asign_sp
