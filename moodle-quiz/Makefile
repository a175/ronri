all: moodle-quiz
moodle-quiz: questions-prop.xml

questions-prop.xml: a.xml e.xml i.xml na.xml ne.xml ni.xml
	echo '<?xml version="1.0" encoding="UTF-8"?>'  > questions-prop.xml
	echo '<quiz>' >> questions-prop.xml
	cat a.xml e.xml i.xml na.xml ne.xml ni.xml >> questions-prop.xml
	echo '</quiz>' >> questions-prop.xml

e.xml: ../tex/1-1.tex ../tex/1-2.tex  ../tex/1-3.tex  ../tex/1-4.tex  ../tex/1-5.tex
	echo '<!-- exists  -->'> e.xml
	echo '<question type="category"><category>' >>  e.xml
	echo '<text>paraphrase/2/exists/r1</text>' >>  e.xml
	echo '</category></question>' >>  e.xml
	bash ./makequestions.sh ../tex/1-1.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-2.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-3.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-4.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-5.tex E  >> e.xml

a.xml: ../tex/2-1.tex ../tex/2-2.tex ../tex/2-3.tex ../tex/2-4.tex
	echo '<!-- forall  -->'> a.xml
	echo '<question type="category"><category>' >>  a.xml
	echo '<text>paraphrase/2/forall/r1</text>' >>  a.xml
	echo '</category></question>' >>  a.xml
	bash ./makequestions.sh ../tex/2-1.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-2.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-3.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-4.tex A  >> a.xml

i.xml:  ../tex/3-1.tex ../tex/3-2.tex ../tex/3-3.tex
	echo '<!-- implies  -->'> i.xml
	echo '<question type="category"><category>' >>  i.xml
	echo '<text>paraphrase/2/implies/r1</text>' >>  i.xml
	echo '</category></question>' >>  i.xml
	bash ./makequestions.sh ../tex/3-1.tex A  >> i.xml
	bash ./makequestions.sh ../tex/3-2.tex A  >> i.xml
	bash ./makequestions.sh ../tex/3-3.tex A  >> i.xml

ne.xml: ../tex/1-1.tex ../tex/1-2.tex  ../tex/1-3.tex  ../tex/1-4.tex  ../tex/1-5.tex
	echo '<!-- not exists  -->'> ne.xml
	echo '<question type="category"><category>' >>  ne.xml
	echo '<text>paraphrase/2/not exists/r1</text>' >>  ne.xml
	echo '</category></question>' >>  ne.xml
	bash ./makequestions.sh ../tex/1-1.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-2.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-3.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-4.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-5.tex -N E  >> ne.xml

na.xml: ../tex/2-1.tex ../tex/2-2.tex ../tex/2-3.tex ../tex/2-4.tex
	echo '<!-- not forall  -->'> na.xml
	echo '<question type="category"><category>' >>  na.xml
	echo '<text>paraphrase/2/not forall/r1</text>' >>  na.xml
	echo '</category></question>' >>  na.xml
	bash ./makequestions.sh ../tex/2-1.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-2.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-3.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-4.tex -N A  >> na.xml

ni.xml:  ../tex/3-1.tex ../tex/3-2.tex ../tex/3-3.tex
	echo '<!-- not implies  -->'> ni.xml
	echo '<question type="category"><category>' >>  ni.xml
	echo '<text>paraphrase/2/not implies/r1</text>' >>  ni.xml
	echo '</category></question>' >>  ni.xml
	bash ./makequestions.sh ../tex/3-1.tex -N A  >> ni.xml
	bash ./makequestions.sh ../tex/3-2.tex -N A  >> ni.xml
	bash ./makequestions.sh ../tex/3-3.tex -N A  >> ni.xml

clean:
	rm -f a.xml e.xml i.xml na.xml ne.xml ni.xml questions-prop.xml
