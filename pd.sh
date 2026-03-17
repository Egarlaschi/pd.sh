#!/bin/bash

#MODIFICA I PATH CORRETTI QUI SOTTO SE NN DOVESSE FUNZIONARE.

eval "$(/nfs/homes/$USER/.local/bin/brew shellenv bash)"
LOLCAT="/nfs/homes/$USER/.local/bin/lolcat"

ripristina_terminale() {
    stty echo      
    tput cnorm     
    echo -e "\n\n"
    exit 0
}

trap ripristina_terminale SIGINT EXIT

clear              
stty -echo         
tput civis         


stampa_banner() {
cat << 'EOF' | $LOLCAT -f
 ▄▀▀▄▀▀▀▄  ▄▀▀▀▀▄   ▄▀▀▄▀▀▀▄  ▄▀▄▄▄▄   ▄▀▀▀▀▄   ▄▀▀█▄▄   ▄▀▀█▀▄   ▄▀▀▀▀▄  
█   █   █ █      █ █   █   █ █ █    ▌ █      █ █ ▄▀   █ █   █  █ █      █ 
▐  █▀▀▀▀  █      █ ▐  █▀▀█▀  ▐ █      █      █ ▐ █    █ ▐   █  ▐ █      █ 
   █      ▀▄    ▄▀  ▄▀    █    █      ▀▄    ▄▀   █    █     █    ▀▄    ▄▀ 
 ▄▀         ▀▀▀▀   █     █    ▄▀▄▄▄▄▀   ▀▀▀▀    ▄▀▄▄▄▄▀  ▄▀▀▀▀▀▄   ▀▀▀▀   
█                  ▐     ▐   █     ▐           █     ▐  █       █         
▐                            ▐                 ▐        ▐       ▐         
EOF
    echo -e "\n\n"
}

stampa_banner 

while true; do
    if IFS= read -r -s -n 1 tasto; then
        if [[ "$tasto" == " " || -z "$tasto" ]]; then
            stampa_banner
        fi
    fi
done
