concrete SyntaxInlifeEng of SyntaxInlife =
  TenseX - [AdV, Adv, IAdv, Interj, Utt,
            Pol, PNeg], -- Eng specific excludes
  NumeralEng
 ** 
  SyntaxInlifeFunctor - [much_DetM] with
    (Grammar = GrammarEng),
    (Construction = ConstructionEng),
    (Syntax = SyntaxEng),
    (Symbolic = SymbolicEng)
  **
  open SyntaxEng, (R=ResEng), (M = MorphoEng), Prelude in {

lincat
  Pol = SyntaxEng.Pol ;
lin
  PNeg = SyntaxEng.negativePol | lin Pol {s = [] ; p = R.CNeg True} ;

  much_DetM = lin Det (M.mkDeterminer R.Sg "a lot of") | SyntaxEng.much_Det ;
}
