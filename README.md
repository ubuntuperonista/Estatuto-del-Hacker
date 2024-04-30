# Estatuto-del-Hacker

Herramental ASCII para la terminal de línea de comandos, con Frases y aforismos de hacking y adoctrinamiento (en castellano). 
Personajes cowfiles para cowsay 3 y cowsay 4.

Licenciado bajo GPLv3 por ~peron <peron@texto-plano.xyz>

## Instalación

### Prerrequisitos
Las frases para fortune requiere de alguna versión de este programa (GNU fortune, fortune-mud, bsd-fortune, o similar). 
Los personajes .cow requieren cowsay 3, cowsay 4 o similar. Ambos suelen estar disponibles en la mayoría de las distribuciones de sistemas operativos similares a Unix. Por ejemplo:

En GNU/Linux (Ubuntu/Debian) puede instalar cowsay 3:

<code bash>sudo apt install fortunes-es</code>

En BSD puede instalar cowsay 3 o cowsay 4, dependiendo la versión.

<code bash>pkg install fortune</code>

## Instrucciones para agregar Estatuto-del-Hacker a cowsay 3 en GNU/Linux

Copie doctrina_linux y rms_linux (ficheros con frases de adoctrinamiento sin word wrap situados en el directorio Estatuto-del-Hacker/fortunes) en el directorio <file>/usr/share/games/fortunes/es/</file> de su sistema GNU/Linux. 
Copie los ficheros de los personajes .cow del directorio <file>Estatuto-del-Hacker/cows</file> en el directorio <file>/usr/share/cowsay/cows/</file> de su sistema GNU/Linux. 
Use strfile para incorporar los ficheros .DAT. 

```
cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_linux /usr/share/games/fortunes/es/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/rms_linux /usr/share/games/fortunes/es/rms ;
sudo cp /tmp/Estatuto-del-Hacker/cows/*.cow /usr/share/cowsay/cows/ ;
cd /usr/share/games/fortunes/es/ ;
sudo strfile /usr/share/games/fortunes/es/doctrina ;
sudo strfile /usr/share/games/fortunes/es/rms ;
sudo cp /tmp/Estatuto-del-Hacker/doctrina.sh /usr/local/bin/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/rms.sh /usr/local/bin/rms ;
sudo chmod +x /usr/local/bin/doctrina /usr/local/bin/rms ;
sudo cp /tmp/Estatuto-del-Hacker/actualizar_doctrinas.sh /usr/local/sbin/actualizar_doctrinas ;
sudo chmod +x /usr/local/sbin/actualizar_doctrinas
```

## Instrucciones para agregar Estatuto-del-Hacker en bsdcowsay 4 en BSD:

Copie <file>fortunes/doctrina_bsd</file> y <file>fortunes/rms_bsd</file> (ficheros con las frases de adoctrinamiento, con word wrap a 72 líneas en el directorio <file>/usr/share/games/fortune/</file> de su sistema BSD.
Copie los ficheros <file>.cow</file> de los personajes <file>Estatuto-del-Hacker/bsdcows</file> en la carpeta <file>/usr/local/share/cows</file> de su sistema BSD.
Use strfile para incorporar los ficheros .DAT.

```
cd /tmp ;
git clone https://github.com/ubuntuperonista/Estatuto-del-Hacker/ ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/doctrina_bsd /usr/share/games/fortune/doctrina ;
sudo cp /tmp/Estatuto-del-Hacker/fortunes/rms_bsd /usr/share/games/fortune/rms ;
sudo cp /tmp/Estatuto-del-Hacker/cows/*.cow /usr/local/share/cows/ ;
cd /usr/share/games/fortune/ ;
sudo strfile /usr/share/games/fortune/doctrina ;
sudo strfile /usr/share/games/fortune/rms
```
  
## Uso

Solicite una frase al azar con fortune, mediante:

<code bash>fortune doctrina</code>

o bien:

<code bash>fortune rms</code>

Podrá dirigir la salida del comando a un personaje de cowsay por medio de pipes. 
Por ejemplo:

<code bash>clear && fortune doctrina | cowsay -f 17oct</code>

```
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
```

Para solicitar una frase corta al azar sin borrar la terminal:

<code bash>fortune -s doctrina | cowsay -f pocho</code>

```
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
```
