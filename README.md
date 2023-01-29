# Estatuto-del-Hacker
Herramental ASCII de hacking y adoctrinamiento peronista 
por ~peron <peron@texto-plano.xyz>

### Requerimientos
Requieres de fortune, fortune-mud, bsd fortune, o similar, y cowsay o similar.

## Frases Fortune de adoctrinamiento

Estas son frases y aforismos de adoctrinamiento en castellano para fortune o fortune-mud.

  * **Para BSD**: 
Copia <file>doctrina</file> - frases de adoctrinamiento, con word wrap a 72 líneas en <file>/usr/share/games/fortune</file> de la siguiente manera: 

<code>$ cp doctrina_bsd /usr/share/games/fortune/doctrina</code>

<code>$ strfile /usr/share/games/fortune/doctrina</code>

  * **Para GNU/Linux**:
Copia <file>doctrina2</file> (frases de adoctrinamiento sin word wrap) en <file>/usr/share/games/fortunes/es/</file>, de la siguiente manera:

<code>$ cp doctrina_linux /usr/share/games/fortunes/es/doctrina</code>

<code>$ strfile /usr/share/games/fortunes/es/doctrina</code>


### Uso

<code>fortune doctrina</code>

===

## Archivos COW

Gráficos ASCII .cow para definir personajes para cowsay.

Sigue las instrucciones para incorporalos:

* **En BSD**:
Copia los personajes a la carpeta correspondiente con:

<code>$ cp vacapiloto.cow /usr/local/share/cows/</code>

<code>$ cp peron.cow /usr/local/share/cows/peron.cow</code>

<code>$ cp 17oct_bsd.cow /usr/local/share/cows/17oct.cow</code>

* **En Linux**: 
Cópialos los ficheros de los personajes en la carpeta correspondiente con:

<code>$ cp vacapiloto.cow /usr/share/cowsay/cows/</code>

<code>$ cp peron_ascii.cow /usr/share/cowsay/cows/peron.cow</code>

<code>$ cp 17oct_ascii.cow /usr/local/share/cows/17oct.cow</code>


### Uso

Solicita una frase al azar con:
<code>fortune doctrina</code>

Podrás dirigir la salida del comando a un personaje de cowsay por medio de pipes. 
Por ejemplo:

<code>clear && fortune doctrina | cowsay -f peron</code>
