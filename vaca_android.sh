#!/data/data/com.termux/files/usr/bin/bash
# vaca_android.sh
# Un cowfile al azar que dice fortune de adoctrinamiento cada vez que se ejecuta
function cowsayfortune {
    CANTCOWFILES=`cowsay -l | tail -n +2 | wc -w`
    CUALCOWFILE=$((RANDOM%$CANTCOWFILES+1))
    ESTECOWFILE=`cowsay -l | tail -n +2 | sed -e 's/\ /\'$'\n/g' | sed $CUALCOWFILE'q;d'`

    #echo "Cowfile elegida: ${ESTACOW}, desde ${CUALCOW}"
    fortune $PREFIX/share/games/fortunes/doctrina | cowsay -f $ESTECOWFILE
}

cowsayfortune
