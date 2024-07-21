#!/usr/bin/bash
# Programa para bajar las fortunes de adoctrinamiento peronista directamente del repositorio original.
# Requiere fortune, fortunes-es o fortune-mud
echo "Descargando Fortunes para GNU..."
cd /tmp ;
wget -O /tmp/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O /tmp/doctrina.sh https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina.sh
wget -O /tmp/rms https://caja.texto-plano.xyz/peron/fortune-phrases/rms2
wget -O /tmp/rms.sh https://caja.texto-plano.xyz/peron/fortune-phrases/rms.sh
wget -O /tmp/excusas https://caja.texto-plano.xyz/peron/fortune-phrases/excusas2
wget -O /tmp/pintadas https://caja.texto-plano.xyz/peron/fortune-phrases/pintadas
echo "Descargando cowfiles para GNU..."
wget -O /tmp/cows.tar.gz https://caja.texto-plano.xyz/peron/fortune-phrases/cows/cows.tar.gz
tar xzf /tmp/cows.tar.gz

echo "Moviendo ficheros .cow..."
mv -f /tmp/cows/*.cow /usr/share/cowsay/cows/
rm -r /tmp/cows/

echo "Moviendo fortunes..."
mv -f /tmp/doctrina /usr/share/games/fortunes/es
mv -f /tmp/rms /usr/share/games/fortunes/es
mv -f /tmp/excusas /usr/share/games/fortunes/es
mv -f /tmp/pintadas /usr/share/games/fortunes/es

echo "Moviendo programas..."
mv -f /tmp/doctrina.sh /usr/local/bin/doctrina
mv -f /tmp/rms.sh /usr/local/bin/rms
chmod +x /usr/local/bin/doctrina
chmod +x /usr/local/bin/rms

echo "OK!"
echo 'Actualizando Doctrinas...'
cd /usr/share/games/fortunes/es/
strfile doctrina
strfile rms
strfile excusas
strfile pintadas
echo 'Doctrinas actualizadas'
echo "Te devuelvo a $HOME/"
cd ~
#Dispara una fortune adoctrinante de demostración
/usr/games/fortune -s doctrina | /usr/games/cowsay -f 17oct
