incomplete concrete SyntaxInlifeFunctor of SyntaxInlife =

  Tense - [AdV, Adv, IAdv, Interj, Utt],
  Numeral

  ** open (Grammar = Grammar), (Construction = Construction), Syntax, Symbolic in {

-- first the RGL copies

lincat
  AP = Grammar.AP ;
  AdV = Grammar.AdV ;
  Adv = Grammar.Adv ;
  Det = Grammar.Det ;
  CN = Grammar.CN ;
  Cl = Grammar.Cl ;
  ClSlash = Grammar.ClSlash ;
  Comp = Grammar.Comp ;
  Conj = Grammar.Conj ;
  IAdv = Grammar.IAdv ;
  IP = Grammar.IP ;
  Imp = Grammar.Imp ;
  Interj = Grammar.Interj ;
  NP = Grammar.NP ;
  Ord = Grammar.Ord ;
  Card = Grammar.Card ;
  Prep = Grammar.Prep ;
  Pron = Grammar.Pron ;
  QCl = Grammar.QCl ;
  QS = Grammar.QS ;
  Quant = Grammar.Quant ;
  Subj = Grammar.Subj ;
  Utt = Grammar.Utt ;
  V = Grammar.V ;
  V2 = Grammar.V2 ;
  VA = Grammar.VA ;
  V3 = Grammar.V3 ;
  VS = Grammar.VS ;
  VV = Grammar.VV ;
  VQ = Grammar.VQ ;
  VP = Grammar.VP ;
  S = Grammar.S ;
  Weekday = Construction.Weekday ;
  Month = Construction.Month ;
  Time = Grammar.NP ;

lin  
  i_Pron = Grammar.i_Pron ;
  youSg_Pron = Grammar.youSg_Pron ;
  youPl_Pron = Grammar.youPl_Pron ;
  youPol_Pron = Grammar.youPol_Pron ;
  he_Pron = Grammar.he_Pron ;
  she_Pron = Grammar.she_Pron ;
  we_Pron = Grammar.we_Pron ;
  they_Pron = Grammar.they_Pron ;
  it_Pron = Grammar.it_Pron ;
  this_Quant = Grammar.this_Quant ;
  that_Quant = Grammar.that_Quant ;
  no_Quant = Grammar.no_Quant ;
  whoSg_IP = Grammar.whoSg_IP ;
  nothing_NP = Grammar.nothing_NP ;
  something_NP = Grammar.something_NP ;
  few_Det = Grammar.few_Det ;
  many_Det = Grammar.many_Det ;
  with_Prep = Grammar.with_Prep ;
  without_Prep = Grammar.without_Prep ;
  must_VV = Grammar.must_VV ;
  can_VV = Grammar.can_VV ;
  can8know_VV = Grammar.can8know_VV ;
  have_V2 = Grammar.have_V2 ;
  where_IAdv = Grammar.where_IAdv ;
  when_IAdv = Grammar.when_IAdv ;
  how8much_IAdv = Grammar.how8much_IAdv ;
  and_Conj = Grammar.and_Conj ;
  or_Conj = Grammar.or_Conj ;
  if_Subj = Grammar.if_Subj ;
  UttS = Grammar.UttS ;
  UttQS = Grammar.UttQS ;
  UttNP = Grammar.UttNP ;
  UttCN = Grammar.UttCN ;
  UttCard = Grammar.UttCard ;
  UttIAdv = Grammar.UttIAdv ;
  UttImpSg = Grammar.UttImpSg ;
  UttImpPl = Grammar.UttImpPl ;
  UttImpPol = Grammar.UttImpPol ;
  UttAP = Grammar.UttAP ;
  UttInterj = Grammar.UttInterj ;
  UttIP = Grammar.UttIP ;
  UttVP = Grammar.UttVP ;
  UttAdv = Grammar.UttAdv ;
  ImpVP = Grammar.ImpVP ;
  UseCl = Grammar.UseCl ;
  UseQCl = Grammar.UseQCl ;
  QuestCl = Grammar.QuestCl ;
  QuestIAdv = Grammar.QuestIAdv ;
  DetNP = Grammar.DetNP ;
  PossPron = Grammar.PossPron ;
  NumNumeral = Grammar.NumNumeral ;
  IndefArt = Grammar.IndefArt ;
  DefArt = Grammar.DefArt ;
  ImpPl1 = Grammar.ImpPl1 ;
  ExistNP = Grammar.ExistNP ;
  PrepNP = Grammar.PrepNP ;
  QuestVP = Grammar.QuestVP ;

  friday_Weekday = Construction.friday_Weekday ;
  monday_Weekday = Construction.monday_Weekday ;
  saturday_Weekday = Construction.saturday_Weekday ;
  sunday_Weekday = Construction.sunday_Weekday ;
  thursday_Weekday = Construction.thursday_Weekday ;
  tuesday_Weekday = Construction.tuesday_Weekday ;
  wednesday_Weekday = Construction.wednesday_Weekday ;
  april_Month = Construction.april_Month ;
  august_Month = Construction.august_Month ;
  december_Month = Construction.december_Month ;
  february_Month = Construction.february_Month ;
  january_Month = Construction.january_Month ;
  july_Month = Construction.july_Month ;
  june_Month = Construction.june_Month ;
  march_Month = Construction.march_Month ;
  may_Month = Construction.may_Month ;
  november_Month = Construction.november_Month ;
  october_Month = Construction.october_Month ;
  september_Month = Construction.september_Month ;
  hungry_VP = Construction.hungry_VP ;
  thirsty_VP = Construction.thirsty_VP ;
  has_age_VP = Construction.has_age_VP ;
  is_right_VP = Construction.is_right_VP ;
  is_wrong_VP = Construction.is_wrong_VP ;

-- then the new ones

lincat   
  AdvP = Grammar.Adv ;  -- place adverb
  AdvT = Grammar.Adv ;  -- time adverb
  CNH = Grammar.CN ;   -- human, incl. pets (but there is only "black cat"!)
  CNM = Grammar.CN ;   -- mass
  CNP = {cn : Grammar.CN ; prep : Grammar.Prep} ;   -- place
  CNPL = Grammar.CN ;  -- plural (in many languages)
  CNPLH = Grammar.CN ; -- plural/collective human
  CNT = Grammar.CN ;   -- time
  DetM = Grammar.Det ;  -- determiner for mass terms (not plural, "every", etc)
  NPH = Grammar.NP ;   -- human
  NPP = {np : Grammar.NP ; prep : Grammar.Prep} ;   -- place
  NPT = Grammar.NP ;   -- time
  Name = Grammar.NP ;  -- for "my name is X"
  PrepP = Grammar.Prep ; -- place
  PrepT = Grammar.Prep ; -- time
  V0 = Grammar.V ;    -- impersonal verb

lin
-- predication: verbs take only human subjects
  predVP np vp = mkCl np vp ;
  useV v = mkVP v ; 
  complV2 v np = mkVP v np ;
  complV3 v np1 np2 = mkVP v np1 np2 ;
  complVVV vv v = mkVP vv (mkVP v) ;
  complV2VV vv v np = mkVP vv (mkVP v np) ;
  complVS vs s = mkVP vs s ;
  complVQ vq qs = mkVP vq qs ;
  
  predAP np ap = mkCl np ap ;
  predVeryAP np ap = mkCl np (mkAP very_AdA ap) ;

  detNPH det cn = mkNP det cn ;

  usePron pron = mkNP pron ;
  humanNP np = np ;

-- noun phrases, mass terms, and determiners
  detNP det cn = mkNP det cn ;
  detAPNP det ap cn = mkNP det (mkCN ap cn) ;
  placeCN cn = cn.cn ;
  timeCN cn = cn ;
  humanCN cn = cn ;

  numeralDet card = mkDet card ;
  pluralDet quant = mkDet quant pluralNum ;
  singularDet quant = mkDet quant singularNum ;
  singularDetM quant = mkDet quant singularNum ;
  much_DetM = much_Det ;
  
----  detMDet det = det ;

  cnplNP quant cn = mkNP quant pluralNum cn ;

  detMNP det cn = mkNP det cn ;
  partNP cn = mkNP cn ;

  andNP x y = mkNP Grammar.and_Conj x y ;

-- place expressions
  advPPredCl np vp adv = mkCl np (mkVP vp adv) ;
  advPCl np adv = mkCl np adv ;
  locAdvP np = Syntax.mkAdv np.prep np.np ;
  prepAdvP prep np = Syntax.mkAdv prep np.np ;
  detNPP det cn = {np = mkNP det cn.cn ; prep = cn.prep} ;
  advPImp vp adv = mkImp (mkVP vp adv) ;
  advTImp vp adv = mkImp (mkVP vp adv) ;
  
-- time expressions
  advTPredCl np vp adv = mkCl np (mkVP vp adv) ;

  weekdayPunctualAdvT = Construction.weekdayPunctualAdv ;
  weekdayHabitualAdvT = Construction.weekdayHabitualAdv ; 
  weekdayLastAdvT = Construction.weekdayLastAdv ;
  weekdayNextAdvT = Construction.weekdayNextAdv ;
  monthAdvT = Construction.monthAdv ;

  weekdayCNT w = mkCN (Construction.weekdayN w) ;
  monthCNT w = mkCN (Construction.monthN w) ;

  thisWeekdayAdvT w = lin Adv (mkUtt (mkNP this_Det (Construction.weekdayN w))) ; 

-- combined
  advPTPredCl np vp advp advt = mkCl np (mkVP (mkVP vp advp) advt) ;
  advPTCl np advp advt = mkCl np (mkVP (mkVP advp) advt) ; 

  thisIsNP np = mkCl this_NP np ;
  thatIsNP np = mkCl that_NP np ;

  uttAdvT adv = mkUtt adv ;
  uttAdvP adv = mkUtt adv ;

  weather_adjCl = Construction.weather_adjCl ;

  questWhatV2 nph v2 = mkQCl what_IP (mkClSlash nph (mkVPSlash v2)) ;
  questWhichV2 nph v2 cn = mkQCl (mkIP which_IDet cn) (mkClSlash nph (mkVPSlash v2)) ;

  questWhoIs nph = mkQCl (mkIComp who_IP) nph ;  -- who am I (not: who is me)
  questWhatIs np = mkQCl (mkIComp what_IP) np ;  -- what is that
  questIAdvIs np iadv = mkQCl (mkIComp iadv) np ;  -- where is she


-- more constructions, restricted to humans

  have_name_Cl np name = Construction.have_name_Cl np name ;
  married_Cl = Construction.married_Cl ;
  what_name_QCl = Construction.what_name_QCl ;
  how_old_QCl = Construction.how_old_QCl ;

  stringName s = symb s.s ;
 ---- nameNPH n = n ;
  
}