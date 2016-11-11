all: pgf

pgf: test-pgf
	gf -make --name=Inlife --optimize-pgf TestInlife.pgf

test-pgf:
	gf -make --name=TestInlife LexiconInlifeEng.gf LexiconInlifeSwe.gf LexiconInlifeGer.gf LexiconInlifeFin.gf LexiconInlifeSlv.gf

package:
	mkdir dg-inlife
	cp -p LexiconInlife*.gf SyntaxInlife*.gf dg-inlife
	cp -p notes.txt Analyse.hs Test.hs Makefile manual-pos-dart.tsv dart.tsv dg-inlife
	tar cvfz dg-inlife.tgz dg-inlife
	rm -rf dg-inlife

test:
	runghc Test.hs init
	cut -f4 test.tsv >just-test.tmp
	echo "rf -file=\"just-test.tmp\" -lines -tree | l -list -bind -treebank" | gf -run TestInlife.pgf >test.treebank


clean-test:
	runghc Test.hs clean

sheet:
	echo "pg -funs | wf -file=all-inlife-funs.txt" | gf LexiconInlifeEng.gf
	runghc MkSheet.hs init
	cat sheet.tsv extra-trees.tsv | sort >sheet-treebank.tsv
	cut -f2 sheet-treebank.tsv >just-sheet.tmp
	echo "rf -file=just-sheet.tmp -lines -tree | l -treebank"  | gf -run TestInlife.pgf > sheet.treebank 
	runghc MkSheet.hs generate

merge-sheet:
	runghc MkSheet.hs merge




