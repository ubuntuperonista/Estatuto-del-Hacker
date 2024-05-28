#!/data/data/com.termux/files/usr/bin/bash
# Programa para bajar frases de adoctrinamiento en Android
# Requiere termux, bash, fortune, fortunes-es o fortune-mud
echo "Descargando Fortunes para Android..."
cd ~/Downloads ;
wget -O ~/Downloads/doctrina https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget -O ~/Downloads/rms https://caja.texto-plano.xyz/peron/fortune-phrases/rms2

echo "Descargando cowfiles para GNU..."
wget -O /Downloads/cows.tar.gz https://caja.texto-plano.xyz/peron/fortune-phrases/cows/cows.tar.gz
tar xzf /Downloads/cows.tar.gz

echo "Moviendo ficheros .cow..."
mv -f /Downloads/cows/*.cow /data/data/com.termux/files/share/cowsay/cows/
rm -r /Downloads/cows/

echo "Moviendo fortunes..."
mv -f /Downloads/doctrina2 /data/data/com.termux/files/usr/share/games/fortunes/doctrina
mv -f /Downloads/rms2 /data/data/com.termux/files/usr/share/games/fortunes/rms

echo "Creando ejecutables..."
echo "fortune -f doctrina" > /data/data/com.termux/files/usr/local/bin/doctrina
echo "fortune -f rms" > /data/data/com.termux/files/usr/local/bin/rms
chmod +x /data/data/com.termux/files/usr/local/bin/doctrina
chmod +x /data/data/com.termux/files/usr/local/bin/rms

#Dispara una fortune adoctrinante de demostración
fortune -s doctrina | /usr/games/cowsay -f 17oct
