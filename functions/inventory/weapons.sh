declare -A STRENGHT=(
  [plank_nail]=1
  [dagger]=2
  [short_sword]=3
  [rusty_axe]=4
  [big_axe]=6
  [magic_sword]=8
)

declare -A SPEED=(
  [plank_nail]=3
  [dagger]=5
  [short_sword]=4
  [rusty_axe]=2
  [big_axe]=1
  [magic_sword]=8
)

declare -A DESC=(
  [plank_nail]="A wooden plank with a rusty nail stuck on one of it's extremes. It looks dangerous... to yourself."
  [dagger]="A small dagger."
  [short_sword]="A short sword you stole from the dead guard. He won't be missing it."
  [rusty_axe]="A rusty old axe. You better be carefull with it."
  [big_axe]="A very large axe."
  [magic_sword]="You are humbled by the very sight of this splendid blade. It's golden handle is carved with ancient jeroplyphs and it's blade shines with a magic glare. You are clearly not worthy of it."
)

declare -a weapons=(plank_nail dagger short_sword rusty_axe big_axe magic_sword)

#echo ${weapons[0]}
#echo ${SPEED[${weapons[2]}]}
