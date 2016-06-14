# inlife
Grammars for elderly people communication in the InLife project

(c) Digital Grammars AB 2016


Sources for the web service in

  http://www.digitalgrammars.com/demo/inlife.html 

To compile from source:

  ln -s <GF_in_your_filesystem>/lib lib  -- only once, to find the referenced Dictionary files
  make  -- each time the project is compiled

To test (after compilation):

  gf Inlife.pgf  -- test in the GF shell
  make Test      -- generate examples for all functions and languages

Files:

  Makefile
  SyntaxInlife.gf            -- basic syntax, importing and refining a part of RGL
  SyntaxInlifeFunctor.gf     -- functor implementation
  SyntaxInlifeXXX.gf         -- dummy functor instantiations
  LexiconInlife.gf           -- main abstract syntax
  LexiconInlifeXXX.gf        -- the main modules to be opened in GF 
  notes.txt                  -- instructions for developers
  manual-pos-inlife.tsv      -- the original word lists, POS-tagged and slightly corrected

where XXX = Eng | Fin | Ger | Slv | Swe



