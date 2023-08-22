#! /bin/bash
source ./functions/colors.sh
source ./functions/mirar/mirar.sh
source ./functions/ayuda.sh
source ./functions/salir.sh
source ./functions/guardar.sh
source ./functions/global_cmd.sh
source ./functions/main_menu.sh

shopt -s nocasematch

main_menu_fnc
global_cmd comienzo
