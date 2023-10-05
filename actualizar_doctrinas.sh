#!/usr/bin/bash
# Programa para bajar las fortunes de adoctrinamiento peronista.
# Requiere fortune, fortunes-es o fortune-mud
echo "Descargando todo..."
wget -O /tmp/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O /tmp/peron.cow https://caja.texto-plano.xyz/peron/fortune-phrases/peron2.cow
wget -O /tmp/pocho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pocho.cow
wget -O /tmp/vacapiloto.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vacapiloto.cow
wget -O /tmp/3b2.cow https://caja.texto-plano.xyz/peron/fortune-phrases/3b2.cow
wget -O /tmp/pdp11_84.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pdp11_84.cow
wget -O /tmp/vax.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vax.cow
wget -O /tmp/vax3900.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vax3900.cow
wget -O /tmp/gaucho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/gaucho.cow

echo "Moviendo ficheros..."
mv  /tmp/peron.cow /usr/share/cowsay/cows/peron.cow
mv  /tmp/pocho.cow /usr/share/cowsay/cows/pocho.cow
mv  /tmp/vacapiloto.cow /usr/share/cowsay/cows
mv  /tmp/3b2.cow /usr/share/cowsay/cows
mv  /tmp/pdp11_84.cow /usr/share/cowsay/cows
mv  /tmp/vax.cow /usr/share/cowsay/cows
mv  /tmp/vax3900.cow /usr/share/cowsay/cows
mv  /tmp/gaucho.cow /usr/share/cowsay/cows
mv /tmp/doctrina /usr/share/games/fortunes/es
cd /usr/share/games/fortunes/es/

echo "OK!"
echo 'Actualizando Doctrinas...'
strfile doctrina
echo 'Doctrinas actualizadas'
echo "Te devuelvo al directorio"
cd -
/usr/games/fortune -s doctrina | /usr/games/cowsay -f peron
