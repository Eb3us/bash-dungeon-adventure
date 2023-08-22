mirar_alred_comienzo() {
  if (( $primera_vez > 0 )); then
   clear
   echo "Abres los ojos y sientes como si te la hubieras dado en la pera con merca y extasis, los parpados te pesan, te duele la cabeza y tu estomago parece un barco en una tormenta, tus labios están secos y tu garganta también."
   echo ""
   echo "Te sientas en el duro catre de piedra agarrandote la cabeza y mientras vomitas una sustancia verdosa indefinida intentas recordar como llegaste hasta aqui..."
   echo ""
   echo "Luego de unos segundos te das cuenta de que no recuerdas absolutamente nada, no sabes quien eres ni como llegaste hasta aquí. Un dia de mierda."
   echo ""
   echo "Ya a esta altura decides mirar alrededor (ya era hora)."
   primera_vez=$(($primera_vez - 1))
  else
   clear
  fi
  echo "Estas en una celda, mas bien una mazmorra, toda de piedra que se ve bien solida. Al oeste esta el catre donde estas sentado, a su lado hay un plato de metal vacio. Hacia el este se encuentra una puerta de rejas que esta entre abierta. No se ve a nadie ni se escucha nada."
  echo ""
  echo "Al norte y al sur hay regias (keseso¿?) paredes de piedra sin nada interesante que puedas ver a primera vista."
  echo ""
  if (( $int > 1 )); then
  echo "Miras con mayor atención la pared que está al sur y te das cuenta que hay un pequeño hueco pegado al suelo"
  echo ""
  fi
}
