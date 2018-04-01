#!/usr/bin/env bash
# USAGE: tex2tml SetA SetB N|P

SetA=$1
SetB=$2
if [ "$3" = "N" ]
then
    Px='x\\not\\in B'
    NotPx='x\\in B'
else
    Px='x\\in B'
    NotPx='x\\not\\in B'
fi

cat -| \
    sed s'/%.*$//g' |\
    grep item| \
    sed s'/\\PPP{x}/'"$Px"'/g' |\
    sed s'/\\NotPPP{x}/'"$NotPx"'/g'  |\
    sed s'/ *\\not *\\in */$\&notin;$/g' | \
    sed s'/ *\\in */$\&isin;$/g' | \
    sed s'/ *\\implies */$\&rArr;$/g' | \
    sed s'/ *\\forall */$\&forall;$/g' | \
    sed s'/ *\\exists */$\&exist;$/g' | \
    sed s'/\$\(A\)\$/<i>'"$SetA"'<\/i>/g'  | \
    sed s'/\$\(B\)\$/<i>'"$SetB"'<\/i>/g'  | \
    sed s'/\$\(.\)\$/<i>\1<\/i>/g'  | \
    sed s'/\$\$//g'  | \
    tr "\n" " "  | \
    sed s'/\\item */\n/g'  | \
    grep .




