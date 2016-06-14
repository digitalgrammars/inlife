abstract SyntaxInlife =

  Tense - [AdV, Adv, IAdv, Interj, Utt],
  Numeral

  ** {

-- First copy some RGL categories and functions, but not ones leading to recursion or semantically odd phrases.
-- Then define some new restrictive categories and rules for them

cat
  AP ; AdV ; Adv ; Det ; CN ; Cl ; ClSlash ; Comp ; Conj ; IAdv ; IP ; Imp ; Interj ; NP ; Ord ; Card ; Prep ;
  Prep ; Pron ; QCl ; QS ; Quant ; Subj ; Utt ; V ; V2 ; VA ; V3 ; VS ; VV ; VQ ; VP ; S ;
  Weekday ; Month ; Time ;

fun
    friday_Weekday, monday_Weekday,
    saturday_Weekday, sunday_Weekday, thursday_Weekday,
    tuesday_Weekday, wednesday_Weekday
      : Weekday ;
 
    april_Month, august_Month, december_Month, february_Month, january_Month, july_Month, 
    june_Month, march_Month, may_Month, november_Month, october_Month, september_Month
      : Month ;
    
    i_Pron, youSg_Pron, youPl_Pron, youPol_Pron, he_Pron, she_Pron, we_Pron, they_Pron, it_Pron : Pron ;
    this_Quant, that_Quant, no_Quant : Quant ;
    whoSg_IP : IP ;
    nothing_NP, something_NP : NP ;
    many_Det, few_Det : Det ;
    with_Prep, without_Prep : Prep ;
    must_VV, can_VV, can8know_VV : VV ;
    have_V2 : V2 ;
    where_IAdv, when_IAdv, how8much_IAdv : IAdv ;
    and_Conj, or_Conj : Conj ;
    if_Subj : Subj ;
    UttS : S -> Utt ;
    UttQS : QS -> Utt ;
    UttNP : NP -> Utt ;
    UttCN : CN -> Utt ;
    UttCard : Card -> Utt ;
    UttIAdv : IAdv -> Utt ;
    UttImpSg : Pol -> Imp -> Utt ;
    UttImpPl : Pol -> Imp -> Utt ;
    UttImpPol : Pol -> Imp -> Utt ;
    UttAP : AP -> Utt ;
    UttInterj : Interj -> Utt ;
    UttIP : IP -> Utt ;
    UttVP : VP -> Utt ;
    UttAdv : Adv -> Utt ;

    hungry_VP   : VP ;                   -- x is hungry / x a faim (Fre)
    thirsty_VP  : VP ;                   -- x is thirsty / x a soif (Fre)
    has_age_VP  : Card -> VP ;           -- x is y years old / x a y ans (Fre)
    is_right_VP : VP ;                   -- he is right / il a raison (Fre) 
    is_wrong_VP : VP ;                   -- he is wrong / han har fel (Swe)
    
    ImpVP   : VP -> Imp ;                 -- love yourselves
    UseCl   : Temp -> Pol -> Cl  -> S ;   -- she had not slept
    UseQCl  : Temp -> Pol -> QCl -> QS ;  -- who had not slept
    QuestCl : Cl -> QCl ;                 -- does she sleep
    QuestIAdv : IAdv -> Cl -> QCl ;       -- where does she sleep

    DetNP      : Det -> NP ;
    PossPron   : Pron -> Quant ;
    NumNumeral : Numeral -> Card ;
    IndefArt   : Quant ;
    DefArt     : Quant ;

    ImpPl1  : VP -> Utt ;
    ExistNP : NP -> Cl ;
    PrepNP  : Prep -> NP -> Adv ;

    QuestCl : Cl -> QCl ;
    QuestVP : IP -> VP -> QCl ;

-- then the new ones

cat   
  AdvP ;  -- place adverb
  AdvT ;  -- time adverb
  CNH ;   -- human, incl. pets (but there is only "black cat"!)
  CNM ;   -- mass
  CNP ;   -- place
  CNPL ;  -- plural (in many languages)
  CNPLH ; -- plural/collective human
  CNT ;   -- time
  DetM ;  -- determiner for mass terms (not plural, "every", etc)
  NPH ;   -- human
  NPP ;   -- place
  NPT ;   -- time
  Name ;  -- for "my name is X"
  PrepP ; -- place
  PrepT ; -- time
  V0 ;    -- impersonal verb

fun
-- predication: verbs take only human subjects
  predVP      : NPH -> VP -> Cl ;
  useV        : V -> VP ;
  complV2     : V2 -> NP -> VP ;          -- (the object can be any NP)
  complV3     : V3 -> NP -> NP -> VP ;
  complVVV    : VV -> V -> VP ;
  complV2VV   : VV -> V2 -> NP -> VP ;
  
  complVS     : VS -> S -> VP ;           --- these two rules create recursion
  complVQ     : VQ -> QS -> VP ;
  
  predAP      : NP -> AP -> Cl ;          -- (the subject of AP can be any NP)
  predVeryAP  : NP -> AP -> Cl ;
  
  detNPH      : Det  -> CNH -> NPH ;      -- three boys

  usePron     : Pron -> NPH ;

  humanNP     : NPH -> NP ; 

-- noun phrases, mass terms, and determiners
  detNP       : Det  -> CN -> NP ;        -- three shirts
  detAPNP     : Det  -> AP -> CN -> NP ;  -- three red shirts
  placeCN     : CNP -> CN ;               -- (three) houses
  timeCN      : CNT -> CN ;               -- (three) months
  humanCN     : CNH -> CN ;               -- (three) boys

  numeralDet  : Card -> Det ;             -- three
  pluralDet   : Quant -> Det ;            -- these
  singularDet : Quant -> Det ;            -- this
  singularDetM: Quant -> DetM ;           -- this
  much_DetM   : DetM ;

----  detMDet     : DetM -> Det ;             -- this ; only in this direction

  cnplNP      : Quant -> CNPL -> NP ;     -- these sunglasses (singular form never used)

  detMNP      : DetM -> CNM -> NP ;       -- this milk
  partNP      : CNM -> NP ;               -- partitive: milk

  andNP       : NP -> NP -> NP ;          -- salt and pepper

-- place expressions
  advPPredCl  : NPH -> VP -> AdvP -> Cl ; -- I sleep here
  advPCl      : NPH -> AdvP -> Cl ;       -- I am here
  locAdvP     : NPP -> AdvP ;             -- in the house / at the station, using the inherent prep
  prepAdvP    : PrepP -> NPP -> AdvP ;    -- from the house ; excluding plain local "in"
  detNPP      : Det -> CNP -> NPP ;       -- the house
  advPImp     : VP -> AdvP -> Imp ;       -- come here
  advTImp     : VP -> AdvT -> Imp ;       -- come tomorrow

-- time expressions
  advTPredCl  : NPH -> VP -> AdvT -> Cl ;      -- I sleep today

  weekdayPunctualAdvT : Weekday -> AdvT ;      -- on Monday
  weekdayHabitualAdvT : Weekday -> AdvT ;      -- on Mondays
  weekdayLastAdvT     : Weekday -> AdvT ;      -- last Monday
  weekdayNextAdvT     : Weekday -> AdvT ;      -- next Monday
  monthAdvT           : Month   -> AdvT ;      -- in June

  weekdayCNT          : Weekday -> CNT ;
  monthCNT            : Month -> CNT ;

  thisWeekdayAdvT     : Weekday -> AdvT ;      -- this Monday

-- combined
  advPTPredCl : NPH -> VP -> AdvP -> AdvT -> Cl ; -- I sleep here today
  advPTCl     : NPH -> AdvP -> AdvT -> Cl ;       -- I am here today

  thisIsNP : NP -> Cl ; -- this is my wife
  thatIsNP : NP -> Cl ; -- that is my wife
  
  uttAdvT : AdvT -> Utt ;
  uttAdvP : AdvP -> Utt ;

-- should we restrict this to some AP's ?
  weather_adjCl : AP -> Cl ;  -- it is hot / fa caldo

-- questions with non-human objects
  questWhatV2  : NPH -> V2 -> QCl ;       -- what do you want
  questWhichV2 : NPH -> V2 -> CN -> QCl ; -- which shirt do you want

  questWhoIs  : NPH -> QCl ;                -- who am I
  questWhatIs : NP -> QCl ;                 -- what is that
  questIAdvIs : NP -> IAdv -> QCl ;         -- where am i

-- more constructions, restricted to humans

  have_name_Cl  : NPH -> Name -> Cl ;    -- x's name is y / x s'appelle y (Fre)
  married_Cl    : NPH -> NPH -> Cl ;     -- x is married to y / x on naimisissa y:n kanssa (Fin)
  what_name_QCl : NPH -> QCl ;           -- what is x's name / wie heisst x (Ger)
  how_old_QCl   : NPH -> QCl ;           -- how old is x / quanti anni ha x (Ita)

  stringName : String -> Name ;
----  nameNPH    : Name -> NPH ; ---- too much overgeneration

}
