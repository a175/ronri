all: moodle-quiz
moodle-quiz: questions-prop.xml

questions-prop.xml: a.xml e.xml i.xml na.xml ne.xml ni.xml
	echo '<?xml version="1.0" encoding="UTF-8"?>'  > questions-prop.xml
	echo '<quiz>' >> questions-prop.xml
	cat a.xml e.xml i.xml na.xml ne.xml ni.xml >> questions-prop.xml
	echo '</quiz>' >> questions-prop.xml

e.xml: ../tex/1-1.tex ../tex/1-2.tex  ../tex/1-3.tex  ../tex/1-4.tex  ../tex/1-5.tex
	echo '<!-- exists  -->'> e.xml
	bash ./makequestions.sh ../tex/1-1.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-2.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-3.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-4.tex E  >> e.xml
	bash ./makequestions.sh ../tex/1-5.tex E  >> e.xml

a.xml: ../tex/2-1.tex ../tex/2-2.tex ../tex/2-3.tex ../tex/2-4.tex
	echo '<!-- forall  -->'> a.xml
	bash ./makequestions.sh ../tex/2-1.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-2.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-3.tex A  >> a.xml
	bash ./makequestions.sh ../tex/2-4.tex A  >> a.xml

i.xml:  ../tex/3-1.tex ../tex/3-2.tex ../tex/3-3.tex
	echo '<!-- implies  -->'> i.xml
	bash ./makequestions.sh ../tex/3-1.tex A  >> i.xml
	bash ./makequestions.sh ../tex/3-2.tex A  >> i.xml
	bash ./makequestions.sh ../tex/3-3.tex A  >> i.xml

ne.xml: ../tex/1-1.tex ../tex/1-2.tex  ../tex/1-3.tex  ../tex/1-4.tex  ../tex/1-5.tex
	echo '<!-- not exists  -->'> ne.xml
	bash ./makequestions.sh ../tex/1-1.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-2.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-3.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-4.tex -N E  >> ne.xml
	bash ./makequestions.sh ../tex/1-5.tex -N E  >> ne.xml

na.xml: ../tex/2-1.tex ../tex/2-2.tex ../tex/2-3.tex ../tex/2-4.tex
	echo '<!-- not forall  -->'> na.xml
	bash ./makequestions.sh ../tex/2-1.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-2.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-3.tex -N A  >> na.xml
	bash ./makequestions.sh ../tex/2-4.tex -N A  >> na.xml

ni.xml:  ../tex/3-1.tex ../tex/3-2.tex ../tex/3-3.tex
	echo '<!-- not implies  -->'> ni.xml
	bash ./makequestions.sh ../tex/3-1.tex -N A  >> ni.xml
	bash ./makequestions.sh ../tex/3-2.tex -N A  >> ni.xml
	bash ./makequestions.sh ../tex/3-3.tex -N A  >> ni.xml

clean:
	rm -f a.xml e.xml i.xml na.xml ne.xml ni.xml questions-prop.xml
