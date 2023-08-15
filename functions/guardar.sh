guardar(){
clear
echo "¿Seguro que quieres guardar la partida? (s/n)"
echo "Se sobreescribiran las partidas anteriores que tengan tu mismo nombre."
read answer
if [[ $answer == "s" ]]; then
  if ( ls ./saves/ | grep -q $name); then
    echo ""
  else
    mkdir ./saves/$name 
  fi
  echo "hp=$hp" > ./saves/$name/global_vars.sh
  echo "st=$st" >> ./saves/$name/global_vars.sh
  echo "int=$int" >> ./saves/$name/global_vars.sh
  echo "end=$end" >> ./saves/$name/global_vars.sh
  echo "hit_power=$hit_power" >> ./saves/$name/global_vars.sh
  echo "max_hp=$max_hp" >> ./saves/$name/global_vars.sh
  echo "global_wall_iterator=$global_wall_iterator" >> ./saves/$name/global_vars.sh
  echo "current_location_id=$current_location_id" >> ./saves/$name/global_vars.sh
  echo "sp=$sp" >> ./saves/$name/global_vars.sh
  echo "def=$def" >> ./saves/$name/global_vars.sh

  echo "${GREEN} Partida Guardada ${WHITE}"

elif [[ $answer == "n" ]];then
  echo "La partida no se guardo"
else
  echo "No entiendo"
fi
}
