#!/usr/bin/env bash
# USAGE: CORRECTANSWER=1 bash question.sh PROP1 PROP2 ..

CORRECTANSWER=${CORRECTANSWER:-'1'}


cat - | while read PROP
do
    echo ''
    echo '<question type="multichoice">'
    echo '<name><text>同値な命題</text></name>'
    echo '<questiontext format="html"><text><![CDATA[<p>次の命題と同値な命題はどれか:</p><p>'
    echo "  $PROP"
    echo '</p>]]></text></questiontext>'
    
    echo '<generalfeedback format="html"><text></text></generalfeedback>'
    echo '<defaultgrade>1.0000000</defaultgrade>'
    echo '<penalty>0.3333333</penalty>'
    echo '<hidden>0</hidden>'
    echo '<single>true</single>'
    echo '<shuffleanswers>false</shuffleanswers>'
    echo '<answernumbering>123</answernumbering>'
    echo '<correctfeedback format="html"><text></text></correctfeedback>'
    echo '<partiallycorrectfeedback format="html"><text></text></partiallycorrectfeedback>'
    echo '<incorrectfeedback format="html"><text></text></incorrectfeedback>'

    I=1
    for ANSPROP in "$@"
    do
	if [ $CORRECTANSWER = $I ]
	then
	    FRACTION=100
	else
	    FRACTION=0
	fi
	I=$(expr $I + 1) 
	echo '<answer fraction="'"$FRACTION"'" format="html">'
	echo '<text><![CDATA[<p>'
	echo "  $ANSPROP"
	echo '</p>]]></text>'
	echo '<feedback format="html"><text></text></feedback>'
	echo '</answer>'
    done
    echo '</question>'

    echo ''
done
