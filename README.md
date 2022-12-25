# Estatuto-del-Hacker
Herramental ASCII de hacking y adoctrinamiento peronista 
por //~peron// <peron@texto-plano.xyz>

### Requerimientos
fortune, bsd fortune, cowsay, o similar.

## Frases Fortune de adoctrinamiento

Estas son frases y aforismos de adoctrinamiento en castellano para fortune o fortune-mud.

  * En BSD: 
Copia doctrina - frases de adoctrinamiento, con word wrap a 72 líneas. 

<code>$ cp doctrina_bsd /usr/share/games/fortune/doctrina</code>

<code>$ strfile /usr/share/games/fortune/doctrina</code>

  * En GNU/Linux:
Copia doctrina2: frases de adoctrinamiento sin word wrap.

<code>$ cp doctrina_linux /usr/share/games/fortunes/es/doctrina</code>

<code>$ strfile /usr/share/games/fortunes/es/doctrina</code>


### Uso

<code>fortune doctrina</code>

===

## Archivos COW

Gráficos ASCII .cow para definir personajes para cowsay.

Puedes copiarlos en:

* En BSD:
Copia los personajes a la carpeta correspondiente con:

<code>$ cp vacapiloto.cow /usr/local/share/cows/</code>

<code>$ cp peron.cow /usr/local/share/cows/peron.cow</code>

<code>$ cp 17oct_bsd.cow /usr/local/share/cows/17oct.cow</code>

* En Linux 
Cópialos con

<code>$ cp vacapiloto.cow /usr/share/cowsay/cows/</code>

<code>$ cp peron.cow /usr/share/cowsay/cows/peron.cow</code>

<code>$ cp 17oct_ascii.cow /usr/local/share/cows/17oct.cow</code>


### Uso

Podrás utilizar los personajes con pipes. Por ejemplo:

<code>clear && fortune doctrina | cowsay -f peron</code>
