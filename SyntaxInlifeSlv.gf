concrete SyntaxInlifeSlv of SyntaxInlife = TenseX - [AdV, Adv, IAdv, Interj, Utt], NumeralSlv ** open GrammarSlv, ConstructionSlv in {

lincat
  AP = GrammarSlv.AP ;
  AdV = GrammarSlv.AdV ;
  Adv = GrammarSlv.Adv ;
  Det = GrammarSlv.Det ;
  CN = GrammarSlv.CN ;
  Cl = GrammarSlv.Cl ;
  Comp = GrammarSlv.Comp ;
  Imp = GrammarSlv.Imp ;
  Interj = GrammarSlv.Interj ;
  NP = GrammarSlv.NP ;
  Card = GrammarSlv.Card ;
  Prep = GrammarSlv.Prep ;
  Pron = GrammarSlv.Pron ;
  QCl = GrammarSlv.QCl ;
  QS = GrammarSlv.QS ;
  Quant = GrammarSlv.Quant ;
  Utt = GrammarSlv.Utt ; 
  V = GrammarSlv.V ;
  V2 = GrammarSlv.V2 ;
  VA = GrammarSlv.V ;
  V3 = GrammarSlv.V ;
  VS = GrammarSlv.V ;
  VV = GrammarSlv.V ;
  VQ = GrammarSlv.V ;
  VP = GrammarSlv.VP ;
  S = GrammarSlv.S ;
  Weekday = ConstructionSlv.Weekday ;
  Month = ConstructionSlv.Month ;

lin  
  i_Pron = GrammarSlv.i_Pron ;
  youSg_Pron = GrammarSlv.youSg_Pron ;
  youPl_Pron = GrammarSlv.youPl_Pron ;
  youPol_Pron = GrammarSlv.youPol_Pron ;
  he_Pron = GrammarSlv.he_Pron ;
  she_Pron = GrammarSlv.she_Pron ;
  we_Pron = GrammarSlv.we_Pron ;
  they_Pron = GrammarSlv.they_Pron ;
  it_Pron = GrammarSlv.it_Pron ;
  something_NP = GrammarSlv.something_NP ;
  nothing_NP = GrammarSlv.nothing_NP ;

  UttS = GrammarSlv.UttS ;
  UttQS = GrammarSlv.UttQS ;
  UttNP = GrammarSlv.UttNP ;
  UttCN = GrammarSlv.UttCN ;
  UttCard = GrammarSlv.UttCard ;
  UttImpSg = GrammarSlv.UttImpSg ;
  UttImpPl = GrammarSlv.UttImpPl ;
  UttImpPol = GrammarSlv.UttImpPol ;
  UttAP = GrammarSlv.UttAP ;
  UttInterj = GrammarSlv.UttInterj ;
  UttVP = GrammarSlv.UttVP ;
  UttAdv = GrammarSlv.UttAdv ;
  ImpVP = GrammarSlv.ImpVP ;
  UseCl = GrammarSlv.UseCl ;
  UseQCl = GrammarSlv.UseQCl ;
  DetNP = GrammarSlv.DetNP ;
  PossPron = GrammarSlv.PossPron ;
  NumNumeral = GrammarSlv.NumNumeral ;
  IndefArt = GrammarSlv.IndefArt ;
  DefArt = GrammarSlv.DefArt ;
  PrepNP = GrammarSlv.PrepNP ;

 friday_Weekday = ConstructionSlv.friday_Weekday ;
  monday_Weekday = ConstructionSlv.monday_Weekday ;
  saturday_Weekday = ConstructionSlv.saturday_Weekday ;
  sunday_Weekday = ConstructionSlv.sunday_Weekday ;
  thursday_Weekday = ConstructionSlv.thursday_Weekday ;
  tuesday_Weekday = ConstructionSlv.tuesday_Weekday ;
  wednesday_Weekday = ConstructionSlv.wednesday_Weekday ;
  april_Month = ConstructionSlv.april_Month ;
  august_Month = ConstructionSlv.august_Month ;
  december_Month = ConstructionSlv.december_Month ;
  february_Month = ConstructionSlv.february_Month ;
  january_Month = ConstructionSlv.january_Month ;
  july_Month = ConstructionSlv.july_Month ;
  june_Month = ConstructionSlv.june_Month ;
  march_Month = ConstructionSlv.march_Month ;
  may_Month = ConstructionSlv.may_Month ;
  november_Month = ConstructionSlv.november_Month ;
  october_Month = ConstructionSlv.october_Month ;
  september_Month = ConstructionSlv.september_Month ;

lincat   
  AdvP = GrammarSlv.Adv ;  -- place adverb
  AdvT = GrammarSlv.Adv ;  -- time adverb
  CNH = GrammarSlv.CN ;   -- human, incl. pets (but there is only "black cat"!)
  CNM = GrammarSlv.CN ;   -- mass
  CNP = {cn : GrammarSlv.CN ; prep : GrammarSlv.Prep} ;   -- place
  CNPL = GrammarSlv.CN ;  -- plural (in many languages)
  CNPLH = GrammarSlv.CN ; -- plural/collective human
  CNT = GrammarSlv.CN ;   -- time
  DetM = GrammarSlv.Det ;  -- determiner for mass terms (not plural, "every", etc)
  NPH = GrammarSlv.NP ;   -- human
  NPP = {np : GrammarSlv.NP ; prep : GrammarSlv.Prep} ;   -- place
  NPT = GrammarSlv.NP ;   -- time
  Name = GrammarSlv.NP ;  -- for "my name is X"
  PrepP = GrammarSlv.Prep ; -- place
  PrepT = GrammarSlv.Prep ; -- time
  V0 = GrammarSlv.V ;    -- impersonal verb

lin
-- predication: verbs take only human subjects
  predVP np vp = GrammarSlv.PredVP np vp ;
  useV v = GrammarSlv.UseV v ;
  complV2 v np = ComplSlash (SlashV2a v) np ;

  detNPH = GrammarSlv.DetCN ;      -- three boys

  usePron = GrammarSlv.UsePron ;
  humanNP np = np ;

  detNP det cn = DetCN det cn ;
  detAPNP det ap cn = DetCN det (AdjCN ap cn) ;
  placeCN cn = cn.cn ;
  timeCN cn = cn ;
  humanCN cn = cn ;

  numeralDet card = DetQuant IndefArt (NumCard card) ;
  pluralDet quant = DetQuant quant NumPl ;
  singularDet quant = DetQuant quant NumSg ;
  singularDetM quant = DetQuant quant NumSg ;

  cnplNP quant cn = DetCN (DetQuant quant NumPl) cn ;

  detMNP = GrammarSlv.DetCN ;

  detNPP det cn = {np = DetCN det cn.cn ; prep = cn.prep} ;

  weekdayCNT w = UseN (ConstructionSlv.weekdayN w) ;
  monthCNT w = UseN (ConstructionSlv.monthN w) ;

}
