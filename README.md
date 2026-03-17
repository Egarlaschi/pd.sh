piccolo script per le bestemmie.
UTILIZZO:
pd per eseguire lo script
per uscire dalla modalita' bestemmie usa ctrl-c o ctrl-d
in modalita' bestemmie premi spazio o enter per generare un'altra bestemmia

REQUISITI:
lolcat

//per installarlo sui pc della 42 esegui
pip install lolcat

INSTALLAZIONE:

//clona la repo
git clone https://github.com/Egarlaschi/pd.sh.git

//entra nella cartella della repo
cd pd.sh

//imposta lo script come eseguibile
chmod +x pd.sh

//sposta pd.sh nella cartella degli script
mv pd.sh ~/.local/bin

//imposta l'alias
echo "alias pd='~/.local/bin/pd.sh" >> ~/.zshrc
