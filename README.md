# Estatuto-del-Hacker
Herramental ASCII de hacking y adoctrinamiento peronista 
por ~peron <peron@texto-plano.xyz>

### Requerimientos
Requieres de fortune, fortune-mud, bsd fortune, o similar, y cowsay o similar.

## Frases Fortune de adoctrinamiento

Estas son frases y aforismos de adoctrinamiento en castellano para fortune o fortune-mud.

####Para BSD
Copia <file>doctrina_bsd</file> - frases de adoctrinamiento, con word wrap a 72 líneas en <file>/usr/share/games/fortune</file> de la siguiente manera: 

<code bash>$ cp doctrina_bsd /usr/share/games/fortune/doctrina</code>

<code bash>$ strfile /usr/share/games/fortune/doctrina</code>

####Para GNU/Linux
Copia <file>doctrina_linux</file> (frases de adoctrinamiento sin word wrap) en <file>/usr/share/games/fortunes/es/</file>, de la siguiente manera:

<code bash>$ cp doctrina_linux /usr/share/games/fortunes/es/doctrina</code>

<code bash>$ strfile /usr/share/games/fortunes/es/doctrina</code>


### Uso

<code>fortune doctrina</code>

===

## Archivos COW

Gráficos ASCII .cow para definir personajes para cowsay.

Sigue las instrucciones para incorporalos:

####Para BSD

Cópia los ficheros de los personajes <file>vacapiloto.cow</file>, <file>peron_ascii.cow</file> y <file>17oct_ascii.cow</file> en la carpeta <file>/usr/local/share/cows/</file> con:

<code bash>$ cp vacapiloto.cow /usr/local/share/cows/</code>

<code bash>$ cp peron.cow /usr/local/share/cows/peron.cow</code>

<code bash>$ cp 17oct_bsd.cow /usr/local/share/cows/17oct.cow</code>

####En Linux

Cópia los ficheros de los personajes <file>vacapiloto.cow</file>, <file>peron_ascii.cow</file> y <file>17oct_ascii.cow</file> en la carpeta <file>/usr/share/cowsay/cows/</file> con:

<code bash>$ cp vacapiloto.cow /usr/share/cowsay/cows/</code>

<code bash>$ cp peron_ascii.cow /usr/share/cowsay/cows/peron.cow</code>

<code bash>$ cp 17oct_ascii.cow /usr/local/share/cows/17oct.cow</code>


### Uso

Solicita una frase al azar con:
<code bash>fortune doctrina</code>

Podrás dirigir la salida del comando a un personaje de cowsay por medio de pipes. 
Por ejemplo:

<code bash>clear && fortune doctrina | cowsay -f peron</code>
