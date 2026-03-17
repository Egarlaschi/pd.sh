
# PD.SH

script per bestemmiare silenziosamente nei cluster della 42


## Requisiti
necessario lolcat per l'effetto colorato
sui computer del cluster puoi installarlo con
```bash
pip install lolcat
```
## Installazione

scarica la repo

```bash
git clone https://github.com/Egarlaschi/pd.sh.git
```

entra nella cartella della repo

```bash
cd pd.sh
```    

imposta lo script come eseguibile

```bash
chmod +x pd.sh
```

sposta pd.sh nella cartella degli script

```bash
mv pd.sh ~/.local/bin
```

imposta l'alias

```bash
echo "alias pd='~/.local/bin/pd.sh'" >> ~/.zshrc
```
## Utilizzo
quando avviato con "pd" lo script sta in modalita' bestemmie.
con SPAZIO e ENTER puoi generare una nuova bestemmia a seconda di quanto
sei infastidito.

## Chiarimenti
Se lolcat da errori modificare il file pd.sh
al suo interno sono presenti maggiori informazioni

per uscire dal programma, puoi usare CTRL-C
