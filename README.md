# Estatuto-del-Hacker
Herramental ASCII para la terminal con Frases y aforismos de hacking y adoctrinamiento peronista en castellano para fortune o fortune-mud.

por ~peron <peron@texto-plano.xyz>
GPLv3

### Requerimientos
Para poder utilizar los ficheros de frases se requiere de alguna versión de fortune, fortune-mud, bsd fortune, o similar, y para las gráficas cowsay o similar. 
Estos paquetes suelen estar disponibles para la mayoría de las distribuciones de sistemas operativos similares a Unix.

## Frases Fortune de adoctrinamiento "Estatuto del Hacker"

Instala las frases de adoctrinamiento en castellano.

  * **Para BSD**:
Copia <file>doctrina_bsd</file> (fichero con las frases de adoctrinamiento, con word wrap a 72 líneas) en el directorio <file>/usr/share/games/fortune</file> de tu sistema. Puedes hacerlo desde la terminal con los comandos siguientes: 

<code bash>$ cp doctrina_bsd /usr/share/games/fortune/doctrina</code>

<code bash>$ strfile /usr/share/games/fortune/doctrina</code>

  * **Para GNU/Linux**:
Copia <file>doctrina_linux</file> (frases de adoctrinamiento sin word wrap) en el directorio <file>/usr/share/games/fortunes/es/</file> de tu sistema. Puedes hacerlo desde la terminal con los siguientes comandos:

<code bash>$ cp doctrina_linux /usr/share/games/fortunes/es/doctrina</code>

<code bash>$ strfile /usr/share/games/fortunes/es/doctrina</code>

### Uso

Desde la terminal, usa fortune para llamar al fichero <file>doctrina</file>. En Ubuntu/Debian y BSD spodrás hacerlo con:

<code>fortune doctrina</code>

===

## Archivos COW

Distintos ficheros gráficos ASCII de extensión .cow con nuevos personajes para cowsay.

Sigue las instrucciones para incorporalos:

  * **Para BSD**:

Cópia los ficheros de los personajes <file>vacapiloto.cow</file>, <file>peron_ascii.cow</file> y <file>17oct_ascii.cow</file> en la carpeta <file>/usr/local/share/cows/</file> con:

<code bash>$ cp vacapiloto.cow /usr/local/share/cows/</code>

<code bash>$ cp peron.cow /usr/local/share/cows/peron.cow</code>

<code bash>$ cp 17oct_bsd.cow /usr/local/share/cows/17oct.cow</code>

<code bash>$ cp vax.cow /usr/local/share/cows/</code>

  * **Para GNU/Linux**:

Cópia los ficheros de los personajes <file>vacapiloto.cow</file>, <file>peron_ascii.cow</file> y <file>17oct_ascii.cow</file> en la carpeta <file>/usr/share/cowsay/cows/</file> con:

<code bash>$ cp vacapiloto.cow /usr/share/cowsay/cows/</code>

<code bash>$ cp peron_ascii.cow /usr/share/cowsay/cows/peron.cow</code>

<code bash>$ cp 17oct_ascii.cow /usr/local/share/cows/17oct.cow</code>

<code bash>$ cp vax.cow /usr/local/share/cows/vax.cow</code>


### Uso

Solicita una frase al azar con:
<code bash>fortune doctrina</code>

Podrás dirigir la salida del comando a un personaje de cowsay por medio de pipes. 
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
