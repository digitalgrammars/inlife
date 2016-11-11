--# -path=lib/src/slovenian
concrete SyntaxInlifeSlv of SyntaxInlife = TenseX - [AdV, Adv, IAdv, Interj, Utt], NumeralSlv ** open GrammarSlv, (G = GrammarSlv), ResSlv, ConstructionSlv, Prelude in {

lincat
  AP = GrammarSlv.AP ;
  AdV = GrammarSlv.AdV ;
  Adv = GrammarSlv.Adv ;
  Det = GrammarSlv.Det ;
  CN = GrammarSlv.CN ;
  Cl = GrammarSlv.Cl ;
  Comp = GrammarSlv.Comp ; ----AR
  Conj = GrammarSlv.Conj ; ----AR
  IAdv = GrammarSlv.IAdv ; ----AR
  IP = GrammarSlv.IP ;
  Imp = GrammarSlv.Imp ;
  Interj = GrammarSlv.Interj ;
  NP = GrammarSlv.NP ;
  Ord = GrammarSlv.Card ; ----AR
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
  VV = GrammarSlv.VV ;
  VQ = GrammarSlv.VQ ;
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
  this_Quant = GrammarSlv.this_Quant ;
  that_Quant = GrammarSlv.that_Quant ;
  something_NP = GrammarSlv.something_NP ;
  nothing_NP = GrammarSlv.nothing_NP ;

  whoSg_IP = GrammarSlv.whoSg_IP ; ----AR
----  few_Det = GrammarSlv.few_Det ; ----AR
----  many_Det = GrammarSlv.many_Det ; ----AR
  with_Prep = GrammarSlv.with_Prep ; ----AR
  without_Prep = GrammarSlv.without_Prep ; ----AR
  must_VV = GrammarSlv.must_VV ; ----AR
  can_VV = GrammarSlv.can_VV ; ----AR
----  can8know_VV = GrammarSlv.can8know_VV ; ----AR
  have_V2 = GrammarSlv.have_V2 ; ----AR
  where_IAdv = GrammarSlv.where_IAdv ; ----AR
  when_IAdv = GrammarSlv.when_IAdv ; ----AR
  how8much_IAdv = GrammarSlv.how8much_IAdv ; ----AR
  and_Conj = G.and_Conj ; ----AR
  or_Conj = G.or_Conj ; ----AR
  if_Subj = G.if_Subj ; ----AR
  
  UttS = GrammarSlv.UttS ;
  UttQS = GrammarSlv.UttQS ;
  UttNP = GrammarSlv.UttNP ;
  UttCN = GrammarSlv.UttCN ;
  UttCard = GrammarSlv.UttCard ;
  UttIAdv = GrammarSlv.UttIAdv ; ----AR
  UttIP = GrammarSlv.UttIP ; ----AR
  UttQS = GrammarSlv.UttQS ; ----AR
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
  ExistNP = GrammarSlv.ExistNP ; ----AR
  QuestVP = GrammarSlv.QuestVP ; ----AR
  QuestCl = GrammarSlv.QuestCl ; ----AR
  QuestIAdv = GrammarSlv.QuestIAdv ; ----AR

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

  predAP np ap = G.PredVP np (G.UseComp (G.CompAP ap)) ; ----AR
  predVeryAP np ap = G.PredVP np (G.UseComp (G.CompAP (G.AdAP very_AdA ap))) ; ----AR

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


  detMNP = GrammarSlv.DetCN ;  --This NP is always in genitive, but i don't know how to fix it. 
  partNP cn = MassNP cn ; ----AR

  andNP x y = ConjNP G.and_Conj (BaseNP x y) ; ----AR

  advTPredCl np vp adv = GrammarSlv.PredVP np (GrammarSlv.AdvVP vp adv) ; ----AR
  
  advPPredCl np vp adv = GrammarSlv.PredVP np (GrammarSlv.AdvVP vp adv) ;
  advPCl np adv = PredVP np (UseComp (CompAdv adv)) ; ----AR
  locAdvP np = GrammarSlv.PrepNP np.prep np.np ;
  prepAdvP prep np = GrammarSlv.PrepNP prep np.np ;
  detNPP det cn = {np = DetCN det cn.cn ; prep = cn.prep} ;

  weekdayCNT w = UseN (ConstructionSlv.weekdayN w) ;
  monthCNT w = UseN (ConstructionSlv.monthN w) ;

  advPTPredCl np vp advp advt = PredVP np (AdvVP (AdvVP vp advp) advt) ; ----AR
  advPTCl np advp advt = PredVP np (AdvVP (UseComp (CompAdv advp)) advt) ; ----AR

  thisIsNP np = PredVP (DetNP (DetQuant this_Quant NumSg)) (UseComp (CompNP np)) ; ----AR
  thatIsNP np = PredVP (DetNP (DetQuant that_Quant NumSg)) (UseComp (CompNP np)) ; ----AR

  uttAdvT adv = G.UttAdv adv ;
  uttAdvP adv = G.UttAdv adv ;
  
--  weather_adjCl = Construction.weather_adjCl ;

  questWhatV2 nph v2 = QuestSlash whatSg_IP (SlashVP nph (SlashV2a v2)) ; ----AR
--  questWhichV2 nph v2 cn = mkQCl (mkIP which_IDet cn) (mkClSlash nph (mkVPSlash v2)) ; ----AR


  weekdayPunctualAdvT = ConstructionSlv.weekdayPunctualAdv ; ----AR
  weekdayHabitualAdvT = ConstructionSlv.weekdayHabitualAdv ; ----AR 
  weekdayLastAdvT = ConstructionSlv.weekdayLastAdv ; ----AR
  weekdayNextAdvT = ConstructionSlv.weekdayNextAdv ; ----AR
  monthAdvT = ConstructionSlv.monthAdv ; ----AR
  advPImp vp adv = ImpVP (AdvVP vp adv) ; ----AR
  advTImp vp adv = ImpVP (AdvVP vp adv) ; ----AR
 


----  questWhatV2 nph v2 = mkQCl what_IP (mkClSlash nph (mkVPSlash v2)) ;
----  questWhichV2 nph v2 cn = mkQCl (mkIP which_IDet cn) (mkClSlash nph (mkVPSlash v2)) ;

  questWhoIs nph = QuestIComp (CompIP whoSg_IP) nph ; ----AR
  questWhatIs np = QuestIComp (CompIP whatSg_IP) np ; ----AR
  questIAdvIs np iadv = QuestIComp (CompIAdv iadv) np ; ----AR

}
