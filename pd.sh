#!/bin/bash

# 1. Setup ambiente e variabili
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
LOLCAT="/home/linuxbrew/.linuxbrew/bin/lolcat"

# 2. Funzione di ripristino
ripristina_terminale() {
    stty echo      # Riattiva la tastiera
    tput cnorm     # Mostra il cursore
    echo -e "\n\n"
    exit 0
}

# CORREZIONE: Aggiunto EXIT per ripristinare il terminale in qualsiasi caso di chiusura
trap ripristina_terminale SIGINT EXIT

# 3. SETUP INIZIALE
clear              
stty -echo         # Muta la tastiera
tput civis         # Nasconde il cursore

# 4. Funzione di stampa
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

# Ciclo di ascolto
while true; do
    if IFS= read -r -s -n 1 tasto; then
        if [[ "$tasto" == " " || -z "$tasto" ]]; then
            stampa_banner
        fi
    fi
done