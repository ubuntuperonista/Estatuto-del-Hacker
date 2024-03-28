#!/usr/bin/bash
# Programa para bajar las fortunes de adoctrinamiento peronista directamente del repositorio original.
# Requiere fortune, fortunes-es o fortune-mud
echo "Descargando todo..."
wget -O /tmp/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O /tmp/rms https://caja.texto-plano.xyz/peron/fortune-phrases/rms2
wget -O /tmp/excusas https://caja.texto-plano.xyz/peron/fortune-phrases/excusas2
wget -O /tmp/pintadas https://caja.texto-plano.xyz/peron/fortune-phrases/pintadas
wget -O /tmp/17oct.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/17oct_ascii.cow
wget -O /tmp/pocho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/pocho.cow
wget -O /tmp/osinde.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/osinde.cow
wget -O /tmp/vacapiloto.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vacapiloto.cow
wget -O /tmp/vaca.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vaca.cow
wget -O /tmp/vaca2.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vaca2.cow
wget -O /tmp/fido.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/fido.cow
wget -O /tmp/3b2.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/3b2.cow
wget -O /tmp/3b2_400.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/3b2_400.cow
wget -O /tmp/pdp11_70.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/pdp11_70.cow
wget -O /tmp/pdp11_84.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/pdp11_84.cow
wget -O /tmp/rms.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/rms.cow
wget -O /tmp/vax.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vax.cow
wget -O /tmp/vax3900.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vax3900.cow
wget -O /tmp/gaucho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/gaucho.cow
wget -O /tmp/luser.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/luser.cow
wget -O /tmp/obrero.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/obrero.cow
wget -O /tmp/altair.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/altair.cow
wget -O /tmp/vt05.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vt05.cow
wget -O /tmp/vt52.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vt52.cow
wget -O /tmp/vt100.cow https://caja.texto-plano.xyz/peron/fortune-phrases/cows/vt100.cow

echo "Moviendo ficheros .cow..."
mv -f /tmp/*.cow /usr/share/cowsay/cows/

echo "Moviendo fortunes..."
mv -f /tmp/doctrina /usr/share/games/fortunes/es
mv -f /tmp/rms /usr/share/games/fortunes/es
mv -f /tmp/excusas /usr/share/games/fortunes/es


echo "OK!"
echo 'Actualizando Doctrinas...'
cd /usr/share/games/fortunes/es/
strfile doctrina
strfile rms
strfile pintadas
echo 'Doctrinas actualizadas'
echo "Te devuelvo al directorio"
cd -
#Dispara una fortune adoctrinante de demostración
/usr/games/fortune -s doctrina | /usr/games/cowsay -f 17oct
