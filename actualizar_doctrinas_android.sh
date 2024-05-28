#!/data/data/com.termux/files/usr/bin/bash
# Programa para bajar frases de adoctrinamiento en Android
# Requiere termux, bash, fortune, fortunes-es o fortune-mud
echo "Descargando Fortunes para Android..."
cd /data/data/com.termux/files/usr/tmp/ ;
wget https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget https://caja.texto-plano.xyz/peron/fortune-phrases/rms2

echo "Descargando cowfiles para GNU..."
wget https://caja.texto-plano.xyz/peron/fortune-phrases/cows/cows.tar.gz
tar xzf /data/data/com.termux/files/usr/tmp/cows.tar.gz

echo "Moviendo ficheros .cow..."
mv -f /data/data/com.termux/files/usr/tmp/cows/*.cow /data/data/com.termux/files/share/cowsay/cows/
rm -r /data/data/com.termux/files/usr/tmp/cows/

echo "Moviendo fortunes..."
mv -f /data/data/com.termux/files/usr/tmp/doctrina2 /data/data/com.termux/files/usr/share/games/fortunes/doctrina
mv -f /data/data/com.termux/files/usr/tmp/rms2 /data/data/com.termux/files/usr/share/games/fortunes/rms

echo "Creando ejecutables..."
echo "fortune /data/data/com.termux/files/usr/share/games/fortunes/doctrina" > /data/data/com.termux/files/usr/bin/doctrina
echo "fortune /data/data/com.termux/files/usr/share/games/fortunes/rms" > /data/data/com.termux/files/usr/bin/rms
chmod +x /data/data/com.termux/files/usr/bin/doctrina
chmod +x /data/data/com.termux/files/usr/bin/rms

#Dispara una fortune adoctrinante de demostración
fortune -s /data/data/com.termux/files/usr/share/games/fortunes/doctrina | cowsay -f 17oct
