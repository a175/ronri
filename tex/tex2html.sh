cat *-*.tex| \
grep item| \
sed s'/\\PPP{x}/x\\in B/g' |\
sed s'/\\NotPPP{x}/x\\not\\in B/g' |\
sed s'/ *\\not *\\in */$\&notin;$/g' | \
sed s'/ *\\in */$\&isin;$/g' | \
sed s'/ *\\implies */$\&rArr;$/g' | \
sed s'/ *\\forall */$\&forall;$/g' | \
sed s'/ *\\exists */$\&exist;$/g' | \
sed s'/\$x\$/x/g'  | \
sed s'/\$A\$/A/g'  | \
sed s'/\$B\$/B/g'  | \
sed s'/\$\$//g'  | \
tr "\n" " "  | \
sed s'/\\item */\n/g'  | \
grep .   | \
sed s'/^/<li>/g'  | \
sed s'/$/<\/li>/g'  | \
cat



