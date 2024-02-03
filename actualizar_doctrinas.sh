#!/usr/bin/bash
# Programa para bajar las fortunes de adoctrinamiento peronista directamente del repositorio original.
# Requiere fortune, fortunes-es o fortune-mud
echo "Descargando todo..."
wget -O /tmp/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O /tmp/rms https://caja.texto-plano.xyz/peron/fortune-phrases/rms2
wget -O /tmp/17oct.cow https://caja.texto-plano.xyz/peron/fortune-phrases/17oct_ascii.cow
wget -O /tmp/pocho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pocho.cow
wget -O /tmp/vacapiloto.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vacapiloto.cow
wget -O /tmp/3b2.cow https://caja.texto-plano.xyz/peron/fortune-phrases/3b2.cow
wget -O /tmp/3b2_400.cow https://caja.texto-plano.xyz/peron/fortune-phrases/3b2_400.cow
wget -O /tmp/pdp11_70.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pdp11_70.cow
wget -O /tmp/pdp11_84.cow https://caja.texto-plano.xyz/peron/fortune-phrases/pdp11_84.cow
wget -O /tmp/rms.cow https://caja.texto-plano.xyz/peron/fortune-phrases/rms.cow
wget -O /tmp/vax.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vax.cow
wget -O /tmp/vax3900.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vax3900.cow
wget -O /tmp/gaucho.cow https://caja.texto-plano.xyz/peron/fortune-phrases/gaucho.cow
wget -O /tmp/altair.cow https://caja.texto-plano.xyz/peron/fortune-phrases/altair.cow
wget -O /tmp/vt05.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vt05.cow
wget -O /tmp/vt52.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vt52.cow
wget -O /tmp/vt100.cow https://caja.texto-plano.xyz/peron/fortune-phrases/vt100.cow


echo "Moviendo ficheros .cow..."
mv -f /tmp/*.cow /usr/share/cowsay/cows/

echo "Moviendo fortunes..."
mv -f /tmp/doctrina /usr/share/games/fortunes/es
mv -f /tmp/rms /usr/share/games/fortunes/es

echo "OK!"
echo 'Actualizando Doctrinas...'
cd /usr/share/games/fortunes/es/
strfile doctrina
strfile rms
echo 'Doctrinas actualizadas'
echo "Te devuelvo al directorio"
cd -
#Dispara una fortune adoctrinante de demostración
/usr/games/fortune -s doctrina | /usr/games/cowsay -f 17oct
