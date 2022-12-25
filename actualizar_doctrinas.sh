#!/usr/bin/bash
# Programa para bajar las fortunes de adoctrinamiento peronista.
# Requiere fortune, fortunes-es o fortune-mud
echo "Descargando todo..."
wget -O /tmp/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O /tmp/peron.cow https://caja.texto-plano.xyz/peron/fortune-phrases/peron2.cow
wget -O /tmp/pocho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pocho.cow
wget -O /tmp/vacapiloto.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vacapiloto.cow

echo "Moviendo ficheros..."
mv  /tmp/peron.cow /usr/share/cowsay/cows/peron.cow
mv  /tmp/pocho.cow /usr/share/cowsay/cows/pocho.cow
mv  /tmp/vacapiloto.cow /usr/share/cowsay/cows
mv /tmp/doctrina /usr/share/games/fortunes/es
cd /usr/share/games/fortunes/es/

echo "OK!"
echo 'Actualizando Doctrinas...'
strfile doctrina
echo 'Doctrinas actualizadas'
echo "Te devuelvo al directorio"
cd -
/usr/games/fortune -s doctrina | /usr/games/cowsay -f peron
