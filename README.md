# Estatuto-del-Hacker

Herramental ASCII para la terminal de línea de comandos, con Frases y aforismos de hacking y adoctrinamiento (en castellano). Requiere fortune o fortune-mud.

por ~peron <peron@texto-plano.xyz>

GPLv3

### Requerimientos
Requiere de alguna versión de fortune, fortune-mud, bsd-fortune, o similar. Para las gráficas .cow requiere el programa cowsay o similar.

Estos paquetes suelen estar disponibles para la mayoría de las distribuciones de sistemas operativos similares a Unix.

## Frases Fortune de adoctrinamiento "Estatuto del Hacker"

Copie doctrina_linux y rms_linux (ficheros con frases de adoctrinamiento sin word wrap situados en el directorio Estatuto-del-Hacker/fortunes) en el directorio <file>/usr/share/games/fortunes/es/</file> de su sistema GNU/Linux. 
Copie los ficheros de los personajes <file>vacapiloto.cow</file>, <file>gaucho_hacker.cow</file>, <file>peron_ascii.cow</file>, <file>vax.cow</file>, <file>vax3900.cow</file>, <file>17oct_ascii.cow</file> y <file>rms.cow</file> en la carpeta carpeta <file>/usr/share/cowsay/cows/</file> de su sistema GNU/Linux. 
Use strfile para incorporar los ficheros .DAT. 

<code bash>cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_linux /usr/share/games/fortunes/es/doctrina
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_linux/rms_linux /usr/share/games/fortunes/es/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/cows/*.cow /usr/share/cowsay/cows/ ;
cd /usr/share/games/fortunes/es/ ;
sudo strfile /usr/share/games/fortunes/es/doctrina ;
sudo strfile /usr/share/games/fortunes/es/rms</code>


###Instrucciones de Instalación en BSD:

Copie <file>doctrina_bsd</file> y <file>rms_bsd</file> (ficheros con las frases de adoctrinamiento, con word wrap a 72 líneas situados en el directorio <file>Estatuto-del-Hacker/fortunes</file>) en el directorio <file>/usr/share/games/fortune/</file> de su sistema BSD.
Copie los ficheros de los personajes <file>vacapiloto.cow</file>, <file>gaucho_hacker.cow</file>, <file>peron_ascii.cow</file>, <file>vax.cow</file>, <file>vax3900.cow</file>, <file>17oct_ascii.cow</file>, <file>pdp11_84.cow</file> y <file>rms.cow</file> situados en la carpeta <file>Estatuto-del-Hacker/cows</file> carpeta <file>/usr/local/share/cows</file> de su sistema BSD.
Use strfile para incorporar los ficheros .DAT.

<code bash>cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_bsd /usr/share/games/fortune/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/rms_bsd /usr/share/games/fortune/rms ;
sudo cp /tmmp/Estatuto-del-Hacker/cows/*.cow /usr/local/share/cows/ ;
cd /usr/share/games/fortune/ ;
sudo strfile /usr/share/games/fortune/doctrina ;
sudo strfile /usr/share/games/fortune/rms</code>
  
### Uso

Solicite una frase al azar con:

<code bash>fortune doctrina</code>

o bien:

<code bash>fortune rms</code>

Podrá dirigir la salida del comando a un personaje de cowsay por medio de pipes. 
Por ejemplo:

<code bash>clear && fortune doctrina | cowsay -f peron</code>

<code>
 _________________________________________
/ Los hackers unidos, triunfaremos        \
\ ----------------------------------------/
 \
  \           _______
  \o/        \ peron \     ---------
------+       \-------    | C  G  T |
:::::::::::::::\::::::::::|---------|:::::::::::
%%%%%%%%%%%%%%%%\%%%%%%%%%|%%%%%%%%%|%%%%%%%%%%%
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
oooooooooooooooooooooooooooooooooooooooooooooooo
    <o/ ~   \o\  ~o|  o/    o  _____   _o
     |  +o   |    |   |     |\|chori|   |\
    /\  /z   /\   /\  /\   /\  o   o    /\
</code>

Para solicitar una frase corta al azar sin borrar la terminal:

<code bash>$ fortune -s doctrina | cowsay -f pocho</code>

<code>
 _____________________________________
/ Quien programe, comente. Quien use, \
\ documente.                          /
 -------------------------------------
        \
         \  ,_____._____
     ,_.    /-_---------_\
    /  |   ||           ||        /\
   /  <    \|.__.   .__.|/       | l
  |    /    |E==<   E==<|      n J |
  |  /     G|    | |    |D     \   |
  | |      \|  , q_p ,  |J     _|__/_
 ====       | /._____.\ |      |\__/|
 |   |      (   \___J   )      |    |
 |   |      (  =.___- = )     /    /
 |   |       (.__-___,)      /    /
  \   |____----+   |________/    /
   \        \   \/   _/        /
    \_____   \  /   /   ______/
</code>
