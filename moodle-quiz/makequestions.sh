#!/usr/bin/env bash
# USAGE: ./makequestions.sh texfile -N? A|E

PROP1='&exist;<i>x</i>&isin;<i>A</i>, <i>x</i>&isin;<i>B</i>. '
PROP2='&forall;<i>x</i>&isin;<i>A</i>, <i>x</i>&isin;<i>B</i>.'
PROP3='&exist;<i>x</i>&isin;<i>A</i>, <i>x</i>&notin;<i>B</i>. '
PROP4='&forall;<i>x</i>&isin;<i>A</i>, <i>x</i>&notin;<i>B</i>.'

#PROP5='&exist;<i>x</i>&isin;<i>B</i>, <i>x</i>&isin;<i>A</i>. '
PROP6='&forall;<i>x</i>&isin;<i>B</i>, <i>x</i>&isin;<i>A</i>.'
PROP7='&exist;<i>x</i>&isin;<i>B</i>, <i>x</i>&notin;<i>A</i>. '
#PROP8='&forall;<i>x</i>&isin;<i>B</i>, <i>x</i>&notin;<i>A</i>.'


if [ "$2" =  "-N" ]
then
    PROPPRE='「'
    PROPSUF='」が成り立たない.'

    if [ "$3" =  "E" ]
    then
	CABP=4
	CBAP=-8
	CABN=2
	CBAN=5
    fi
    
    if [ "$3" =  "A" ]
    then
	CABP=3
	CBAP=6
	CABN=1
	CBAN=-5
    fi
else
    PROPPRE=''
    PROPSUF=''
    if [ "$2" =  "E" ]
    then
	CABP=1
	CBAP=-5
	CABN=3
	CBAN=6
    fi
    
    if [ "$2" =  "A" ]
    then
	CABP=2
	CBAP=5
	CABN=4
	CBAN=-8
    fi
fi

cat $1 | \
    bash ./tex2html.sh A B P |\
    sed 's/^/'"$PROPPRE"'/' | sed 's/$/'"$PROPSUF"'/' |\
    CORRECTANSWER="$CABP" bash ./question.sh "$PROP1" "$PROP2" "$PROP3" "$PROP4"  "$PROP6" "$PROP7" 
cat $1 | \
    bash ./tex2html.sh B A P |\
    sed 's/^/'"$PROPPRE"'/' | sed 's/$/'"$PROPSUF"'/' |\
    CORRECTANSWER="$CBAP" bash ./question.sh "$PROP1" "$PROP2" "$PROP3" "$PROP4"  "$PROP6" "$PROP7" 

cat $1 | \
    bash ./tex2html.sh A B N |\
    sed 's/^/'"$PROPPRE"'/' | sed 's/$/'"$PROPSUF"'/' |\
    CORRECTANSWER="$CABN" bash ./question.sh "$PROP1" "$PROP2" "$PROP3" "$PROP4"  "$PROP6" "$PROP7" 
cat $1 | \
    bash ./tex2html.sh B A N |\
    sed 's/^/'"$PROPPRE"'/' | sed 's/$/'"$PROPSUF"'/' |\
    CORRECTANSWER="$CBAN" bash ./question.sh "$PROP1" "$PROP2" "$PROP3" "$PROP4"  "$PROP6" "$PROP7" 
