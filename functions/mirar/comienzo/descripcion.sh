desc_comienzo(){
    echo "4. Plato de metal"
    echo "5. Catre"
    if (( $int > 1 )) || [[ $global_wall_iterator == 0 ]]; then
      echo "6. Agujero en la pared"
    fi
}
