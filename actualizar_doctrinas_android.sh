#!/data/data/com.termux/files/usr/bin/bash
# Programa para bajar frases de adoctrinamiento en Termux para Android
# Requiere termux, bash, fortune, fortunes-es o fortune-mud
echo "Descargando Fortunes para Android..."
cd $PREFIX/tmp/ ;
wget https://caja.texto-plano.xyz/peron/fortune-phrases/doctrina2
wget https://caja.texto-plano.xyz/peron/fortune-phrases/rms2
wget https://caja.texto-plano.xyz/peron/fortune-phrases/theo2


echo "Descargando cowfiles para Android..."
wget https://caja.texto-plano.xyz/peron/fortune-phrases/cows/cows.tar.gz
tar xzf $PREFIX/tmp/cows.tar.gz

echo "Moviendo ficheros .cow..."
mv $PREFIX/tmp/cows/*.cow $PREFIX/share/cowsay/cows/
rm -r $PREFIX/tmp/cows

echo "Moviendo fortunes..."
mv $PREFIX/tmp/doctrina2 $PREFIX/share/games/fortunes/doctrina
mv $PREFIX/tmp/rms2 $PREFIX/share/games/fortunes/rms
mv $PREFIX/tmp/theo2 $PREFIX/share/games/fortunes/theo


echo "Creando ejecutables..."
echo "fortune $PREFIX/share/games/fortunes/doctrina" > $PREFIX/bin/doctrina
echo "fortune $PREFIX/share/games/fortunes/rms" > $PREFIX/bin/rms
echo "fortune $PREFIX/share/games/fortunes/theo" > $PREFIX/bin/theo
wget https://caja.texto-plano.xyz/peron/fortune-phrases/vaca_android.sh
mv vaca_android.sh $PREFIX/bin/vaca
chmod +x $PREFIX/bin/doctrina
chmod +x $PREFIX/bin/rms
chmod +x $PREFIX/bin/theo
chmod +x $PREFIX/bin/vaca

#Dispara una fortune adoctrinante de demostración
fortune -s $PREFIX/share/games/fortunes/doctrina | cowsay -f 17oct
