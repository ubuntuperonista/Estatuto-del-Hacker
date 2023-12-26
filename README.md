# Estatuto-del-Hacker

Herramental ASCII para la terminal de línea de comandos, con Frases y aforismos de hacking y adoctrinamiento (en castellano). Requiere fortune o fortune-mud.

por ~peron <peron@texto-plano.xyz>

GPLv3

### Requerimientos
Para poder utilizar los ficheros de frases se requiere de alguna versión de fortune, fortune-mud, bsd fortune, o similar. Para las gráficas .cow requiere el programa cowsay o similar.

Estos paquetes suelen estar disponibles para la mayoría de las distribuciones de sistemas operativos similares a Unix.

## Frases Fortune de adoctrinamiento "Estatuto del Hacker"

Instale las frases de adoctrinamiento en castellano en su sistema operativo correspondiente.

  * **Instrucciones Para GNU/Linux**:

Copie <file>doctrina_linux</file> y <file>rms_linux</file> (fichero con frases de adoctrinamiento sin word wrap) en el directorio <file>/usr/share/games/fortunes/es/</file> de su sistema GNU/Linux. Puede hacerlo desde la terminal con los siguientes comandos:

<code bash>
cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_linux /usr/share/games/fortunes/es/doctrina
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_linux/rms_linux /usr/share/games/fortunes/es/doctrina
</code>

<code bash>
strfile /usr/share/games/fortunes/es/doctrina
strfile /usr/share/games/fortunes/es/rms
</code>

  * **Instrucciones Para BSD**:
Copia <file>doctrina_bsd</file> (fichero con las frases de adoctrinamiento, con word wrap a 72 líneas) en el directorio <file>/usr/share/games/fortune</file> de tu sistema BSD. Puede hacerlo desde la terminal con los estos comandos: 

<code bash>
cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_bsd /usr/share/games/fortune/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/rms_bsd /usr/share/games/fortune/rms
</code>


<code bash>
strfile /usr/share/games/fortune/doctrina ;
strfile /usr/share/games/fortune/rms
</code>

### Uso

Desde la terminal de su sistema operativo, use el programa fortune para llamar al fichero <file>doctrina</file>. Tanto en sistemas Ubuntu/Debian como BSD podrá hacerlo con:

<code>fortune doctrina</code>

o bien:

<code>fortune rms</code>

===

## Archivos .cow

Se trata de distintos ficheros de gráficos ASCII con extensión .cow, ada uno con un nuevo personaje que se puede usar con cowsay o programas similares.

Sigue las instrucciones para incorporalos al sistema que corresponda:

  * **Instrucciones para GNU/Linux**:

Copie los ficheros de los personajes <file>vacapiloto.cow</file>, <file>gaucho_hacker.cow</file>, <file>peron_ascii.cow</file>, <file>vax.cow</file>, <file>vax3900.cow</file>, <file>17oct_ascii.cow</file> y <file>rms.cow</file> en la carpeta carpeta <file>/usr/share/cowsay/cows/</file> de su sistema GNU/Linux. Podrá hacerlo con:

<code bash>$ sudo cp Estatuto-del-Hacker/cows/*.cow /usr/share/cowsay/cows/</code>


  * **Instrucciones para BSD**:

Copie los ficheros de los personajes <file>vacapiloto.cow</file>, <file>gaucho_hacker.cow</file>, <file>pdp11_84.cow</file>, <file>peron_ascii.cow</file>, <file>vax.cow</file>, <file>vax3900.cow</file>, <file>17oct_ascii.cow</file> y <file>rms.cow</file> en la carpeta <file>/usr/local/share/cows/</file> de su sistema BSD. Podrá hacerlo ingresando estos comandos:

<code bash>
sudo cp /tmp/Estatuto-del-Hacer/cows/*.cow /usr/local/share/cows/
</code>



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

Para decir una frase corta sin borrar la terminal:

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
