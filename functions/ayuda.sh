ayuda() {
  opciones_de_ayuda=(
    "${RED} estadisticas: ${WHITE} muestra tus estadisticas"
    "${RED} asignar: ${WHITE} agrega puntos de habilidad"
    "${RED} mirar: ${WHITE} mirar hacia alguna direccion"
    "${RED} mirar alrededor: ${WHITE} ¿de verdad lo preguntas? bueno quizas si debas mirar alrededor si nos sabes ni donde estas parado"
    "${RED} caminar: ${WHITE} caminar hacia alguna direccion"
    "${RED} agarrar (cosa): ${WHITE} por ej.agarrar alguna cosa por ej. 'agarrar plato de metal' (ten cuidado con lo agarras)"
    "${RED} atacar: ${WHITE} atacar a un enemigo"
    "${RED} inventario: ${WHITE} ver inventario "
    "${RED} guardar: ${WHITE} guardar el progreso "
    "${RED} salir: ${WHITE} salir del juego"
  )
  echo "Comandos:"
  echo ""
  for opcion in "${opciones_de_ayuda[@]}"; do
    echo $opcion
  done
}

