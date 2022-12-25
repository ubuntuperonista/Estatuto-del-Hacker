# Estatuto-del-Hacker
Herramental ASCII de hacking y adoctrinamiento peronista
por //~peron// <peron@texto-plano.xyz>

## Frases Fortune de adoctrinamiento

Estas son frases y aforismos de adoctrinamiento en castellano para fortune o fortune-mud.

* En BSD: 
  Copia doctrina - frases de adoctrinamiento, con word wrap a 72 líneas. 

  $ cp doctrina /usr/share/games/fortune/
  $ cp doctrina.dat /usr/share/games/fortune/

* En GNU/Linux:
Copia doctrina2: frases de adoctrinamiento sin word wrap.

  $ cp doctrina2 /usr/share/games/fortunes/es/doctrina
  $ cp doctrina2.dat /usr/share/games/fortunes/es/doctrina.dat


Utilízalas con con:

fortune doctrina

===

## Archivos COW

Estas son gráficos .cow para definir personajes para cowsay.

Puedes copiarlos en:

* En BSD:
Copialos con
  $ cp vacapiloto.cow /usr/local/share/cows
  $ cp peron.cow /usr/local/share/cows/

* En Linux 
Cópialos con

  $ cp vacapiloto.cow /usr/share/cowsay/cows/
  $ cp peron2.cow /usr/local/share/cows/peron.cow


### Ejemplo

Ahora podrás utilizarlos con:

  clear && fortune doctrina | cowsay -f peron
