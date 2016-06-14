concrete SyntaxInlifeGer of SyntaxInlife =
  TenseGer [Tense,Temp,Ant,Pol,AAnter,ASimul,PNeg,PPos, TTAnt, TPres, TPast, TFut, TCond],
  NumeralGer
 **
  SyntaxInlifeFunctor - [thisWeekdayAdvT] with
    (Grammar = GrammarGer),
    (Construction = ConstructionGer),
    (Syntax = SyntaxGer),
    (Symbolic = SymbolicGer)
  **
  open SyntaxGer, ParadigmsGer in {

    lin thisWeekdayAdvT w = SyntaxGer.mkAdv accPrep (mkNP this_Det (Construction.weekdayN w)) ;

  }
