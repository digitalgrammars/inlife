-- synoptic view of English GF rules and the original DART word list
-- after each rule, the word list entry that gave rise to that rule
-- the word list is tab-separated from the GF rule and has its own tabs. Thus the lin rule lines have
--
--   rule, value type, unique word list id, English, Italian, Swedish, German, Slovene
--
-- this format is hopefully convenient for porting the lexicon to another language
-- the lexical oper's in the beginning can of course be adapted to the target language

-- instructions for grammarians:
-- please don't change the function names or their types
-- please don't edit the lines marked DERIVED or DUPLICATE
-- but report any anomalies or suggestions in a separate file using the word list ids as keys
-- it is OK to return just the GF rule column in the final LexiconXXX.gf

concrete LexiconInlifeEng of LexiconInlife = SyntaxInlifeEng **
  open ParadigmsEng, (P = ParadigmsEng), (S = SyntaxEng), SyntaxEng, (M = MorphoEng), (I = IrregEng), (E = ExtraEng), (Pre = Prelude)
  in {

oper mkiCN  : Str -> S.CN = \s -> S.mkCN (mkN s) ;
oper mkiCNM : Str -> S.CN = \s -> S.mkCN (mkN s) ;
oper mkiCNH : Str -> S.CN = \s -> S.mkCN (mkN s) ;
oper mkiCNT : Str -> S.CN = \s -> S.mkCN (mkN s) ;

oper mkiCNP = overload {
  mkiCNP : Str -> CNP = \s -> lin CNP {cn = S.mkCN (mkN s) ; prep = in_Prep} ;
  mkiCNP : Str -> Str -> CNP = \s,p -> lin CNP {cn = S.mkCN (mkN s) ; prep = mkPrep p} ;
  } ;
  
oper mkiNP  : Str -> S.NP = \s -> S.mkNP (mkPN s) ;
oper mkiNPH : Str -> S.NP = \s -> S.mkNP (mkPN s) ;
oper mkiNPP : Str -> S.NP = \s -> S.mkNP (mkPN s) ;
oper mkiNPT : Str -> S.NP = \s -> S.mkNP (mkPN s) ;

oper mkiAP  : Str -> S.AP = \s -> S.mkAP (mkA s) ;

oper mkiV   : Str -> S.V  = \s -> mkV s ;
oper mkiV0  : Str -> S.V  = \s -> mkV s ;
oper mkiV2  : Str -> S.V2 = \s -> mkV2 (mkV s) ;
oper mkiV2p : Str -> Str -> S.V2 = \s,p -> mkV2 (partV (mkV s) p) ;
oper mkiV3  : Str -> S.V3 = \s -> mkV3 (mkV s) ;
oper mkiVS  : Str -> S.VS = \s -> mkVS (mkV s) ;
oper mkiVV  : Str -> S.VV = \s -> mkVV (mkV s) ;

oper mkiAdv    : Str -> S.Adv   = \s -> P.mkAdv s ;
oper mkiAdvP   : Str -> S.Adv   = \s -> P.mkAdv s ;
oper mkiAdvT   : Str -> S.Adv   = \s -> P.mkAdv s ;
oper mkiPrep   : Str -> S.Prep  = \s -> mkPrep s ;
oper mkiPrepP  : Str -> S.Prep  = \s -> mkPrep s ;
oper mkiPrepT  : Str -> S.Prep  = \s -> mkPrep s ;
oper mkiAdV    : Str -> S.AdV   = \s -> mkAdV s ;
oper mkiInterj : Str -> S.Interj = \s -> mkInterj s ;

oper mkiDet    : Str -> S.Det = \s -> lin Det (M.mkDeterminer plural s) ; ----
oper mkiSgDet  : Str -> S.Det = \s -> lin Det (M.mkDeterminer singular s) ; ----

oper mkiUtt    : Str -> S.Utt = \s -> lin Utt (Pre.ss s) ;

oper mkiCNPL = overload {
  mkiCNPL : Str -> S.CN = \s -> S.mkCN (mkN s) ; ----
  mkiCNPL : Str -> Str -> S.CN = \s,p -> S.mkCN (mkN s p) ; ----
  } ;

oper reflPossVP : V2 -> N -> VP = \v,n -> E.ReflRNP (mkVPSlash v) (E.ReflPoss singularNum (mkCN n)) ;
oper reflPossPlVP : V2 -> N -> VP = \v,n -> E.ReflRNP (mkVPSlash v) (E.ReflPoss pluralNum (mkCN n)) ;

--BEGIN from here on, derive abstract syntax

lin above_0001_PrepP = mkiPrepP "above" ; --	PrepP	0001	above	sopra	över	über	nad
lin account_0002_CN = mkiCN "account" ; --	CN	0002	account	conto	konto	das Konto	račun
lin actor_0003_CNH = mkiCNH "actor" ; --	CNH	0003	actor	attore	skådespelare	der Schauspieler	igralec
lin actress_0004_CNH = mkiCNH "actress" ; --	CNH	0004	actress	attrice	skådespelerska	die Schauspielerin	igralka
lin adapted_computer_0005_CN = mkiCN "adapted computer" ; --	CN	0005	adapted computer	computer adattato	anpassad dator	angepasster Computer	prilagojen računalnik
lin adapted_game_0006_CN = mkiCN "adapted game" ; --	CN	0006	adapted game	gioco adattato	anpassat spel	angepasstes Spiel	prilagojena igra
lin address_0007_V2 = mkiV2 "address" ; --	V2	0007	address	indirizzare	adressera	Adresse 	naslov
lin address_0008_CN = mkiCN "address" ; --	CN	0008	address	indirizzo	adress	Anschrift	nagovor
lin adjust_down_0009_V2 = mkV2 (mkV "adjust" "down") ; --	V2	0009	adjust bed down	abbassare il letto	sänka sängen	das Bett anpassen	namestiti posteljo navzdol
lin admirable_0010_AP = mkiAP "admirable" ; --	AP	0010	admirable	ammirabile	berömvärd	erstaunlich	čudovit
lin adult_0011_CNH = mkiCNH "adult" ; --	CNH	0011	baby	bambino	barn	Baby	otrok
lin baby_0011_CNH = mkiCNH "baby" ; --	CNH	0011	baby	bambino	barn	Baby	otrok
lin advice_0012_V2 = mkiV2 "advice" ; --	V2	0012	advice	consigliare	råda	der Rat	nasvet
lin aerial_0013_Adv = mkiAdv "aerial" ; --	Adv	0013	aerial	aerea	via luften	luftig	zračen, antena
lin afternoon_0014_CNT = mkiCNT "afternoon" ; --	CNT	0014	afternoon	pomeriggio	eftermiddag	der Nachmittag	popoldne
lin after_shave_0015_CN = mkiCN "after shave" ; --	CN	0015	after shave	dopo barba	rakvatten	nach der Rasur	po britju
lin airport_0016_CNP = mkiCNP "airport" "at" ; --	CNP	0016	airport	aereoporto	flygplats	der Flughafen	letališče
lin all_done_0017_Interj = mkiInterj "all done" ; --	Interj	0017	all done	tutto fatto	klart	alle getan	končano
lin allergic_0018_AP = mkiAP "allergic" ; --	AP	0018	allergic	allergico	allergisk	allergisch	alergičen
lin alley_0019_CNP = mkiCNP "alley" ; --	CNP	0019	alley	viale	gränd	die Gasse,die Allee,Weg	aleja
lin always_0020_AdV = mkiAdV "always" ; --	AdV	0020	always	sempre	alltid	immer,ständig	vedno
lin ambulance_0021_CN = mkiCN "ambulance" ; --	CN	0021	ambulance	ambulanza	ambulans	die Ambulanz	reševalno vozilo
lin analcolic_beer_0022_CNM = mkiCNM "analcolic beer" ; --	CNM	0022	analcolic beer	birra analcoolica	alkoholfri öl	alkoholfreies Bier	alkoholno pivo
lin ananas_juice_0023_CNM = mkiCNM "ananas juice" ; --	CNM	0023	ananas juice	succo d'ananas	ananasjuice	Ananas Saft	ananasov sok
-- DERIVED 0024 Conj and e och und in 
lin somebody_0025_NPH = mkiNPH "somebody" ; --	NPH	0025	somebody	qualsiasi persona	någon person	irgendwelche Leute	vsi ljudje
lin apartment_0026_CNP = mkiCNP "apartment" ; --	CNP	0026	apartment	appartamento	lägenhet	die Wohnung	stanovanje
lin appetite_0027_CNM = mkiCNM "appetite" ; --	CNM	0027	appetite	appetito	aptit	der Appetit	apetit
lin apple_juice_0028_CNM = mkiCNM "apple juice" ; --	CNM	0028	apple juice	succo di mela	äppeljuice	der Apfelsaft	jabolčni sok
lin apple_0029_CN = mkiCN "apple" ; --	CN	0029	apple	mela	äpple	der Apfel	jabolko
lin appointment_0030_CN = mkiCN "appointment" ; --	CN	0030	appointment	appuntamento	mötestid	geplanter Termin	sestanek (dogovorjen)
lin apricot_0031_CN = mkiCN "apricot" ; --	CN	0031	apricot	albicocca	aprikos	die Aprikose,die Marille	marelica
-- DERIVED 0032 Month April Aprile april der April april 
lin April_Fool's_Day_0033_NP = mkiNP "April Fool's Day" ; --	NP	0033	April Fool's Day	pesce d'aprile	första april	Erster April	Prvoaprilski dan
lin arm_0035_CN = mkiCN "arm" ; --	CN	0035	arm	braccio	arm	der Arm	roka
lin around_0036_PrepP = mkiPrepP "around" ; --	PrepP	0036	around	intorno	omkring	um	okoli, približno
lin art_0037_CNM = mkiCNM "art" ; --	CNM	0037	art	arte	konst	die Kunst	umetnost
lin ask_0038_V3 = mkV3 (mkV "ask") ; --	V3	0038	ask me questions	fammi delle domande	fråga mig	stell mir Fragen	postavite vprašanje
lin question_0038_CN = mkiCN "question" ; --	CN	0038	ask me questions	fammi delle domande	fråga mig	stell mir Fragen	postavite vprašanje
lin yes_no_question_0039_CN = mkiCN "yes/no question" ; --	CN	0039	ask me yes/no question	fammi una domanda chiusa	ställ ja- eller nejfrågor	frag mich ja/nein Fragen	tip vprašanja 'da-ne'
lin attractive_0040_AP = mkiAP "attractive" ; --	AP	0040	attractive	attraente	attraktiv	attraktiv	privlačen
-- DERIVED 0041 Month August Agosto augusti der August avgust 
lin author_0042_CNH = mkiCNH "author" ; --	CNH	0042	author	scrittore	författare	der Autor	avtor
lin away_0043_AdvP = mkiAdvP "away" ; --	AdvP	0043	away	via da	iväg	weg	daleč
lin awful_0044_AP = mkiAP "awful" ; --	AP	0044	awful	orribile	hemsk	furchbar	grozen
-- DUPLICATE lin awful_0045_AP = mkiAP "awful" ; -- AP
lin back_0046_CN = mkiCN "back" ; --	CN	0046	back	dorso	rygg	zurück*	nazaj
lin back_0047_AdvP = mkiAdvP "back" ; --	AdvP	0047	back	indietro	bakåt	wieder	zadaj
-- DUPLICATE lin back_0048_CN = mkiCN "back" ; -- CN
lin bad_0049_AP = mkiAP "bad" ; --	AP	0049	bad	cattivo	otäck	schlecht	slab
lin bad_day_0050_CNT = mkiCNT "bad day" ; --	CNT	0050	bad day	giornata storta	olycksdag	schlechter Tag	slab dan
lin badly_0051_Adv = mkiAdv "badly" ; --	Adv	0051	badly	malissimo	dålig	schlecht	slabo
lin bad_man_0052_CNH = mkiCNH "bad man" ; --	CNH	0052	bad man	uomo cattivo	elak man	schlecher Mann	slab človek
-- DUPLICATEMAYBE lin bad_0053_AP = mkiAP "bad" ; -- AP
lin bag_0054_CN = mkiCN "bag" ; --	CN	0054	bag	sacchetto	påse	die Tasche	torba
lin baker_0055_CNH = mkiCNH "baker" ; --	CNH	0055	baker	fornaio	bagare	der Bäker	pek
lin baking_powder_0056_CNM = mkiCNM "baking powder" ; --	CNM	0056	baking powder	lievito in polvere	bakpulver	das Backpulver	pecilni prašek
lin ball_bath_0057_CNP = mkiCNP "ball bath" ; --	CNP	0057	ball bath	piscina palline	badboll	Ballbad	kopalna kroglica (bombica)
lin ball_of_wool_0058_CN = mkiCN "ball of wool" ; --	CN	0058	ball of wool	gomitolo di lana	garnnystan	Woolknäuel	volnena krogla
lin ball_0059_CN = mkiCN "ball" ; --	CN	0059	ball	palla	boll	der Ball	žoga
lin banana_0060_CN = mkiCN "banana" ; --	CN	0060	banana	banana	banan	die Banane	banana
lin bandage_0061_CN = mkiCN "bandage" ; --	CN	0061	bandage	benda	bandage	die Bandage,der Verband	povoj
lin band_0062_CN = mkiCN "band" ; --	CN	0062	band	banda	musikband 	die Band	skupina
lin band_0063_CNH = mkiCNH "band" ; --	CNH	0063	band	gruppo musicale	orkester	die Gruppe	trak
lin bank_0064_CNP = mkiCNP "bank" ; --	CNP	0064	bank	banca	bank	die Bank	banka
lin bank_teller_0065_CNH = mkiCNH "bank teller" ; --	CNH	0065	bank teller	banchiere	bankkassör	Bankangestellte	bankomat*
lin basin_0066_CNP = mkiCNP "basin" ; --	CNP	0066	basin	vasca da bagno	handfat	das Becken	umivalnik
-- DUPLICATEMAYBE lin basin_0067_CNP = mkiCNP "basin" ; -- CNP
lin bath_cap_0068_CN = mkiCN "bath cap" ; --	CN	0068	bath cap	cuffia da bagno	badmössa	Badkappe	kopalna kapa
lin bathing_0069_CNM = mkiCNM "bathing" ; --	CNM	0069	bathing		balneazione	bada utomhus	das Baden	kopanje
lin bathing_suit_0070_CN = mkiCN "bathing suit" ; --	CN	0070	bathing suit	costume da bagno	baddräkt	der Badeanzug	kopalke
lin bathroom_0071_CNP = mkiCNP "bathroom" ; --	CNP	0071	bathroom	bagno	badrum	das Badezimmer	kopalnica
lin battery_0072_CN = mkiCN "battery" ; --	CN	0072	battery	pila	batteri	die Batterie	baterija
lin beach_bag_0073_CN = mkiCN "beach bag" ; --	CN	0073	beach bag	borsa da spiaggia	strandväska	Strandtasche	torba za na plažo
lin beach_0074_CNP = mkiCNP "beach" "on" ; --	CNP	0074	beach	spiaggia	strand	der Strand	plaža
lin beach_towel_0075_CN = mkiCN "beach towel" ; --	CN	0075	beach towel	asciugamano da spiaggia	strandhandduk	Badetuch	brisača za na plažo
lin beautiful_0076_AP = mkiAP "beautiful" ; --	AP	0076	beautiful	bello	vacker	schön	lep
lin beautiful_clothe_0077_CN = mkiCN "beautiful clothe" ; --	CN	0077	beautiful clothe	vestito bello	vacker klänning	schön kleiden	lepa obleka, tkanina
lin beautiful_show_0078_CN = mkiCN "beautiful show" ; --	CN	0078	beautiful show	bello spettacolo	vacker föreställning	schöne Show	lepa predstava
lin bed_for_visit_0079_CN = mkiCN "bed for visit" ; --	CN	0079	bed for visit	lettino da visita	gästsäng	Bett für Besuch	postelja za goste
lin bedroom_0080_CNP = mkiCNP "bedroom" ; --	CNP	0080	bedroom	stanza letto	sovrum	das Schlafzimmer	spalnica
lin bed_time_0081_CNT = mkiCNT "bed time" ; --	CNT	0081	bed time	ora di andare a letto	läggdags	Bettzeit,die Schlafenszeit	čas za spanje
lin beef_0082_CNM = mkiCNM "beef" ; --	CNM	0082	beef	manzo	nötkött	das Rindfleisch	govedina
lin beer_0083_CNM = mkiCNM "beer" ; --	CNM	0083	beer	birra	öl	das Bier	pivo
-- DERIVED 0084 Copula be essere vara sein biti 
lin belly_0085_CN = mkiCN "belly" ; --	CN	0085	belly	pancia	mage	der Bauch	trebuh
lin belt_0086_CN = mkiCN "belt" ; --	CN	0086	belt	cintura	bälte	der Gürtel	pas
lin best_wishes_0087_Interj = mkiInterj "best wishes" ; --	Interj	0087	best wishes	auguri	lyckönskningar	die besten Wünsche	vse najboljše
lin big_0088_AP = mkiAP "big" ; --	AP	0088	big	grande	stor	gross	velik
lin bird_food_0089_CNM = mkiCNM "bird food" ; --	CNM	0089	bird food	cibo per uccelli	fågelmat	Vogelfutter	ptičja hrana
lin bird_house_0090_CN = mkiCN "bird house" ; --	CN	0090	bird house	casetta per gli uccelli	fågelhus	das Vogelhaus	ptičja hiša
lin bite_0091_V2 = mkV2 I.bite_V ; --	V2	0091	bite an apple	mordere le mele	bita i äpplet	beissen einen Apfel	ugrizniti v jabolko
lin black_cat_0092_CNH = mkiCNH "black cat" ; --	CNH	0092	black cat	gatto nero	svart katt	schwarze Katze	črna mačka
lin blender_0093_CN = mkiCN "blender" ; --	CN	0093	blender	frullatore	mixer	der Mixer	mešalnik
lin blood_pressure_0094_CNM = mkiCNM "blood pressure" ; --	CNM	0094	blood pressure	pressione sanguigna	blodtryck	der Blutdruck	krvni pritisk
lin blood_0095_CNM = mkiCNM "blood" ; --	CNM	0095	blood	sangue	blod	das Blut	kri
lin blow_out_0096_V2 = mkV2 (mkV "blow" "out") ; --	V2	0096	blow out a candle	spegnere una candela	blåsa ut ett ljus	schlag eine Kerze aus	upihniti svečo
lin blueberry_juice_0097_CNM = mkiCNM "blueberry juice" ; --	CNM	0097	blueberry juice	succo di mirtilli	blåbärssaft	Blaubeersaft	borovničev sok
lin blue_0098_AP = mkiAP "blue" ; --	AP	0098	blue	blu	blå	blau	moder
lin boiled_0099_AP = mkiAP "boiled" ; --	AP	0099	boiled	cotto	kokt	gekocht	kuhan
lin book_0100_CN = mkiCN "book" ; --	CN	0100	book	libro	bok	das Buch	knjiga
lin book_store_0101_CNP = mkiCNP "book store" ; --	CNP	0101	book store	libreria	bokhandel	die Buchhandlung	knjigarna
lin boredom_0102_CNM = mkiCNM "boredom" ; --	CNM	0102	boredom	noia	tristess	die Langeweile	dolgčas
lin both_0103_Det = mkiDet "both" ; --	Det	0103	both	entrambi	bägge	beide	oba
lin bottle_0104_CN = mkiCN "bottle" ; --	CN	0104	straw	cannuccia	sugrör	Stroh	slama
lin straw_0104_CN = mkiCN "straw" ; --	CN	0104	straw	cannuccia	sugrör	Stroh	slama
lin bottom_ache_0105_CNM = mkiCNM "bottom ache" ; --	CNM	0105	bottom ache	male al sedere	ont i stjärten	Bodenschmerzen	dno bolečine
lin bowl_0106_CN = mkiCN "bowl" ; --	CN	0106	bowl	bacinella	diskbalja	die Schüssel	skleda
-- DUPLICATE lin bowl_0107_CN = mkiCN "bowl" ; -- CN
-- DUPLICATE lin bowl_0108_CN = mkiCN "bowl" ; -- CN
lin box_0109_CN = mkiCN "box" ; --	CN	0109	box	cassa	låda	die Box	škatla
lin box_drink_0110_CN = mkiCN "box drink" ; --	CN	0110	box drink	bevanda in cartone	dryck i tetrapack	Box Getränk	zaboj pijače
lin box_of_chocolates_0111_CN = mkiCN "box of chocolates" ; --	CN	0111	box of chocolates	scatola di cioccolatini	chokladask	Schachtel Pralinen	škatla čokoladnih bonbonov
lin box_of_legumi_0112_CN = mkiCN "box of legumi" ; --	CN	0112	box of legumi	legumi in scatola	grönsakskonserv	Box von Leguminosen	škatla stročnice
lin boy_0113_CNH = mkiCNH "boy" ; --	CNH	0113	boy	bambino	pojke	der Junge	fant
-- DUPLICATEMAYBE lin boy_0114_CNH = mkiCNH "boy" ; -- CNH
lin bracelet_0115_CN = mkiCN "bracelet" ; --	CN	0115	bracelet	bracciale	armband	das Armband	zapestnica
lin brain_0116_CN = mkiCN "brain" ; --	CN	0116	brain	cervello	hjärna	das Gehirn	možgani
lin bread_0117_CNM = mkiCNM "bread" ; --	CNM	0117	bread	pane	bröd	das Brot	kruh
lin bread_slice_0118_CN = mkiCN "bread slice" ; --	CN	0118	bread slice	fetta di pane	brödskiva	Brotscheibe	rezina kruha
lin breakfast_0119_CN = mkiCN "breakfast" ; --	CN	0119	breakfast	colazione	frukost	das Früstück	zajtrk
lin breakfast_time_0120_NP = mkiNP "breakfast time" ; --	NP	0120	breakfast time	ora di colazione	frukostdags	Früstückszeit	čas za zajtrk
lin breast_0121_CN = mkiCN "breast" ; --	CN	0121	breast	seno	bröst	die Brust	dojka, prsi
lin bricklayer_0122_CNH = mkiCNH "bricklayer" ; --	CNH	0122	bricklayer	muratore	murare	der Maurer	zidar
lin bring_back_0123_V2 = mkV2 (partV I.bring_V "back") ; --	V2	0123	bring back a book	restituire un libro	återlämna en bok	ein Buch zurück bringen	prinesti knjigo nazaj
lin brochure_0124_CN = mkiCN "brochure" ; --	CN	0124	brochure	opuscolo	broschyr	die Broschüre	brošura
lin broken_0125_AP = mkiAP "broken" ; --	AP	0125	broken	rotto	trasig	gebrochen	zdrobljen
lin break_0126_V2 = mkV2 I.break_V ; --	V2	0126	break the eggs	rompere le uova	ha sönder äggen	brach die Eier	zdrobiti jajca
lin broom_0127_CN = mkiCN "broom" ; --	CN	0127	pail	secchio	skyffel	Eimer	vedro
lin pail_0127_CN = mkiCN "pail" ; --	CN	0127	pail	secchio	skyffel	Eimer	vedro
-- DUPLICATEMAYBE lin broom_0128_CN = mkiCN "broom" ; -- CN
lin brother_0129_CNH = mkiCNH "brother" ; --	CNH	0129	brother	fratello	bror	der bruder	brat
lin brown_sugar_0130_CNM = mkiCNM "brown sugar" ; --	CNM	0130	brown sugar	zucchero di canna	råsocker	brauner Zucker	rjavi sladkor
lin brush_0131_V2 = mkV2 "brush" ; --	V2	0131	brush hair	spazzolarsi i capelli	borsta håret	Haare bürsten	krtača
lin tongue_0132_CN = mkiCN "tongue" ; --	CN	0132	brush tongue	spazzolare la lingua	borsta tungan	Pinselzunge	ščetka za jezik
lin building_0133_CNP = mkiCNP "building" ; --	CNP	0133	building	palazzina	byggnad	das Gebäude	stavba
-- DUPLICATEMAYBE lin building_0134_CNP = mkiCNP "building" ; -- CNP
lin bus_driver_0135_CNH = mkiCNH "bus driver" ; --	CNH	0135	bus driver	autista di autobus	busschaufför	der Busfahrer	voznik avtobusa
lin business_0136_CN = mkiCN "business" ; --	CN	0136	business	affari	affärer	das Geschäft	posel
lin bus_0137_CNP = mkiCNP "bus" ; --	CNP	0137	bus	pullman	buss	der Bus	avtobus
lin bus_station_0138_CNP = mkiCNP "bus station" "at" ; --	CNP	0138	bus station	stazione bus	busstation	die Bushaltestelle	avtobusna postaja
lin bus_timetable_0139_CN = mkiCN "bus timetable" ; --	CN	0139	bus timetable	orario autobus	busstidtabell	Bus Zeit	čas  prihoda avtobusa
lin how_lucky_0140_Interj = mkiInterj "how lucky" ; --	Interj	0140	how lucky	che fortuna	vilken tur	aber*	vendar
lin butcher's_shop_0141_CNP = mkiCNP "butcher's shop" "at" ; --	CNP	0141	butcher's shop	macelleria	charkuteri	die Metzgerei	mesnica
lin butter_0142_V2 = mkV2 "butter" ; --	V2	0142	butter a slice of bread	imburrare il pane	bre en smörgås	butter eine Scheibe Brot	maslo namazati na rezino kruha
lin butter_slice_of_bread_0142_VP det = mkVP (mkV2 "butter") (mkNP det (mkCN (mkCN (mkN "slice")) (S.mkAdv part_Prep (mkNP (mkN "bread"))))) ; --	Det -> VP	0142	butter a slice of bread	imburrare il pane	bre en smörgås	butter eine Scheibe Brot	maslo namazati na rezino kruha
lin butter_0143_CNM = mkiCNM "butter" ; --	CNM	0143	butter	burro	smör	die Butter 	maslo
lin button_up_0144_V2 = mkiV2 "button up" ; --	V2	0144	button up	abbottonare	knäppa upp	zuknöpfen	zapni se
lin buy_0145_V2 = mkV2 I.buy_V ; --	V2	0145	buy	comprare	köpa	kaufen	kupiti
lin bye_0146_Interj = mkiInterj "bye" ; --	Interj	0146	bye	ciao	hej då	tschüss	bye
lin call_0147_V2 = mkiV2 "call" ; --	V2	0147	call	chiamare	ropa	der Anruf*	klic
lin respond_to_telephone_0148_VP = mkVP (mkVP (mkV "respond")) (S.mkAdv to_Prep (mkNP (mkN "telephone"))) ; --	VP	0148	respond to telephone	rispondere al telefono	svara i telefonen	der Aufruf*	poziv
lin call_0149_CN = mkiCN "call" ; --	CN	0149	call	telefonata	telefonsamtal	das Gespräch	povabilo
lin camera_0150_CN = mkiCN "camera" ; --	CN	0150	camera	fotocamera	kamera	die Kamera	kamera
lin candied_pie_0151_CN = mkiCN "candied pie" ; --	CN	0151	candied pie	torta con canditi	tårta med glasyr	kandierte Kuchen	kandirana pita
lin can_opener_0152_CN = mkiCN "can opener" ; --	CN	0152	can opener	apriscatole	konservöppnare	der Dosenöffner	odpirač konzerv
lin car_0153_CNP = mkiCNP "car" ; --	CNP	0153	car	automobile	bil	der Wagen	avto
lin care_0154_CNM = mkiCNM "care" ; --	CNM	0154	care	cura	vård	die Pflege	nega
lin carpenter_0155_CNH = mkiCNH "carpenter" ; --	CNH	0155	carpenter	falegname	snickare	der Zimmrmann*	tesar
lin carpet_0156_CN = mkiCN "carpet" ; --	CN	0156	carpet	tappeto	matta	der Teppich	preproga
lin carrot_0157_CN = mkiCN "carrot" ; --	CN	0157	carrot	carota	morot	die Karotte	korenje
lin carton_0158_CN = mkiCN "carton" ; --	CN	0158	carton	scatola di cartone	kartong	der Karton	škatla
lin cash_0159_CNM = mkiCNM "cash" ; --	CNM	0159	cash	contanti	kontanter	da Bargeld*	gotovina
lin casual_jacket_0160_CN = mkiCN "casual jacket" ; --	CN	0160	casual jacket	giacca casual	vardagsjacka	Freizeitjacke	športna jakna
lin cat_food_0161_CNM = mkiCNM "cat food" ; --	CNM	0161	cat food	cibo per gatti	kattmat	Katzenfutter	hrana za mačke
lin cd_player_0162_CN = mkiCN "cd player" ; --	CN	0162	cd player	lettore cd	cd-spelare	CD player	CD predvajalnik
lin ceiling_0163_CN = mkiCN "ceiling" ; --	CN	0163	ceiling	soffitto	tak	die Decke	strop
lin cellular_0164_CN = mkiCN "cellular" ; --	CN	0164	cellular	cellulare	mobil	zellular	celični
lin certificate_0165_CN = mkiCN "certificate" ; --	CN	0165	certificate	diploma	intyg	das Zertifikat	potrdilo
lin chair_0166_CN = mkiCN "chair" ; --	CN	0166	chair	sedia	stol	der Stuhl	stol
lin champion_0167_CNH = mkiCNH "champion" ; --	CNH	0167	champion	campione	champion	der Champion	prvak
lin change_0168_V = mkV "change" ; --	V	0168	change	cambiarsi d'abito	byta kläder	die Veränderung	sprememba
lin change_channel_0169_VP = mkVP (mkV2 "change") (mkNP (mkN "canal")) ; --	VP	0169	change channel	cambia canale	byta kanal	Kanalwechsel	srememba kanala
lin change_diaper_0170_VP = mkVP (mkV2 "change") (mkNP the_Det (mkN "diaper")) ; --	VP	0170	change diaper	cambiare pannolini	byta blöjor	Windel wechseln	sprememba plenic
lin change_ones_mind_0171_VP = reflPossVP (mkV2 "change") (mkN "mind") ; --	VP	0171	changed my mind	ho cambiato idea	jag har ändrat mig	meine Meinung ändern	premislil sem si
lin check_0172_V2 = mkiV2 "check" ; --	V2	0172	check	controllare	kontrollera	prüfen	preveriti
lin cheek_0173_CN = mkiCN "cheek" ; --	CN	0173	cheek	guancia	kind	die Wange	lice
lin cheers_0174_Interj = mkiInterj "cheers" ; --	Interj	0174	cheers	cin-cin	skål	Prost	razveseliti
lin cheese_cracker_0175_CN = mkiCN "cheese cracker" ; --	CN	0175	cheese cracker	salatino al formaggio	ostkex	Käse Cracker	sir cracker (keks)
lin cheese_cream_0176_CNM = mkiCNM "cheese cream" ; --	CNM	0176	cheese cream	crema di formaggio	mjukost	Käsecreme	sveži sir
lin cheese_0177_CNM = mkiCNM "cheese" ; --	CNM	0177	cheese	formaggio	ost	der Käse	sir
lin cheese_snack_0178_CN = mkiCN "cheese snack" ; --	CN	0178	cheese snack	stuzzichini al formaggio	ostbågar	Käse Snack	sir prigrizek
lin chemistry_class_0179_CN = mkiCN "chemistry class" ; --	CN	0179	chemistry class	lezione di chimica	kemilektion	Chemie Unterricht	poučevanje kemije
lin chest_pain_0180_CNM = mkiCNM "chest pain" ; --	CNM	0180	chest pain	dolore al petto	bröstsmärtor	Brustschmerzen	bolečina v prsnem košu
lin chest_0181_CN = mkiCN "chest" ; --	CN	0181	chest	petto	bröst	die Brust	prsi,prsni koš
lin chicken_croquette_0182_CN = mkiCN "chicken croquette" ; --	CN	0182	chicken croquette	crocchette di pollo	kycklingkrokett	Hänchen Kroketten	piščančji kroket
lin chicken_fillet_0183_CN = mkiCN "chicken fillet" ; --	CN	0183	chicken fillet	petto di pollo	kycklingfilÃ©	Hänchenfilet	piščančji file
lin chicken_fillet_sandwich_0184_CN = mkiCN "chicken fillet sandwich" ; --	CN	0184	chicken fillet sandwich	panino al pollo	kycklingsmörgås	Hänchenfilet Sandwich	piščančji file sendvič
lin chicken_fry_0185_CN = mkiCN "chicken fry" ; --	CN	0185	chicken fry	pollo fritto	stekt kyckling	Hänchen braten	ocvrti piščanec
lin chicken_leg_0186_CN = mkiCN "chicken leg" ; --	CN	0186	chicken leg	coscia di pollo	kycklinglår	Hühnerbein	piščančje bedro
lin chicken_pieces_0187_CN = mkiCN "chicken pieces" ; --	CN	0187	chicken pieces	pollo a pezzi	kycklingbröst	Hänchenteile	piščančji kosi
lin chicken_0188_CN = mkiCN "chicken" ; --	CN	0188	chicken	pollo	kyckling	das Huhn	piščanec
lin chin_0189_CN = mkiCN "chin" ; --	CN	0189	chin	mento	haka	das Kinn	brada
lin chocolate_0190_CNM = mkiCNM "chocolate" ; --	CNM	0190	chocolate	cioccolata	choklad	die Schokolade	čokolada
lin chocolate_cookie_0191_CN = mkiCN "chocolate cookie" ; --	CN	0191	chocolate cookie	biscotto al cioccolato	chokladkex	Schokoladenplätzchen	čokoladni piškot
lin chocolate_drop_0192_CNPL = mkiCNPL "chocolate drop" ; --	CNPL	0192	chocolate drop	gocce di cioccolato	chokladkarameller	Schokoladentropfen	čokoladne drobtinice
lin Christmas_day_0193_CNT = mkiCNT "Christmas day" ; --	CNT	0193	Christmas day	giorno di  natale	juldagen	Weihnachtstag	božični dan
lin Christmas_tree_0194_CN = mkiCN "Christmas tree" ; --	CN	0194	Christmas tree	albero di natale	julgran	Weihnachtsbaum	Božična jelka
lin church_0195_CNP = mkiCNP "church" ; --	CNP	0195	church	chiesa	kyrka	die Kirche	cerkev
lin church_courtyard_0196_CNP = mkiCNP "church courtyard" ; --	CNP	0196	church courtyard	sagrato	kyrkogård	Kirchplatz	cerkveno dvorišče
lin circus_0197_CNP = mkiCNP "circus" ; --	CNP	0197	circus	circo	cirkus	Zirkuszelt	cirkuški šotor
lin citizen_0198_CNH = mkiCNH "citizen" ; --	CNH	0198	citizen	cittadino	medborgare	Bürger	državljan
lin city_0199_CNP = mkiCNP "city" ; --	CNP	0199	city	città	stad	die Stadt	mesto
lin class_0200_CN = mkiCN "class" ; --	CN	0200	class	classe	klass	die Klasse	razred
lin classical_music_0201_CNM = mkiCNM "classical music" ; --	CNM	0201	classical music	musica classica	klassisk musik	klassische Musik	klasična glasba
lin clean_hands_0202_NP = mkiNP "clean hands" ; --	NP	0202	clean hands	mani pulite	rena händer	saubere Hände	čiste roke
lin clean_house_0203_NP = mkiNP "clean house" ; --	NP	0203	clean house	casa pulita	rent hus	sauberes Haus	čista hiša
lin cleaning_equipment_0204_CN = mkiCN "cleaning equipment" ; --	CN	0204	clean	oggetti pulizia	städredskap	sauber	čist
lin clean_0205_V2 = mkiV2 "clean" ; --	V2	0205	clean	pulire	städa	rein	čediti
lin clean_0206_AP = mkiAP "clean" ; --	AP	0206	clean	pulito	ren	klar	počistiti
lin cleaning_0207_CN = mkiCN "cleaning" ; --	CN	0207	clean	pulizia	rengöring, städning	glatt	čistiti 
-- DERIVED 0208 VP clean room pulire la stanza städa rummet sauberes Zimmer* čista soba 
-- DERIVED 0209 VP clean the bath pulire il bagno städa badrummet Bad reinigen očistiti kopalno kad 
-- DUPLICATE lin bathroom_0209_CNP = mkiCN "bathroom" ; -- CNP 
-- DERIVED 0210 VP clean the kitchen pulire la cucina städa köket die Küche sauber machen očistiti kuhinjo 
-- DERIVED 0211 VP clean the table pulire il tavolo torka bordet den Tisch wischen počistiti mizo 
lin clear_table_0212_VP = mkVP (mkV2 "clear") (mkNP the_Det (mkN "table")) ; --	VP	0212	clear the table	sparecchiare	duka av bordet	klarer Tisch*	čista miza
-- DERIVED 0213 VP close chiudere documento stänga dokument schliessen zapreti 
lin close_0214_V2 = mkiV2 "close" ; --	V2	0214	close	chiudere	stänga	nah	blizu
lin close_ones_eyes_0215_VP = reflPossPlVP (mkV2 "close") (mkN "eye") ; --	Pron -> VP	0215	close eyes	chiudere gli occhi	blunda	Augen schliessen	zapreti oči
lin closet_0216_CNP = mkiCNP "closet" ; --	CNP	0216	closet	armadio	skåp	der Schrank	omara
-- DERIVED 0217 VP close the door chiudere la porta stänga dörren die Tür schliessen zapreti vrata 
-- DERIVED 0218 VP close the window chiudere la finestra stänga fönstret das Fenster schliessn zapreti okno 
lin clothes_0219_CNPL = mkiCNPL "cloth" "clothes" ; ---- --	CNPL	0219	clothes	abbigliamento	klädsel	die Kleidung	blago
-- DERIVED lin clothes_0220_CNPL = mkiCNPL "cloth" "clothes" ; 
-- DERIVED lin clothes_0221_CNPL = mkiCNPL "cloth" "clothes" ; 
lin clothing_store_0222_CNP = mkiCNP "clothing store" ; --	CNP	0222	clothing store	negozio d'abbigliamento	klädaffär	das Bekleidungsgeschäft	trgovina z oblačili
lin cloudy_0223_AP = mkiAP "cloudy" ; --	AP	0223	cloudy	nuvoloso	molnigt	bewölkt	oblačno
lin coach_door_0224_CN = mkiCN "coach door" ; --	CN	0224	coach door	porta dell'autobus	bussdörr	Trainer Tür	vrata vozila
-- DUPLICATE 0225 CNCONJ coat and gloves cappotto e guanti rock och handskar Mantel und Handschuhe plašč in rokavice DUPLICATE 0226 
lin coat_0226_CN = mkiCN "coat" ; --	CN	0226	coat	cappotto	rock	der Mantel	plašč
lin coffee_0227_CNM = mkiCNM "coffee" ; --	CNM	0227	coffee	caffè	kaffe	der Kaffee	kava
lin cold_drink_0228_CN = mkiCN "cold drink" ; --	CN	0228	cold drink	bevanda ghiacciata	kall dryck	kaltes Getränk	hladna pijača
lin cold_0229_AP = mkiAP "cold" ; --	AP	0229	cold	freddo	kall	kalt	hladno
-- DUPLICATEMAYBE lin cold_0230_AP = mkiAP "cold" ; -- AP
lin cold_0231_CNM = mkiCNM "cold" ; --	CNM	0231	cold	raffreddore	förkylning	ruhig	hladen
lin cold_tea_0232_CNM = mkiCNM "cold tea" ; --	CNM	0232	cold tea	té freddo	iste	kalter Tee	hladen čaj
lin brush_0233_CN = mkiCN "brush" ; --	CN	0233	brush	spazzola	borste	Bürste	krtača
lin comb_0233_CN = mkiCN "comb" ; --	CN	0233	brush	spazzola	borste	Bürste	krtača
lin come_back_home_0234_VP = mkVP (mkVP I.come_V) (P.mkAdv "back home") ; --	VP	0234	come back home	torniamo a casa	vi åker hem*	nach hause zurück kommen	priti nazaj domov
lin come_here_0235_VP = mkVP (mkVP I.come_V) here_Adv ; --	VP	0235	come here	vieni qui	kom hit	komm her	pridi sem
lin come_0236_V = I.come_V ; --	V	0236	come	venire	komma	kommen	priti
lin community_0237_CN = mkiCN "community" ; --	CN	0237	community	municipio	samhälle	die Gemeinschaft	skupnost
lin company_0238_CN = mkiCN "company" ; --	CN	0238	company	compania	sällskap	die Firma	podjetje
lin computer_0239_CN = mkiCN "computer" ; --	CN	0239	computer	computer	dator	der Computer	računalnik
lin concert_0240_CNP = mkiCNP "concert" "at" ; --	CNP	0240	concert	concerto	konsert	das Konzert	koncert
lin conference_0241_CNP = mkiCNP "conference" "at" ; --	CNP	0241	conference	conferenze	möte	die Konferenz	konferenca
lin control_0242_CN = mkiCN "control" ; --	CN	0242	control	controllo	kontroll	kontrollieren*	nadzor
lin cook_0243_V = mkV "cook" ; --	V	0243	cook	cucinare	laga mat	der Koch*	kuhar
-- DUPLICATE 0244 VP cook cucinare laga mat der Cook* kuharica DUPLICATE 0243 
lin cook_0245_CNH = mkiCNH "cook" ; --	CNH	0245	cook	cuoco	kock	kochen*	kuhati
lin cooking_book_0246_CN = mkiCN "cooking book" ; --	CN	0246	cooking book	libro da cucina	kokbok	Kochbuch	knjiga za kuhanje
lin cooking_spoon_0247_CN = mkiCN "cooking spoon" ; --	CN	0247	cooking spoon	cucchiaio di legno	träslev	Kochlöffel	žlica za kuhanje
lin copybook_0248_CN = mkiCN "copybook" ; --	CN	0248	copybook	quaderno	övningsbok	das Schönschreibheft	bilježnica
lin cordless_telephone_0249_CN = mkCN (mkA "cordless") (mkN "telephone") ; --	CN	0249	cordless telephone	telefono senza fili	bärbar telefon	Schnurlostelefon	brezžični telefon
lin corner_0250_CNP = mkiCNP "corner" "on" ; --	CNP	0250	corner	angolo	hörn	die Ecke	kotiček
lin corridor_0251_CNP = mkiCNP "corridor" ; --	CNP	0251	corridor	corridoio	korridor	der Korridor,der Flur	koridor,hodnik
lin cottage_cheese_0252_CNM = mkiCNM "cottage cheese" ; --	CNM	0252	cottage cheese	ricotta	keso	der Hüttenkäse	skuta
-- lin cotton_floc_0253_CN = mkiCN "cotton floc" ; DUPLICATE typo 
lin cotton_flock_0254_CNM = mkiCNM "cotton flock" ; --	CNM	0254	cotton flock	batuffoli di cotone	bomull 	Baumwollflocken	bombažne kroglice
-- DERIVED 0255 VV? could not non potrei jag kan inte* konnte nicht ne bi 
lin country_0256_NP = mkiNP "country" ; --	NP	0256	country	campagna	landsbygden	das Land	država
lin country_music_0257_CNM = mkiCNM "country music" ; --	CNM	0257	country music	musica country	countrymusik	Countrymusik	country glazba
lin country_0258_CNP = mkiCNP "country" ; --	CNP	0258	country	paese	land	der Staat	država, dežela
lin course_0259_CNP = mkiCNP "course" "at" ; --	CNP	0259	course	corso	kurs	der Kurs	smer
lin cream_0260_CNM = mkiCNM "cream" ; --	CNM	0260	cream	panna	grädde	die Creme	krema
lin credit_card_0261_CN = mkiCN "credit card" ; --	CN	0261	credit card	carta di credito	kreditkort	die Kreditkarte	kreditna kartica
lin cucumber_0262_CN = mkiCN "cucumber" ; --	CN	0262	cucumber	cetriolo	gurka	die Gurke	kumara
lin cupboard_0263_CNP = mkiCNP "cupboard" ; --	CNP	0263	cupboard	pensile da cucina	köksskåp	der Schrank	omara
lin cup_0264_CN = mkiCN "cup" ; --	CN	0264	cup	tazza	kopp	die Tasse	skodelica
lin customs_0265_CNP = mkiCNP "customs" "at" ; --	CNP	0265	customs	dogana	tull	der Zoll	carina
lin cut_ones_nails_0266_VP = reflPossPlVP (mkV2 I.cut_V) (mkN "nail") ;
lin cut_nails_0266_VP pron = mkVP (mkV2 I.cut_V) (mkNP (S.mkQuant pron) pluralNum (mkCN (mkN "nail"))) ; --	Pron -> VP	0266	cut nails	tagliare le unghie	klippa naglarna	Nägel schneiden	rezati nohte
lin cut_0267_V2 = mkV2 I.cut_V ; --	V2	0267	cut	tagliare	klippa	schneiden	rez
-- DUPLICATE 0268 CN appointment appuntamento möte* das Datum datum DUPLICATE 0030 
lin date_0269_CN = mkiCN "date" ; --	CN	0269	date	data	datum	der Termin*	dogovorjen sestanek
lin daughter_0270_CNH = mkiCNH "daughter" ; --	CNH	0270	daughter	figlia	dotter	die Tochter	hčerka
lin day_0271_CNT = mkiCNT "day" ; --	CNT	0271	day	giorno	dag	der Tag	dan
-- DERIVED 0272 Month December Dicembre december der Dezember december 
lin declare_0273_VS = mkiVS "declare" ; --	VS	0273	declare	dichiarare	uttala	erklären	izjaviti
lin decorate_pie_0274_VP = mkVP (mkV2 "decorate") (mkNP the_Det (mkN "pie")) ; --	VP	0274	decorate pie	decorare la torta	dekorera tårtan	Kuchen dekorieren	okrasiti sladico
lin degree_0275_CN = mkiCN "degree" ; --- laurea (academic) --	CN	0275	degree	laurea	examen	der Grad	stopnja
lin delicious_0276_AP = mkiAP "delicious" ; --	AP	0276	delicious	delizioso	läcker	köstlich	slasten
lin deodorant_0277_CNM = mkiCNM "deodorant" ; --	CNM	0277	deodorant	deodorante	deodorant	das Deodorant	deodorant
lin department_store_0278_CNP = mkiCNP "department store" ; --	CNP	0278	department store	grande magazzino	varuhus	das Kaufhaus	veleblagovnica
lin desk_0279_CN = mkiCN "desk" ; --	CN	0279	desk	scrivania	skrivbord	der Schreibtisch	pisalna miza
lin detergent_0280_CNM = mkiCNM "detergent" ; --	CNM	0280	detergent	detergente	tvättmedel	das Waschmittel	pralno sredstvo
lin dictionary_0281_CN = mkiCN "dictionary" ; --	CN	0281	dictionary	dizionario	ordbok	das Wörterbuch	slovar
lin digital_0282_AP = mkiAP "digital" ; --	AP	0282	digital	digitale	digital	digital	digitalni
lin dinner_0283_CN = mkiCN "dinner" ; --	CN	0283	dinner	cena	middag	das Abendessen	večerja
lin dinner_time_0284_NP = mkiNP "dinner time" ; --	NP	0284	dinner time	ora di cena	middagsdags	Essenzeit	čas za večerjo
lin direction_0285_CN = mkiCN "direction" ; --	CN	0285	direction	direzione	riktning	die Richtung	smer
lin dirty_hands_0286_NP = mkiNP "dirty hands" ; --	NP	0286	dirty hands	mani sporche	smutsiga händer	schmutzige Hände	umazane roke
lin dirty_0287_AP = mkiAP "dirty" ; --	AP	0287	dirty	sporco	smutsig	schmutzig	umazan
lin disgrace_0288_CN = mkiCN "disgrace" ; --	CN	0288	disgrace	disgrazia	olycka	die Schande	sramota
lin disgust_0289_CN = mkiCN "disgust" ; --	CN	0289	disgust	schifo	avsky	der Ekel	gnus
lin dishes_detersive_0290_CNM = mkiCNM "dishes detersive" ; --	CNM	0290	dishes detersive	detersivo piatti	diskmedel	waschaktive Gerichte	detergent za pomivanje posode
lin dishwasher_0291_CN = mkiCN "dishwasher" ; --	CN	0291	dishwasher	lavapiatti	diskmaskin	die Geschierspüler	pomivalni stroj
lin divorce_0292_CN = mkiCN "divorce" ; --	CN	0292	divorce	divorzio	skilsmässa	die Scheidung	ločitev
lin doctor_0293_CNH = mkiCNH "doctor" ; --	CNH	0293	doctor	dottore	doktor	der Arzt	zdravnik
-- DUPLICATEMAYBE lin doctor_0294_CNH = mkiCNH "doctor" ; -- CNH
lin dog_food_0295_CNM = mkiCNM "dog food" ; --	CNM	0295	dog food	cibo per cani	hundmat	Hundefutter	pasja hrana
lin cross_VP_0296_VP = mkVP (mkV "cross") ; --	VP	0296	do not cross	non attraversare	gå inte över	überquere nicht	ne prečkaj (cesto)
-- DERIVED 0297 VP don't like non piacere inte tycka om nicht mögen ne maram 
-- DERIVED 0298 Imp don't look non guardare titta inte nicht schauen ne glej 
-- DERIVED 0299 VP don't speak non parlante icketalande nicht sprechen ne govori 
-- DERIVED 0300 VP don't care non mi interessa intresserar mig inte egal me ne zanima 
-- DERIVED 0301 VP don't want non volere inte vilja nicht wollen ne želim 
lin donut_shop_bakery_0302_CNP = mkiCNP "donut shop" | mkiCNP "bakery" ; --	CNP	0302	donut shop,bakery	panetteria	bageri	donut shop	prodajalna krofov
lin do_the_shopping_0303_VP = mkVP (mkV2 I.do_V) (mkNP the_Det (mkN "shopping")) ; --	VP	0303	do the shopping	fare la spesa	handla	den Einkauf machen	narediti nakup
lin a_dozen_0304_Det = mkiDet "a dozen" ; --	Det	0304	a dozen	dozzina	dussin	da Dutzend*	ducat
lin drawer_0305_CN = mkiCN "drawer" ; --	CN	0305	drawer	cassetto	låda	die Schublade	predal
lin dress_0306_CN = mkiCN "dress" ; --	CN	0306	dress	vestito	klänning	das Kleid	obleka
lin dried_fruit_0307_CNM = mkiCNM "dried fruit" ; --	CNM	0307	dried fruit	frutta secca	torkad frukt	Trockenfrüchte	suho sadje
lin drink_0308_V = mkiV "drink" ; --	V	0308	drink	bere	dricka	das Getränk*	pijača
lin drink_0308_V2 = mkiV2 "drink" ; --	V2	0308	drink	bere	dricka	das Getränk*	pijača
lin drink_0309_CN = mkiCN "drink" ; --	CN	0309	drink	bibita	dryck	der Drink	piti
lin drive_0310_V = mkiV "drive" ; --	V	0310	drive	guidare	köra	fahren	voziti
lin drive_0310_V2 = mkiV2 "drive" ; --	V2	0310	drive	guidare	köra	fahren	voziti
lin driver_0311_CNH = mkiCNH "driver" ; --	CNH	0311	driver	pilota	chaufför	der Fahrer	voznik 
lin dryer_0312_CN = mkiCN "dryer" ; --	CN	0312	dryer	asciugatrice	torktumlare	der Trockner	sušilec las
lin dry_ones_face_0313_VP = reflPossVP (mkV2 "dry") (mkN "face") ; --	Pron -> VP	0313
lin dry_face_0313_VP pron = mkVP (mkV2 "dry") (mkNP (S.mkQuant pron) (mkN "face")) ; --	Pron -> VP	0313	dry face	asciugare il viso	torka ansiktet	trockene Gesicht	suh obraz
lin dry_ones_hands_0314_VP = reflPossPlVP (mkV2 "dry") (mkN "hand") ; --	Pron -> VP	0314	dry hands	asciugare le mani	torka händerna	trockene Hände	suhe roke
lin dry_hands_0314_VP pron = mkVP (mkV2 "dry") (mkNP (S.mkQuant pron) pluralNum (mkN "hand")) ; --	Pron -> VP	0314	dry hands	asciugare le mani	torka händerna	trockene Hände	suhe roke
lin dry_pants_0315_NP = mkiNP "dry pants" ; --	NP	0315	dry pants	pantaloni asciutti	torra byxor	trockene Hosen	suhe hlače
lin earn_0316_V2 = mkiV2 "earn" ; --	V2	0316	earn	guadagnare	tjäna	verdienen	zaslužiti
lin Easter_egg_0317_CN = mkiCN "Easter egg" ; --	CN	0317	Easter egg	uova di pasqua	påskägg	Ostereier	velikonočna jajca
lin easy_chair_0318_CN = mkiCN "easy chair" ; --	CN	0318	easy chair	poltrona comoda	bekväm fåtölj	der Sessel	ležalnik
lin eat_0319_V = mkiV "eat" ; --	V	0319	eat	mangiare	äta	essen	jesti
lin eat_0319_V2 = mkiV2 "eat" ; --	V2	0319	eat	mangiare	äta	essen	jesti
lin economic_0320_AP = mkiAP "economic" ; -- 	AP
lin eggs_on_toast_0321_NP = mkiNP "eggs on toast" ; --	NP	0321	eggs on toast	uova sul toast	äggsmörgås	Eier auf Toast	jajca v opečenem kruhu 
-- DUPLICATE 0322 NP eggs on toast uova sul toast äggsmörgås Eier auf Toast jajca na toastu DUPLICATE 0321 
-- DERIVED 0323 Numeral eight otto åtta acht osem 
lin elbow_0324_CN = mkiCN "elbow" ; --	CN	0324	elbow	gomito	armbåge	der Ellbogen	komolec
lin electric_0325_AP = mkiAP "electric" ; --	AP	0325	electric	elettrica*	elektrisk	elektrisch	električen
lin email_0326_CN = mkiCN "email" ; --	CN	0326	email	email	e-post	die email	E-naslov
lin emery_board_0327_CN = mkiCN "emery board" ; --	CN	0327	emery board	limetta per unghie	nagelfil	Nagelfeile	pilica za nohte
lin employee_0328_CNH = mkiCNH "employee" ; --	CNH	0328	employee	impegnato	anställd	 der Arbeitnehmer	zaposleni (nameščenec)
-- DUPLICATEMAYBE lin employee_0329_CNH = mkiCNH "employee" ; -- CNH
lin empty_trash_can_0330_VP = mkVP (mkV2 "empty") (mkNP the_Det (mkN "trash can")) ; --	VP	0330	empty trash can	svuotare sacco dell'immondizia	tömma soppåsen	leere Mülleimer*	prazen koš za smeti
lin end_walk_0331_VP = mkVP (mkV2 "end") (mkNP a_Det (mkN "walk")) ; --	VP	0331	end a walk	terminare una passeggiata	avsluta en promenad	Ende einen Spaziergang*	končati sprehod
lin end_0332_CN = mkiCN "end" ; --	CN	0332	end	fine	slut	das Ende	konec
lin end_of_the_sentence_0333_NP = S.mkNP the_Det (mkCN (mkCN (mkN "end")) (S.mkAdv possess_Prep (S.mkNP the_Det (mkN "sentence")))) ; --	NP	0333	end of the sentence	fine della frase	slutet på meningen	Ende des Satzes	konec stavka
lin end_of_the_word_0334_NP = S.mkNP the_Det (mkCN (mkCN (mkN "end")) (S.mkAdv possess_Prep (S.mkNP the_Det (mkN "word")))) ; --	NP	0334	end of the word	fine della parola	slutet på ordet	Ende des Wortes	konec besede
lin evening_0335_CNT = mkiCNT "evening" ; --	CNT	0335	evening	sera	kväll	der Abend	večer
lin exam_0336_CN = mkiCN "exam" ; --	CN	0336	exam	esame	examen*	die Prüfung	izpit
lin excellent_0337_AP = mkiAP "excellent" ; --	AP	0337	excellent	eccellente	utmärkt	ausgezeichnet	odličen
lin except_0338_Prep = mkiPrep "except" ; --	Prep	0338	except	salve	utom	ausser	razen
lin exchange_0339_CNM = mkiCNM "exchange" ; --	CNM	0339	exchange	cambio	växel	der Austausch	zamenjava
lin excuse_me_0340_Interj = mkiInterj "excuse me" ; --	Interj	0340	excuse me	scusa	förlåt mig	Entschuldigen Sie	oprostite
lin go_away_0341_V2 = mkV2 (partV I.go_V "away") from_Prep ; --	V2	0341	exit	andare via da	gå ifrån	der Ausgang*	izhod
lin go_out_0342_V = partV I.go_V "out" ; --	V	0342	exit	uscire	gå ut	die Ausfahrt*	oditi (ven)
lin exit_0343_CNP = mkiCNP "exit" "at" ; --	CNP	0343	exit	uscita	utgång	die Abfahrt	odhajanje
lin eye_0344_CN = mkiCN "eye" ; --	CN	0344	eye	occhio	öga	das Auge	oko
lin eye_socket_0345_CN = mkiCN "eye socket" ; --	CN	0345	eye socket	orbita	ögonhåla	die Augenhöhle	očnica
lin face_0346_CN = mkiCN "face" ; --	CN	0346	face	volto	ansikte	das Gesicht	obraz
lin facial_hair_0347_CNM = mkiCNM "facial hair" ; --	CNM	0347	facial hair	barba	skägg	Gesichtsbehaarung	obrazna dlaka
lin make_up_ones_face_0348_VP = reflPossVP (mkV2 (partV I.make_V "up")) (mkN "face") ; --	VP	0348	facial make up	truccare la faccia	sminka sig	Geschts Make Up*	ličila za obraz
lin make_up_face_0348_VP pron = mkVP (mkV2 (partV I.make_V "up")) (mkNP (S.mkQuant pron) (mkN "face")) ; --	Pron -> VP	0348	facial make up	truccare la faccia	sminka sig	Geschts Make Up*	ličila za obraz
lin factory_0349_CNP = mkiCNP "factory" ; --	CNP	0349	factory	fabbrica	fabrik	die Fabrik	tovarna
lin fall_0350_V = mkiV "fall" ; --	V	0350	fall	cadere	falla	der Herbst*	jesen
lin family_0351_CNH = mkiCNH "family" ; --	CNH	0351	family	famiglia	familj	die Familie	družina
lin fantastic_0352_AP = mkiAP "fantastic" ; --	AP	0352	fantastic	fantastico	fantastisk	fantastisch	fantastičen
lin farmer_0353_CNH = mkiCNH "farmer" ; --	CNH	0353	farmer	contadino	lantbrukare	der Farmer	kmet
lin fashion_0354_CNM = mkiCNM "fashion" ; --	CNM	0354	fashion	moda	mode	die Mode	moda
lin fast_0355_V = mkV "fast" ; --	V	0355	fast	digiunare	fasta	schnell*	hiter
lin fast_0356_CN = mkiCN "fast" ; --	CN	0356	fast	digiuno	fasta	rasant*	post
lin fast_food_0357_CNM = mkiCNM "fast food" ; --	CNM	0357	fast food	fast food	snabbmat	das Fastfood	hitra prehrana
lin fasting_day_0358_CNT = mkiCNT "fasting day" ; --	CNT	0358	fasting day	giorno del digiuno	fastedag	Fasten Tag	dan posta
lin fast_0359_Adv = mkiAdv "fast" ; --	Adv	0359	fast	presto	snabbt	sicher*	hitro
lin fat_0361_AP = mkiAP "fat" ; --	AP	0361	fat	grasso	tjock	fett	maščoba
lin father_0362_CNH = mkiCNH "father" ; --	CNH	0362	father	padre	far	der Vater	oče
-- DUPLICATEMAYBE lin father_0363_CNH = mkiCNH "father" ; -- CNH
lin father's_day_0364_NP = mkiNP "father's day" ; --	NP	0364	father's day	festa del papà	Fars Dag	Vatertag	Dan očetov
-- DERIVED 0365 Month February Febbraio februari der Februar februar 
lin feel_0366_V2 = mkV2 I.feel_V ; --	V2	0366	feel	io sento	jag känner, jag tycker	fühlen	občutiti
lin feel_0366_VS = mkVS I.feel_V ; --	VS	0366	feel	io sento	jag känner, jag tycker	fühlen	občutiti
-- lin feel_0367_V2 = mkiV2 "feel" ; -- DUPLICATE 
-- lin feel_0367b_VS = mkiVS "feel" ; -- DUPLICATE 
lin fee_0368_CN = mkiCN "fee" ; --	CN	0368	fee	tariffa	avgift	die Gebühr	pristojbina, članarina
lin female_0369_AP = mkiAP "female" ; --	AP	0369	female	femmina	kvinnlig	weiblich	ženski
lin female_friend_0370_CNH = mkiCNH "female friend" ; --	CNH	0370	female friend	amica	väninna	Freundin	prijateljica
lin few_0371_Det = mkiDet "few" ; --	Det	0371	few	pochi	få	wenige	nekaj
lin a_few_0371_Det = mkiDet "a few" ; --	Det	0371	few	pochi	få	wenige	nekaj
lin little_0372_DetM = mkiSgDet "little" ; --	Det	0372	little	poco	få*	wenige	malo
lin a_little_0372_DetM = mkiSgDet "a little" ; --	Det	0372	little	poco	få*	wenige	malo
lin field_trip_0373_CN = mkiCN "field trip" ; --	CN	0373	field trip	gita	utflykt	Ausflug	ekskurzija
lin file_0374_CN = mkiCN "file" ; --	CN	0374	file	file	fil	die Datei	mapa
-- DUPLICATEMAYBE lin file_0375_CN = mkiCN "file" ; -- CN
lin file_ones_nails_0376_VP = reflPossPlVP (mkV2 "file") (mkN "nail") ; --	VP	0376	file nail	limarsi le unghie	fila naglarna	Nagel feilen	pilica za nohte
lin file_nails_0376_VP pron = mkVP (mkV2 "file") (mkNP (S.mkQuant pron) pluralNum (mkCN (mkN "nail"))) ; --	Pron -> VP	0376	file nail	limarsi le unghie	fila naglarna	Nagel feilen	pilica za nohte
lin finger_0377_CN = mkiCN "finger" ; --	CN	0377	finger	dito	finger	der Finger	prst
lin first_course_0378_CN = mkiCN "first course" ; --	CN	0378	first course	primi	förrätt	der erster Gang	prva jed
lin fish_and_chips_0379_NP = mkiNP "fish and chips" ; --	NP	0379	fish and chips	pesce e patatine	fisk och pommes frites	Fish and Chips	riba in ocvrt krompir
lin fish_0380_V = mkiV "fish" ; --	V	0380	fish	pescare	fiska	der Fisch*	riba 
lin fish_0380_V2 = mkiV2 "fish" ; --	V2	0380	fish	pescare	fiska	der Fisch*	riba 
lin fish_0381_CN = mkiCN "fish" ; --	CN	0381	fish	pesce	fisk	fischen*	ribariti
lin fish_soup_0382_CNM = mkiCNM "fish soup" ; --	CNM	0382	fish soup	zuppa di pesce	fisksoppa	die Fischsuppe	ribja juha
lin fish_stick_0383_CN = mkiCN "fish stick" ; --	CN	0383	fish stick	bastoncini pesce	fiskpinnar	Fischstäbchen	ribje palčke
lin fish_tank_0384_CN = mkiCN "fish tank" ; --	CN	0384	fish tank	acquario	akvarium	Aquarium	akvarij
-- DUPLICATEMAYBE lin fish_tank_0385_CN = mkiCN "fish tank" ; -- CN
-- DERIVED 0386 Numeral five cinque fem fünf pet 
lin flat_bread_0387_CNM = mkiCNM "flat bread" ; --	CNM	0387	flat bread	schiacciatina	knäckebröd	Fladenbrot	tanki kruh, mlinec
lin flight_0388_CN = mkiCN "flight" ; --	CN	0388	flight	volo	flyg	der Flug	let
lin floor_0389_CNP = mkiCNP "floor" "on" ; --	CNP	0389	floor	pavimento	golv	der Boden	nadstropje
lin flower_in_plant_0390_CN = mkCN (mkCN (mkN "flower")) (SyntaxEng.mkAdv in_Prep (mkNP (mkN "plant"))) ; --	CN	0390	flower in plant	pianta da vaso	blommande krukväxt	Blume in der Anlage	roža v lončku
lin flush_the_toilet_0391_VP = mkVP (mkV2 "flush") (mkNP the_Det (mkN "toilet")) ; --	VP	0391	flush the toilet	tirare lo sciacquone	spola på toaletten	blinken die Toilette	spiranje stranišča
lin fold_dresses_0392_VP = mkVP (mkV2 "fold") (mkNP aPl_Det (mkN "dress")) ; --	VP	0392	fold dresses	piegare i vestiti	vika kläder	falten Kleider	zložene, prepognjene obleke
lin food_0393_CNM = mkiCNM "food" ; --	CNM	0393	food	cibo	mat	das Essen	hrana 
lin foot_0395_CN = mkCN (mkN "foot" "feet") ; --	CN	0395	foot	piede	fot	der Fuss	stopalo
lin forget_0396_V = I.forget_V ; --	V	0396	forget	dimenticare	glömma	vergessen	pozabiti
lin forget_0396_V2 = mkV2 I.forget_V ; --	V2	0396	forget	dimenticare	glömma	vergessen	pozabiti
lin fork_0397_CN = mkiCN "fork" ; --	CN	0397	fork	forchetta	gaffel	die Gabel	vilica
lin free_time_0398_CNM = mkCN (mkA "free") (mkN "time") ; --	CNM	0398	free time	tempo libero	fritid	Freizeit	prosti čas
lin freezed_dinner_0399_CN = mkiCN "freezed dinner" ; --	CN	0399	freezed dinner	cena congelata	djupfryst middag	Tiefkühlgericht	zamrznjena večerja
-- DERIVED 0400 Weekday Friday venerdÃ¬ fredag der Freitag petek 
lin fridge_0401_CN = mkiCN "fridge" ; --	CN	0401	fridge	frigorifero	kylskåp	der Kühlschrank	hladilnik
lin from_0402_PrepP = from_Prep ; --	PrepP	0402	from	da	från	von	iz, od
lin fruit_0403_CN = mkCN (mkN "fruit" "fruit") ; --	CN	0403	fruit	frutta	frukt	die Frucht	sadje
lin fruit_tree_0404_CN = mkiCN "fruit tree" ; --	CN	0404	fruit tree	albero da frutta	fruktträd	Obstbaum	sadno drevo
lin full_moon_0405_NP = mkiNP "full moon" ; --	NP	0405	full moon	luna piena	fullmåne	der Vollmond	polna luna
lin funny_0407_AP = mkiAP "funny" ; --	AP	0407	funny	divertente	kul/rolig	lustig	šaljiv, smešen
lin funny_show_0408_CN = mkCN (mkA "funny") (mkN "show") ; --	CN	0408	funny show	spettacolo divertente	kul föreställning	lustge Show	zabavna oddaja
lin gallant_0409_AP = mkiAP "gallant" ; --	AP	0409	gallant	galante	galant	galant	galanten
lin gate_0410_CNP = mkiCNP "gate" "at" ; --	CNP	0410	gate	cancello	grind	das Tor	vrata
lin general_health_0411_CN = mkCN (mkA "general") (mkN "health") ; --	CN	0411	general health	salute generale	allmäntillstånd	allgemeine Gesundheit	splošno zdravje
lin get_dressed_0412_VP = mkVP (partV I.get_V "dressed") ; --	VP	0412	get dressed	vestire	klä på sig	sich anziehen	obleci se
lin get_out_of_chair_0413_VP det = mkVP (mkVP (partV I.get_V "out")) (SyntaxEng.mkAdv possess_Prep (mkNP det (mkN "chair"))) ; --	Det -> VP	0413	get out of chair	alzarsi dalla carrozzina	resa sig ur stolen	aus der Stuhl rauskommen	se vstani s stola
lin get_0415_V2 = mkV2 I.get_V ; --	V2	0415	get	ricevere	ta emot	erhalten	vzeti
lin girl_0416_CNH = mkiCNH "girl" ; --	CNH	0416	girl	bambina	flicka	das Mädchen	dekle
lin give___0418_V3 = mkV3 I.give_V ; --	V3	0418	give  	dare	ge	geben	dati
--DERIVED 0419 Imp give me that dammi quello ge mig det gib mir das daj mi 
lin give_way_to_0420_V2 = mkV2 (partV I.give_V "way") to_Prep ; --	V2	0420	give way to	dare precedenza	ge företräde	den Weg für	prepustiti prostor, ukloniti se
lin glad_to_meet_you_0421_Interj = mkiInterj "glad to meet you" ; --	Interj	0421	glad to meet you	piacere di conoscerti	glad att få träffa dig	schön dich zu treffen	me veseli, da sva se spoznala
-- DERIVED 0422 VP glass and straw bicchiere e cannuccia glas och sugrör Glas und Stroh steklo in slama 
lin glass_0423_CN = mkiCN "glass" ; --	CN	0423	glass	bicchiere	glas	das Glas	steklo
lin glue_envelope_0424_VP det = mkVP (mkV2 "glue") (mkNP det (mkN "envelope")) ; --	Det -> VP	0424	glue an envelope 	incollare una busta	klistra igen ett kuvert	einen Umschlag kleben	zalepiti koverto
lin go_0425_V = I.go_V ; --	V	0425	go	andare	gå	gehen	iti
lin go_around_0426_V = partV I.go_V "around" ; --	V	0426	go around	andare a fare un giro	gå ut en stund	Herumgehen	pojdi okoli
lin go_away_0427_V = partV I.go_V "away" ; --	V	0427	go away	andare via	ge sig iväg	weggehen	pojdi stran
lin go_fast_0428_V = partV I.go_V "fast" ; --	V	0428	go fast	andare velocemente	gå snabbt	schnell gehen	pojdi hitro
lin good_0430_AP = mkiAP "good" ; --	AP	0430	good	buono	bra	schön	dobro
lin good_bye_0431_Interj = mkiInterj "good bye" ; --	Interj	0431	good bye	arrivederla	hej då	Auf Wiedersehen	nasvidenje
lin good_proposal_0432_CN = mkCN (mkA "good") (mkN "proposal") ; --	CN	0432	good proposal	buoni propositi	bra förslag	gute Vorschlag	dober predlog
lin go_0433_NP = mkNP (mkCN (mkA "green") (mkN "light")) | mkiNP "go" ; --	NP	0433	go	verde pedoni	grönt ljus för gående	geh	pojdi
lin gracious_0434_AP = mkiAP "gracious" ; --	AP	0434	gracious	grazioso	graciös	gnädig	ljubezniv, prikupen
lin grandfather_0435_CNH = mkiCNH "grandfather" ; --	CNH	0435	grandfather	nonno	morfar/farfar	der Grossvater	ded, dedek, stari oče
lin granny_pie_0436_CNM = mkiCNM "granny pie" ; --	CNM	0436	granny pie	torta della nonna	paj	Kuchen von Oma	babičina pita
lin granola_bar_0437_CN = mkiCN "granola bar" ; --	CN	0437	granola bar	barretta ai cereali	müslibar	Müsliriegel	granola tablica (žitna tablica)
lin grapes_juice_0438_CNM = mkiCNM "grape juice" ; --	CNM	0438	grapes juice	succo d'uva	druvjuice	Trauben Saft	grozdni sok
lin grape_0439_CN = mkiCN "grape" ; --	CN	0439	grape	uva	vindruvor	die Trauben	grozdje
lin graphics_pad_0440_CN = mkiCN "graphics pad" ; --	CN	0440	graphics pad	mouse a tavoletta	datormus*	Grafik Pad	grafična tablica
lin grated_apple_0441_CNM = mkCN (mkA "grated") (mkN "apple") ; --	CNM	0441	grated apple	mela grattugiata	rivet äpple	bewertete Apfel	naribano jabolko
lin green_bean_0442_CN = mkCN (mkA "green") (mkN "bean") ; --	CN	0442	green bean	fagioli verdi	gröna bönor	die grüne Bohne	zeleni fižol
lin green_0443_AP = mkiAP "green" ; --	AP	0443	green	verde	grön	grün	zelen
lin grill_cheese_0444_CNM = mkiCNM "grill cheese" ; --	CNM	0444	grill cheese	formaggio all griglia	grillad ost	gegrillter Käse	sir na žaru
lin guesthouse_0445_CNP = mkiCNP "guesthouse" ; --	CNP	0445	guesthouse	pensione	pensionat	Gasthaus	gostišče
lin gym_0447_CNP = mkiCNP "gym" ; --	CNP	0447	gym	palestra	gymnastiksal	die Turnhalle	gimnastika
lin hair_clip_0450_CN = mkiCN "hair clip" ; --	CN	0450	hair clip	fermaglio per capelli	hårspänne	Haarklammer	sponka za lase
lin hair_cut_0451_CN = mkiCN "hair cut" ; --	CN	0451	hair cut	taglio di capelli	klippa håret	der Haarschnitt	striženje
lin hair_dryer_0452_CN = mkiCN "hair dryer" ; --	CN	0452	hair dryer	asciuga capelli	hårtork	der Haartrockner	sušilnik za lase
lin hair_spray_0453_CNM = mkiCNM "hair spray" ; --	CNM	0453	hair spray	lacca	hårspray	der Haarspray	lak za lase
lin hamburger_0454_CN = mkiCN "hamburger" ; --	CN	0454	hamburger	hamburger	hamburgare	der Hamburger	hamburger
lin hand_0455_CN = mkiCN "hand" ; --	CN	0455	hand	mano	hand	die Hand	dlan
lin happy_0456_AP = mkiAP "happy" ; --	AP	0456	happy	contento	nöjd	glücklich	srečen
-- DUPLICATEMAYBE lin happy_0457_AP = mkiAP "happy" ; -- AP
lin hat_0458_CN = mkiCN "hat" ; --	CN	0458	hat	cappello	hatt	der Hut	klobuk
-- DERIVED lin have_0459_V2 = S.have_V2 ; -- V2
-- DERIVED lin have_0460_V2 = mkiV2 "have" ; 
-- DERIVED 0461 V2? have not non avere inte ha nicht haben nimati 
-- DERIVED 0462 V2? have not* non avere inte ha nicht besitzen revna oseba 
-- DERIVED 0463 QCl have you heard? hai sentito di har du hört hast du gehört? ali ste slišali? 
lin headache_0464_CNM = mkiCNM "headache" ; --	CNM	0464	headache	mal di testa	huvudvärk	die Kopfschmerzen	glavobol
lin head_0465_CN = mkiCN "head" ; --	CN	0465	head	capo	huvud	der Kopf	glava
-- lin head_0466_CN = mkiCN "head" ; DUPLICATE 
lin health_0467_CNM = mkiCNM "health" ; --	CNM	0467	health	salute	hälsa	die Gesundheit	zdravje
lin healthy_0468_AP = mkiAP "healthy" ; --	AP	0468	healthy	sano	frisk	gesund	zdrav
lin hearing_test_0469_CN = mkiCN "hearing test" ; --	CN	0469	hearing test	test per l'udito	hörseltest	Hörtest	test sluha
lin heart_attack_0470_CN = mkiCN "heart attack" ; --	CN	0470	heart attack	attacco di cuore	hjärtattack	der Herzanfall	srčni infarkt
lin heart_0471_CN = mkiCN "heart" ; --	CN	0471	heart	cuore	hjärta	das Herz	srce
lin heart_problem_0472_CN = mkiCN "heart problem" ; --	CN	0472	heart problem	problemi di cuore	hjärtproblem	das Herzproblem	težave s srcem
lin help_0473_V = mkiV "help" ; --	V	0473	help	aiutare	hjälpa	die Hilfe*	pomoč
lin help_0473_V2 = mkiV2 "help" ; --	V2	0473	help	aiutare	hjälpa	die Hilfe*	pomoč
lin help_0474_CNM = mkiCNM "help" ; --	CNM	0474	help	aiuto	hjälp	die Aushilfe	pomagati
lin here_it_is_0476_Interj = mkiInterj "here it is" ; --	Interj	0476	here it is	ecco	här är det	hier ist es	tukaj je
lin here_0477_AdvP = mkiAdvP "here" ; --	AdvP	0477	here	qui	här	hier	tukaj 
-- DERIVED 0478 Quant her suo hans/hennes* ihr njo 
lin high_0479_AP = mkiAP "high" ; --	AP	0479	high	alto	hög	hoch	visok
lin high_blood_pressure_0480_NP = mkNP (mkCN (mkA "high") (mkN "blood pressure")) ; --	NP	0480	high blood pressure	pressione alta	högt blodtryck	der Bluthochdruck	visok krvni pritisk
lin high_chair_0481_CN = mkCN (mkA "high") (mkN "chair") ; --	CN	0481	high chair	seggiolone	hög stol	Hochstuhl	stolček za hranjenje
lin highway_0482_CNP = mkiCNP "highway" "on" ; --	CNP	0482	highway	autostrada	motorväg	die Autobahn	avtocesta
lin hill_0483_CNP = mkiCNP "hill" "on" ; --	CNP	0483	hill	collina	kulle	der Hügel	hrib
lin hockey_player_0484_CNH = mkiCNH "hockey player" ; --	CNH	0484	hockey player	giocatore di hockey	hockeyspelare	Hockey Spieler	hokejist
lin hold_hands_0485_VP = mkVP (partV I.hold_V "hands") ; --	VP	0485	hold hands	tenersi per mano	hålla varandra i handen	Hände halten	držati se za    roke
lin holiday_0486_CNT = mkiCNT "holiday" ; --	CNT	0486	holiday	vacanza	semester	der Urlaub	počitnice
lin homemade_0487_AP = mkiAP "homemade" ; --	AP	0487	homemade	casalingo	hemmagjord	selbst gemacht	domač
lin honey_0488_CNM = mkiCNM "honey" ; --	CNM	0488	honey	miele	honung	der Honig	med
lin horror_0489_CNM = mkiCNM "horror" ; --	CNM	0489	horror	orrore	skräck	der Horror	groza
lin horse_0490_CN = mkiCN "horse" ; --	CN	0490	horse	cavallo	häst	das Pferd	konj
lin hostel_0491_CNP = mkiCNP "hostel" ; --	CNP	0491	hostel	ostello	vandrarhem	die Herberge	hostel (hotel po ugodni ceni)
lin hot_0493_AP = mkiAP "hot" ; --	AP	0493	hot	caldo	varm	heiss	vroč
lin hot_chocolate_0494_CNM = mkCN (mkA "hot") (mkN "chocolate") ; --	CNM	0494	hot chocolate	cioccolata calda	varm choklad	die heisse Schokolade	vroča čokolada
lin hot_dog_0495_CN = mkiCN "hot dog" ; --	CN	0495	hot dog	hot dog	varm korv	der Hotdog	hrenovka v kruhu
lin hotel_0496_CNP = mkiCNP "hotel" ; --	CNP	0496	hotel	albergo	hotel*	das Hotel	hotel
-- DUPLICATE 0497 CNP hotel albergo hotell das Hotel gostišče DUPLICATE 0496 
lin hot_pepper_0498_CNM = mkiCNM "hot pepper" ; --	CNM	0498	hot pepper	peperoncino piccante	stark peppar	Paprika	pekoča paprika
lin hot_sausage_0499_CN = mkiCN "hot sausage" ; --	CN	0499	hot sausage	salame piccante	stark korv	heisse Wurst	vroča klobasa
lin house_0500_CNP = mkiCNP "house" ; --	CNP	0500	house	casa	hus	das Haus	hiša
lin how_are_0501_QCl nph = mkQCl how_IAdv nph ; --	NPH -> QCl	0501	how are you?	come stai?	hur mår du?	wie geht es dir?	kako si?
lin how_much_is_0502_QCl np = mkQCl S.how8much_IAdv np ; --	NP -> QCl	0502	how much is it?	quanto costa	hur mycket kostar det?	wie viel kostet das	koliko je to? Koliko stane?
-- DERIVED 0503 IP how much quanto hur mycket wie viel? koliko 
-- DERIVED 0504 QCl how old are you? quanti anni hai hur gammal är du? wie alt sind Sie? koliko si star(a)? 
lin how_is_it_going_0505_Utt = mkiUtt "how is it going" ; --	Utt	0505	how's it going?	come va	hur går det?	wie geht's?	kako gre
lin how_is_the_weather_0506_Utt = mkiUtt "how is the weather" ; --	Utt	0506	how's the weather?	com'è il tempo	hur är vädret?	Wie ist das Wetter?	kakšno je vreme
-- DERIVED 0507 Numeral hundred cento hundra hundert sto 
lin hunger_0508_CNM = mkiCNM "hunger" ; --	CNM	0508	hunger	fame	hunger	der Hunger	lakota
lin hungry_0509_AP = mkiAP "hungry" ; --	AP	0509	hungry	affamato	hungrig	hungrig	lačen
lin hurt_0511_AP = mkiAP "hurt" ; --	AP	0511	hurt	ferito	skadad	verletzen	poškodovan, ranjen
lin agree_0513_VP = mkVP (mkV "agree") ; --	VP	0513	I agree	sono d'accordo	jag instämmer	ich stimme zu	se strinjam
-- DERIVED 0514 Cl i can't wait non posso aspettare jag kan inte vänta ich kann nicht warten komaj čakam 
lin ice_cream_biscuit_0515_CN = mkiCN "ice cream biscuit" ; --	CN	0515	ice cream biscuit	gelato biscotto	sandwichglass	Eis Keks	sladoled s piškoti 
lin ice_cream_cone_0516_CN = mkiCN "ice cream cone" ; --	CN	0516	ice cream cone	cono gelato	glasstrut	Eistüte	sladoledni kornet
lin ice_cream_0517_CNM = mkiCNM "ice cream" ; --	CNM	0517	ice cream	gelato	glass	das Eis	sladoled
lin ice_0518_CNM = mkiCNM "ice" ; --	CNM	0518	ice	ghiaccio	is	das Eis	led
lin ice_lollipop_0519_CN = mkiCN "ice lollipop" ; --	CN	0519	ice lollipop	ghiaccioli	isglass	Eis Lutscher	sladoledna palčka
lin better_0520_AP = mkiAP "better" ; --	AP	0520	i'd like a better one	ne vorrei uno migliore	jag vill ha en bättre	ich möchte eine bessere	rad bi boljše
lin det_ap_one_0520_NP det ap = mkNP det (mkCN ap (mkN "one")) ; --- should be in RGL --	Det -> AP -> NP	0520	i'd like a better one	ne vorrei uno migliore	jag vill ha en bättre	ich möchte eine bessere	rad bi boljše
-- DERIVED 0520 Cl i'd like a better one ne vorrei uno migliore jag vill ha en bättre ich möchte eine bessere rad bi boljše
-- DERIVED 0522 Cl i don't know non lo so jag vet inte ich weiss nicht ne vem 
-- DERIVED 0523 Cl i don't understand non capisco jag förstår inte ich verstehe nicht ne razumem 
-- DERIVED 0524 Cl i don't want non voglio jag vill inte ich möchte nicht si ne želim 
-- DERIVED 0525 Cl I feel good sto bene jag mår bra ich fühle mich gut dobro se počutim 
-- DERIVED 0526 Subj if se om ob* če 
-- DERIVED 0527 Cl i hate that show odio quel programma jag avskyr det programmet ich hasse das show sovražim to oddajo 
lin show_0527_CN = mkiCN "show" ; --	CN	0527	i hate that show	odio quel programma	jag avskyr det programmet	ich hasse das show	sovražim to oddajo
-- DERIVED 0528 Cl I have need of the receipt ho bisogno della ricevuta jag behöver kvitto ich benötige den Empfang rabim potrdilo
lin something_to_v_0529_NP v2 = mkNP S.something_NP <lin Adv (mkUtt (mkVP <lin V v2 : S.V>)) : S.Adv> ; --- should be in RGL --	V2 -> NP	0529	I have something to say	ho qualcosa da dire	jag har något att säga	ich habe etwas zu sagen	imam nekaj za povedati
-- DERIVED 0529 Cl I have something to say ho qualcosa da dire jag har något att säga ich habe etwas zu sagen imam nekaj za povedati
lin have_0530_VV = mkVV I.have_V ; --	VV	0530	I have to change my money	devo cambiare	jag måste växla pengar	ich muss mein Geld wechseln	moram zamenjati denar (valuto)
-- DERIVED 0530 Cl I have to change my money devo cambiare jag måste växla pengar ich muss mein Geld wechseln moram zamenjati denar (valuto) 
-- DERIVED 0531 Pron I io jag ich Jaz 
-- DERIVED 0532 Cl i like this mi piace quello jag tycker om det ich mag das to mi je všeč 
lin like_0532_Cl nph np = mkCl nph (mkV2 "like") np ; --	NPH -> NP -> Cl	0532	i like this	mi piace quello	jag tycker om det	ich mag das	to mi je všeč
-- DERIVED 0533 Cl I'll spell it dire lettera per lettera bokstavera ich werde es buchstabieren črkoval bom 
-- DERIVED 0534 Cl I'll spell it indico lettera per lettera jag bokstaverar det ich werde es buchstabieren prebral bom črko za črko 
-- DERIVED 0535 Cl i'll spell it pronuncio lettera per lettera jag uttalar det bokstav för bokstav ich werde es buchstabieren napisal bom črko za črko 
-- DERIVED 0536 Cl i love that show mi piace quel programma jag tycker om det programmet ich liebe diese Show obožujem to oddajo 
-- DERIVED 0537 Cl I love you ti amo jag älskar dig ich liebe dich ljubim te 
-- DERIVED 0538 Cl I made a mistake ho fatto un errore jag har gjort fel ich machte einen Fehler naredil sem napako 
-- DERIVED 0539 Cl i'm having fun mi sto divertendo jag har roligt ich habe ein Spas se zabavam 
-- DERIVED 0540 Cl i'm lost mi sono perso jag fattar inte ich bin verloren sem izgubljen 
lin immediately_0541_AdvT = mkiAdvT "immediately" ; --	AdvT	0541	immediately	immediatamente	genast	sofort	takoj
-- DERIVED 0542 Cl i'm not fine non sentirsi bene känna sig dålig mir get es nicht gut nisem v redu 
-- DERIVED 0543 Cl i'm not ready non sono pronto jag är inte färdig ich bin nicht bereit nisem pripravljen 
lin important_0544_AP = mkiAP "important" ; --	AP	0544	important	importante	viktig	wichtig	pomemben
lin ready_to_v_0545_AP vp = mkAP (mkAP (mkA "ready")) (mkSC vp) ; --	VP -> AP	0545	I'm ready to work	sono pronto per lavorare	jag är beredd att börja arbeta	ich bin bereit zu arbeiten	sem pripravljen za delo
lin work_0545_V = mkV "work" ; --	V	0545	I'm ready to work	sono pronto per lavorare	jag är beredd att börja arbeta	ich bin bereit zu arbeiten	sem pripravljen za delo
-- DERIVED 0545 Cl I'm ready to work sono pronto per lavorare jag är beredd att börja arbeta ich bin bereit zu arbeiten sem pripravljen za delo 
lin in_bottom_0546_AdvP = mkiAdvP "in bottom" ; --	AdvP	0546	in bottom	in fondo	längst ner	in Boden	na dnu
lin included_0547_AP = mkiAP "included" ; --	AP	0547	included	incluso	inkluderad	inbegriffen	vključeno
-- DERIVED 0548 Cl I need help ho bisogno d'aiuto jag behöver hjälp ich brauche Hilfe rabim pomoč 
lin in_flower_0549_AdvP = mkiAdvP "in flower" ; --	AdvP	0549	in flower	fiorito	blommig	in Blüte	se je razcvetel, že cveti
lin information_office_0550_CNP = mkiCNP "information office" "at" ; --	CNP	0550	information office	ufficio informazioni	informationsdisk	informationsbüro	informacijska pisarna
lin instant_coffee_0551_CNM = mkiCNM "instant coffee" ; --	CNM	0551	instant coffee	caffè solubile	snabbkaffe	der Pulverkaffee	instant kava
lin instant_tea_0552_CNM = mkiCNM "instant tea" ; --	CNM	0552	instant tea	tè solubile	téblad*	instant ee*	inastant čaj
lin interest_0553_V2 = mkiV2 "interest" ; --	V2	0553	interest	interessare	intressera	das Interesse*	zanimanje
lin international_0554_AP = mkiAP "international" ; --	AP	0554	international	internazionale	internationell	international	mednaroden
lin point_0555_V2 = mkV2 (mkV "point") to_Prep ; --	V2	0555	I point to symbols to communicate	indico i simboli	jag pekar på symboler	ich zeige auf Symbole zu kommunizieren	komuniciram preko simbolov
lin cl_to_vp_0555_Cl np vp tovp = mkCl np (mkVP vp <lin Adv (mkSC tovp) : S.Adv>) ; --- should be in RGL --	NP -> VP -> VP -> Cl	0555	I point to symbols to communicate	indico i simboli	jag pekar på symboler	ich zeige auf Symbole zu kommunizieren	komuniciram preko simbolov
-- DERIVED 0555 Cl I point to symbols to communicate indico i simboli jag pekar på symboler ich zeige auf Symbole zu kommunizieren komuniciram preko simbolov 
lin iron_0556_CN = mkiCN "iron" ; --	CN	0556	iron	ferro da stiro	strykjärn	das Eisen	likati
lin ironing_board_0557_CN = mkiCN "ironing board" ; --	CN	0557	ironing board	asse stiro	strykbräda	Bügelbrett	likalna deska
lin see_0558_VS = mkVS I.see_V ; --	VS	0558	I see you are busy	vedo che sei occupato	jag ser att du är upptagen	ich sehe dass Sie beschäftigt sind	vidim, da si zaseden(a)
lin busy_0558_AP = mkiAP "busy" ; --- you are busy --	AP	0558	I see you are busy	vedo che sei occupato	jag ser att du är upptagen	ich sehe dass Sie beschäftigt sind	vidim, da si zaseden(a)
-- DERIVED 0558 Cl I see that you are busy vedo che sei occupato jag ser att du är upptagen ich sehe dass Sie beschäftigt sind vidim, da si zaseden(a) 
-- DERIVED 0559 Copula is essere är ist je 
-- DERIVED 0560 Cl is not in the lexicon non è in questo lessico finns inte i lexikonet ist nicht im Lexikon ni ga v leksikonu 
-- DERIVED 0561 Copula is not non è är inte ist nicht ni 
-- DERIVED 0562 VP is not on this page non è in questa pagina finns inte på denna sida ist nicht auf dieser Seite ni na tej strani 
lin it_is_about_time_0563_Cl = mkCl (mkVP (S.mkAdv (mkPrep "about") (mkNP (mkN "time")))) ; --	Cl	0563	it's about time	È quasi ora	det var på tiden	wurde auch Zeit	je že čas…
-- DERIVED 0564 Cl it's not this non è är inte es ist nicht diese to ni to
lin it_is_time_to_vp_0565_Cl vp = mkCl (mkVP (mkNP (mkCN (mkCN (mkN "time")) vp))) ; --	VP -> Cl	0565	it's time	È ora	det är dags	es wird Zeit	čas je
-- DERIVED 0565 Cl it's time È ora det är dags es wird Zeit čas je 
-- DERIVED 0566 Cl I want a different size voglio una taglia differente jag vill ha en annan storlek Ich will verschiedene Größe želim drugo velikost 
-- DERIVED 0567 ClSlash I want io voglio jag vill inte Ich will hočem, želim
lin det_one_0568_NP det = mkNP det (mkN "one") ; --- should be in RGL --	Det -> NP	0568	I want that one	voglio quello	jag vill ha den där	ich möchte diese/diesen/dieses	želim tisto
-- DERIVED 0568 Cl I want that one voglio quello jag vill ha den där ich möchte diese/diesen/dieses želim tisto 
-- DERIVED 0569 Cl I want to beg you pardon voglio chiedere scusa jag vill be om ursäkt ich möchte etwas anderes sagen hočem reči nekaj drugega 
-- DERIVED 0570 Cl I want to show you something voglio mostrarti qualcosa jag vill visa dig någonting Ich will dir etwas zeigen hočem ti nekaj pokazati 
-- DERIVED 0571 Cl I want to talk with you voglio parlare con te jag vill prata med dig ich will mit dir reden hočem govoriti z vami 
lin i_won_0572_Utt nph = mkUtt (mkS pastTense (mkCl nph I.win_V)) ; --	NPH -> Utt	0572	I won	ho vinto	jag vann	Ich habe gewonnen	znagal sem
lin jacket_0573_CN = mkiCN "jacket" ; --	CN	0573	jacket	giacca	kavaj	die Jacke	jopič
-- DUPLICATE lin jacket_0574_CN = mkiCN "jacket" ; 
-- DERIVED 0575 Month January Gennaio januari der Januar januar 
lin juice_0576_CNM = mkiCNM "juice" ; --	CNM	0576	juice	spremuta	juice	der Saft	sok
-- DERIVED 0577 Month July Luglio juli der Juli julij 
-- DERIVED 0578 Month June Giugno juni der Juni junij 
lin keyboard_0579_CN = mkiCN "keyboard" ; --	CN	0579	keyboard	tastiera	tangentbord	die Tastatur	tipkovnica
lin key_0580_CN = mkiCN "key" ; --	CN	0580	key	chiave	nyckel	der Schlüssel	ključ
lin kilometer_0581_CN = mkiCN "kilometer" ; --	CN	0581	kilometer	chilometro	kilometer	die Kilometer	kilometer
lin kitchen_0582_CNP = mkiCNP "kitchen" ; --	CNP	0582	kitchen	cucina	kök	die Küche	kuhinja
lin kitchen_robot_0583_CN = mkiCN "kitchen robot" ; --	CN	0583	kitchen robot	robot da cucina	matberedare	Küchenmaschine 	kuhinjski   robot
lin knife_0584_CN = mkiCN "knife" ; --	CN	0584	knife	coltello	kniv	das Messer	nož
lin knock_down_0585_V2 = mkV2 (partV (mkV "knock") "down") ; --	V2	0585	knock down	buttarlo giù	knuffa ner	niederschlagen	podreti
lin know_0586_V = I.know_V ; --	V	0586	know	sapere	veta	wissen	vedeti
lin know_0586_VS = mkVS I.know_V ; --	VS	0586	know	sapere	veta	wissen	vedeti
lin labour_day_0587_NP = mkiNP "labour day" ; --	NP	0587	labour day	festa dei lavoratori	Första maj	Tag der Arbeit	Praznik dela
lin lake_0588_CNP = mkiCNP "lake" ; --	CNP	0588	lake	lago	sjö	der See	jezero
lin lamp_0589_CN = mkiCN "lamp" ; --	CN	0589	lamp	lampada	lampa	die Lampe	svetilka
lin land_0590_V = mkiV "land" ; --	V	0590	land	atterrare	landa	das Land*	zemljišče,  dežela
lin last_month_0591_AdvT = mkiAdvT "last month" ; --	AdvT	0591	last month	mese scorso	förra månaden	im vergangenen Monat	prejšnji mesec
lin last_0592_AP = mkiAP "last" ; --	AP	0592	last	ultimo	sist	letzte	zadnji
lin laundry_basket_0593_CN = mkiCN "laundry basket" ; --	CN	0593	laundry basket	cesta biancheria	tvättkorg	Wäschekorb	košara za perilo
lin laundry_0594_CNM = mkiCNM "laundry" ; --	CNM	0594	laundry	bucato	tvätt	Wäsche	perilo
lin laundry_0595_CN = mkiCN "laundry" ; --	CN	0595	laundry	lavanderia	tvättstuga	die Wäscherei	pralnica
lin laundry_soap_0596_CNM = mkiCNM "laundry soap" ; --	CNM	0596	laundry soap	sapone da bucato	tvättmedel	Waschseife	trdo milo (za perilo)
lin lawyer_0597_CNH = mkiCNH "lawyer" ; --	CNH	0597	lawyer	avvocato	advokat	der Rechtsanwalt	odvetnik
lin lay_away_0598_V2 = mkV2 (partV I.lay_V "away") ; --	V2	0598	lay away	mettere via	ställa undan	weglegen	pospravi
-- DERIVED 0599 VP lay away the clothes mettere via i vestiti lägga in kläder die Kleider weglegen pospravi obleke 
lin learn_0600_V = I.learn_V ; --	V	0600	learn	imparare	lära sig	lernen	učiti se
lin learn_0600_V2 = mkV2 I.learn_V ; --	V2	0600	learn	imparare	lära sig	lernen	učiti se
lin leave_alone_0601_VP np = mkVP (mkVP (mkV2 I.leave_V) np) (P.mkAdv "alone") ; --	NP -> VP	0601	leave me alone	lasciami in pace	lämna mig ensam	lass mich in Ruhe	pusti me pri miru
lin left_0603_AP = mkiAP "left" ; --	AP	0603	left	sinistra	vänster	links	levo
lin leg_0604_CN = mkiCN "leg" ; --	CN	0604	leg	gamba	ben	das Bein	noga
lin less_0605_Det = mkiDet "less" ; --	Det	0605	less	meno di	mindre än	Weniger	manj
lin less_0605_DetM = mkiSgDet "less" ; --	DetM	0605	less	meno di	mindre än	Weniger	manj
-- DERIVED 0606 Utt let's go to another store andiamo in un altro negozio vi går till en annan affär Lassen Sie uns zu einem anderen Laden gehen gremo v drugo trgovino 
-- DERIVED 0607 Utt let's talk later parliamo più tardi vi pratas vid senare Lass uns später reden pogovoriva se kasneje 
lin letter_carrier_0608_CNH = mkiCNH "letter carrier" ; --	CNH	0608	letter carrier	postino	brevbärare	der Briefträger	poštar
lin letter_0609_CN = mkiCN "letter" ; --- brev --	CN	0609	letter	lettera	brev	der Brief	pismo
lin letter_0610_CN = mkiCN "letter" ; --- bokstav --	CN	0610	number	numero	siffra	Zahl	številke
lin number_0610_CN = mkiCN "number" ; --	CN	0610	number	numero	siffra	Zahl	številke
lin lettuce_0611_CNM = mkiCNM "lettuce" ; --	CNM	0611	lettuce	lattuga	grönsallad	der Salat	zelena solata
lin library_0612_CNP = mkiCNP "library" ; --	CNP	0612	library	biblioteca	bibliotek	die Bibliothek	knjižnica
lin library_card_0613_CN = mkiCN "library card" ; --	CN	0613	library card	tessera della biblioteca	lånekort	der Bibliotheksausweis	knjižnična izkaznica
lin lie_down_0614_V = partV I.lie_V "down" ; --	V	0614	lie down	stare supini	ligga ner	hinlegen	lezi
lin life_jacket_0615_CN = mkiCN "life jacket" ; --	CN	0615	life jacket	giubbotto salvataggio	livväst	die Rettungsweste	rešilni jopič
lin life_support_system_0616_CN = mkiCN "life support system" ; --	CN	0616	life support system	respiratore	respirator	Lebenserhaltungssystem 	sistem oživljanja
lin light_0617_V2 = mkiV2 "light" ; --	V2	0617	light	accendere	tända	das Licht*	svetloba
lin light_0618_CN = mkiCN "light" ; --- lampadina --	CN	0618	light	lampadina	lampa	hell*	lahek
lin light_0619_AP = mkiAP "light" ; --- leggero --	AP	0619	light	leggero	lätt	leicht	svetel
lin light_0620_CN = mkiCN "light" ; --- luce --	CN	0620	light	luce	glödlampa	luftig*	luč
lin lightning_0621_CN = mkiCN "lightning" ; --	CN	0621	lightning	fulmine	blixt	der Blitz	strela
lin line_0622_CNP = mkiCNP "line" "on" ; --	CNP	0622	line	fila	kö 	die Linie	vrstica
lin catalogue_0623_CN = mkiCN "catalogue" ; --- elenco --	CN	0623	list	elenco	lista	auflisten*	seznam
lin listen_0624_V = mkiV "listen" ; --	V	0624	listen	ascoltare	lyssna	zuhören	poslušati
lin listen_0624_V2 = mkV2 (mkV "listen") to_Prep ; --	V2	0624	listen	ascoltare	lyssna	zuhören	poslušati
-- DERIVED 0625 Cl listen ti ascolto jag lyssnar på dig anhören čuti 
-- DERIVED 0626 VP listen to music ascoltare la musica lyssna på musik Musik hören poslušati glasbo 
lin list_0627_CN = mkiCN "list" ; --- lista --	CN	0627	list	lista	lista	aufzählen*	popis
lin literature_0628_CNM = mkiCNM "literature" ; --	CNM	0628	literature	letteratura	litteratur	die Literatur	literatura
lin be_alive_0629_VP = mkVP (P.mkAdv "alive") ; --	VP	0629	be alive	essere vivo	leva	die Leben*	življenja
lin living_room_0630_CNP = mkiCNP "living room" ; --	CNP	0630	living room	soggiorno	vardagsrum	das Wohnzimmer	dnevna soba
lin local_0631_AP = mkiAP "local" ; --	AP	0631	local	locale	lokal	lokal	lokalen, tukajšnji
lin locker_room_0632_CNP = mkiCNP "locker room" ; --	CNP	0632	locker room	spogliatoio	omklädningsrum	die Umkleideraum	slačilnica
lin long_0633_AP = mkiAP "long" ; --	AP	0633	long	lungo	lång	lang	dolg
lin long_sleeve_0634_NP = mkiNP "long sleeve" ; --	NP	0634	long sleeve	maniche lunghe	långa ärmar	langärmlig	dolgi rokav
lin look_out_the_window_0635_VP = mkVP (mkVP (mkV "look")) (S.mkAdv (mkPrep "out") (mkNP the_Det (mkN "window"))) ; --	VP	0635	look out the window	guardare fuori dalla finestra	titta ut genom fönstret	schaue aus dem Fenster	poglej skozi okno
lin loud_0636_AP = mkiAP "loud" ; --	AP	0636	loud	rumoroso	högljudd	laut	glasen
lin low_0637_AP = mkiAP "low" ; --	AP	0637	low	basso	låg	niedrig	nizek
lin low_blood_pressure_0638_NP = mkiNP "low blood pressure" ; --	NP	0638	low blood pressure	pressione bassa	lågt blodtryck	niedriger Blutdruck	nizek krvni pritisk
lin love_0639_V2 = mkiV2 "love" ; --	V2	0639	love	amare	älska	die Liebe*	ljubezen
lin lower_head_0640_VP = mkVP (mkV2 "lower") (mkNP (mkN "head")) ; --	VP	0640	lower head	abbassare la testa	sänk huvudet	Unterkopf* 	spustiti glavo
lin love_story_0641_CN = mkiCN "love story" ; --	CN	0641	love story	storia romantica	romantisk historia	Liebesgeschichte	ljubezenska zgodba
-- DUPLICATEMAYBE lin love_0642_V2 = mkiV2 "love" ; -- V2
lin lucky_0643_AP = mkiAP "lucky" ; --	AP	0643	lucky	fortunato	lycklig	glücklich	srečen
lin luggage_0644_CNM = mkiCN "luggage" ; --	CNM	0644	luggage	bagagli	bagage	das Gepäck	prtljaga
lin lunch_bag_0645_CN = mkiCN "lunch bag" ; --	CN	0645	lunch bag	sacchetto della merenda	matsäck	Lunchpaket 	torbica za prigrizke
lin lunch_meat_0646_CNM = mkiCNM "lunch meat" ; --	CNM	0646	lunch meat	carne sottovuoto	kallskuret	Mittagessen Fleisch	prekajeno meso
lin lunch_0647_CN = mkiCN "lunch" ; --	CN	0647	lunch	pranzo	lunch	das Mittagsessen	kosilo
lin lunch_time_0648_CN = mkiCN "lunch time" ; --	CN	0648	lunch time	ora di pranzo	lunchrast	Mittagessenszeit	čas kosila
lin madam_0649_CNH = mkiCNH "madam" ; --	CNH	0649	madam	signora	fru	die Dame	gospa
lin magazine_0650_CN = mkiCN "magazine" ; --	CN	0650	magazine	rivista	veckotidning	die Zeitschrift	revija
lin magnificent_0651_AP = mkiAP "magnificent" ; --	AP	0651	magnificent	magnifico	magnifik	ausgezeichnet	veličasten
lin magnifying_glass_0652_CN = mkiCN "magnifying glass" ; --	CN	0652	magnifying glass	lente d'ingrandimento	förstoringsglas	die Lupe	povečevalno steklo
lin mail_box_0653_CN = mkiCN "mail box" ; --	CN	0653	mail box	cassetta postale	brevlåda	der Briefkasten	nabiralnik
lin maize_bread_0654_CNM = mkiCNM "maize bread" ; --	CNM	0654	maize bread	pane di mais	majsbröd	Maisbrot	koruzni kruh
lin make_bed_0655_VP = mkVP (mkV2 I.make_V) (mkNP the_Det (mkN "bed")) ; --	VP	0655	make bed	fare il letto	bädda sängen	Bett machen	pospraviti posteljo
-- DERIVED 0656 VP make biscuits fare i biscotti con le formine baka kakor Kekse machen napraviti kekse 
lin make_0657_V2 = mkV2 I.make_V ; --	V2	0657	make	fare	tillverka	machen	napraviti
lin make_peace_0658_VP = mkVP (mkV2 I.make_V) (mkNP (mkN "peace")) ; --	VP	0658	make peace	fare la pace	sluta fred	Frieden schliessen	pobotati se
lin male_friend_0659_CNH = mkiCNH "male friend" | mkiCNH "friend" ; --	CNH	0659	male friend	amico	vän	männlicher Freund	spoprijateljiti se
lin male_0660_AP = mkiAP "male" ; --	AP	0660	male	maschio	manlig	männlich	moški
lin man_0661_CNH = mkCN (mkN "man" "men") ; --	CNH	0661	man	uomo	man 	der Mann	človek, moški
lin many_0662_Det = mkiDet "many" | mkiDet "lots of" ; --	Det	0662	many	molti	många	viele	veliko
lin city_map_0663_CN = mkiCN "city map" ; --- cartina --	CN	0663	map	cartina	karta	die Karte	zemljevid
lin map_0664_CN = mkiCN "map" ; --- mappa --	CN	0664	map	mappa	karta	die Landkarte	načrt
lin world_map_0665_CN = mkiCN "world map" ; --	CN	0665	world map	mappamondo	världskarta	die Weltkarte	zemljevid sveta
lin marching_band_0666_CN = mkiCN "marching band" ; --	CN	0666	marching band	parata musicale	musikkår	der Spielmannszug	paradni orkester
-- DERIVED 0667 Month March Marzo mars der März marec 
lin mathematics_0668_NP = mkiNP "mathematics" ; --	NP	0668	mathematics	matematico	matematik	Mathematik	matematika
-- DERIVED 0669 Month May Maggio maj der Mai maj 
lin meaning_0670_CN = mkiCN "meaning" ; --	CN	0670	meaning	significa	betydelse	die Bedeutung	pomen
lin measure_0671_CN = mkiCN "measure" ; --	CN	0671	measure	misura	mått	messen	meriti
lin measuring_cup_0672_CN = mkiCN "measuring cup" ; --	CN	0672	measuring cup	misurino graduato	litermått	Messbecher	merilna skodelica
-- DUPLICATEMAYBE lin beef_0673_CNM = mkiCNM "beef" ; -- CNM
lin meat_0674_CNM = mkiCNM "meat" ; --	CNM	0674	meat	carne	kött	das Fleisch	hrana 
lin medium_0675_AP = mkiAP "medium" ; --	AP	0675	medium	comparativi?	jämförande*	das Mittel*	srednji
lin meeting_0676_CNP = mkiCNP "meeting" ; --	CNP	0676	meeting	riunione	möte	die Besprechung	srečanje
lin memory_0677_CN = mkiCN "memory" ; --	CN	0677	memory	ricordo	minne	die Erinnerung	spomin
lin menu_0678_CN = mkiCN "menu" ; --	CN	0678	menu	menu	meny	Menü	meni
lin men_wc_0679_CNP = mkiCNP "gents" ; --	CNP	0679	men wc	wc uomini	herrtoalett	Herren WC	moški wc
lin metre_0680_CN = mkiCN "metre" ; --	CN	0680	metre	metri	meter	die Meter	merilec
lin microwave_oven_0681_CN = mkiCN "microwave oven" ; --	CN	0681	microwave oven	forno a microonde	mikrovågsugn	Mikrowelle	mikrovalovna pečica
lin midnight_0682_CNT = mkiCNT "midnight" ; --	CNT	0682	midnight	mezzanotte	midnatt	Mitternacht	polnoč
lin milk_0683_CNM = mkiCNM "milk" ; --	CNM	0683	milk	latte	mjölk	die Milch	mleko
lin mirror_0684_CN = mkiCN "mirror" ; --	CN	0684	mirror	specchio	spegel	der Spiegel	ogledalo
lin miss_0685_V2 = mkiV2 "miss" ; --	V2	0685	miss	mancare	sakna	vermissen	zamuditi
-- DERIVED 0686 VP miss the coach perdere il bus missa bussen verpassen den Trainer zamuditi avtobus 
-- DUPLICATEMAYBE lin miss_0686_V2 = mkiV2 "miss" ; -- V2
lin make_a_mistake_0687_VP = mkVP (mkV2 I.make_V) (mkNP a_Det mistake_0687_CN) ; --	VP	0687	mistake	sbaglio	misstag	der Fehler	napaka
lin mistake_0687_CN = mkiCN "mistake" ; --	CN	0687	mistake	sbaglio	misstag	der Fehler	napaka
lin mobile_telephone_0688_CN = mkiCN "mobile telephone" | mkiCN "mobile phone" | mkiCN "cell phone" ; --	CN	0688	mobile telephone	telefonino	mobiltelefon	das Handy	mobilni telefon
lin moment_0689_CN = mkiCN "moment" ; --	CN	0689	moment	momento	ögonblick	der Moment	trenutek
-- DERIVED 0690 Weekday Monday lunedì måndag der Montag ponedeljek 
lin money_0691_CNM = mkiCNM "money" ; --	CNM	0691	money	denaro	pengar	das Geld	denar
-- DUPLICATE lin money_0692_CNM = mkiCNM "money" ; 
-- DUPLICATE lin money_0693_CNM = mkiCNM "money" ; 
lin monitor_0694_CN = mkiCN "monitor" ; --	CN	0694	monitor	monitor	monitor	der Monitor	monitor
lin month_0695_CN = mkiCN "month" ; --	CN	0695	month	mese	månad	der Monat	mesec
lin monument_0696_CN = mkiCN "monument" ; --	CN	0696	monument	monumento	monument	das Monument	spomenik
lin more_0697_Adv = mkiAdv "more" ; --	Adv	0697	more	ancora	mer	mehr	več
lin more_0698_Det = mkiDet "more" ; --	Det	0698	more	più di	mer	weitere	bolj
lin more_0698_DetM = mkiSgDet "more" ; --	DetM	0698	more	più di	mer	weitere	bolj
lin morning_0699_CNT = mkiCNT "morning" ; --	CNT	0699	morning	mattina	morgon/förmiddag	der Morgen	jutro
lin mother_0700_CNH = mkiCNH "mother" ; --	CNH	0700	mother	madre	mor	die Mother	mati
lin mother's_day_0701_CNT = mkiCNT "mother's day" ; --	CNT	0701	mother's day	festa della mamma	mors dag	Muttertag	Materinski dan
lin mousse_chocolate_0702_CNM = mkiCNM "chocolate mousse" ; --	CNM	0702	mousse chocolate	mousse al cioccolato	chokladmousse	Mousse Schokolade	čokoladni mousse
lin mouth_0703_CN = mkiCN "mouth" ; --	CN	0703	mouth	bocca	mun	der Mund	usta
lin lip_0704_CN = mkiCN "lip" ; --	CN	0704	lip	labbra	läppar	das Maul	gobec
lin movie_0705_CN = mkiCN "movie" ; --	CN	0705	movie	film	film 	der Film	film
lin movies_0706_CNP = mkiCNP "movies" | mkiCNP "cinema" "at" ; --	CNP	0706	movies	cinema	bio	das Kino	kino
lin movie_star_0707_CNH = mkiCNH "movie star" ; --	CNH	0707	movie star	stella del cinema	filmstjärna	Filmstar	filmska zvezda
lin mow_lawn_0708_VP = mkVP (mkV2 "mow") (mkNP the_Det (mkN "lawn")) ; --	VP	0708	mow the meadow	tagliare l'erba	klippa gräset	mähen die Wiese	pokositi travnik
lin much_0709_Adv = mkiAdv "much" ; --	Adv	0709	much	tanto	mycket	viel	veliko
lin muscle_0710_CN = mkiCN "muscle" ; --	CN	0710	muscle	muscolo	muskel	der Muskel	mišica
lin museum_0711_CNP = mkiCNP "museum" ; --	CNP	0711	museum	museo	museum	Museum	muzej
lin music_band_0712_CNH = mkiCNH "music band" ; --	CNH	0712	music band	banda musicale	orkester	Musik Band	glasbena skupina
lin music_0713_CNM = mkiCNM "music" ; --	CNM	0713	music	musica	musik	die Musik	glasba
-- DERIVED 0715 Quant my mio min mein,meine moj 
lin legs_shaking_0714_Cl pron = mkCl (mkNP (S.mkQuant pron) pluralNum (mkN "leg")) (progressiveVP (mkVP I.shake_V)) ; --	Pron -> Cl	0714	my legs are shaking	mi tremano le gambe	mina ben skakar	meine Beine zittern	moji nogi se treseta
lin my_turn_0716_Utt pron = mkUtt (mkNP (S.mkQuant pron) (mkN "turn")) ; --	Pron -> Utt	0716	my turn	tocca a me	min tur	ich bin dran	jaz sem na vrsti
lin nail_file_0717_CN = mkiCN "nail file" ; --	CN	0717	nail file	lima per unghie	nagelfil	Nagelfeile 	pilica za nohte
lin name_0718_CN = mkiCN "name" ; --	CN	0718	name	nome	namn	der Name	ime
-- DUPLICATE lin name_0719_CN = mkiCN "name" ; 
lin nappie_0720_CN = mkiCN "nappie" | mkiCN "diaper" ; --	CN	0720	napkin	pannolino	blöja	die Serviette	prtiček
lin napkin_0721_CN = mkiCN "napkin" ; --	CN	0721	napkin	tovagliolo	servett	die Serviette	prtič
lin National_day_0722_CNT = mkiCNT "National day" ; --	CNT	0722	National day	festa nazionale	nationaldag	Nationaltag	Dan državnosti
lin nausea_0723_CNM = mkiCNM "nausea" ; --	CNM	0723	nausea	nausea	illamående	die Übelkeit	slabost
lin necessary_0724_AP = mkiAP "necessary" ; --	AP	0724	necessary	necessario	nödvändig	notwendig	nujen, neizogiben, potreben
lin neck_0725_CN = mkiCN "neck" ; --	CN	0725	neck	collo	nacke/hals	der Hals	vrat
lin necklace_0726_CN = mkiCN "necklace" ; --	CN	0726	necklace	collana	halsband	die Halskette	ogrlica
lin need_0727_V2 = mkiV2 "need" ; --	V2	0727	need	aver bisogno	behöver	brauchen	potreba
lin need_0727_VV = mkiVV "need" ; --	VV	0727	need	aver bisogno	behöver	brauchen	potreba
-- DERIVED 0728 VP need aver bisogno del pettine behöver kamma sig benötigen potrebovati 
lin be_afraid_of_0729_VP nph = mkVP (mkVP (P.mkAdv "afraid")) (S.mkAdv possess_Prep nph) ; --	NP -> VP	0729	be afraid	avere paura	behöver gå på toa*	das Erfordernis*	nuja
lin be_afraid_0729_VP = mkVP (P.mkAdv "afraid") ; --	NP -> VP	0729	be afraid	avere paura	behöver gå på toa*	das Erfordernis*	nuja
lin neighbor_0730_CNH = mkiCNH "neighbour" | mkiCNH "neighbor" ; --	CNH	0730	neighbor	vicino di casa	granne	die Nachbar	sosedje
lin new_age_music_0731_CNM = mkiCNM "new age music" ; --	CNM	0731	new age music	musica new age	new agemusik	New-Age-Musik	glasba novega časa
lin new_clothes_0732_NP = mkiNP "new clothes" ; --	NP	0732	new clothes	vestiti nuovi	nya kläder	neue Kleidung	nova oblačila
lin never_0733_AdV = mkiAdV "never" ; --	AdV	0733	never	mai	aldrig	nie	nikoli
lin new_0734_AP = mkiAP "new" ; --	AP	0734	new	nuovo	ny	neu	nov
lin new_word_0735_CN = mkCN (mkA "new") (mkN "word") ; --	CN	0735	new word	parola nuova	nytt ord	ein neues Wort	nova beseda
lin next_month_0736_AdvT = P.mkAdv "next month" ; --	AdvT	0736	next month	mese prossimo	nästa månad	nächsten Monat	naslednji mesec
lin next_to_0737_PrepP = mkiPrepP "next to" ; --	PrepP	0737	next to	accanto a	nära	neben an	poleg
lin nice_0738_AP = mkiAP "nice" ; --	AP	0738	nice	carino	söt	nett	lepo
lin nice_music_0739_CN = mkCN (mkA "nice") (mkN "music") ; --	CN	0739	nice music	musica orecchiabile	njutbar musik	gute Musik	prijetna glasba
-- DUPLICATEMAYBE lin nice_0740_AP = mkiAP "nice" ; -- AP
lin night_0741_CNT = mkiCNT "night" ; --	CNT	0741	night	notte	natt	die Nacht	noč
-- DERIVED 0742 Numeral nine nove nio neun devet 
lin no_alcohol_0743_Utt = mkiUtt ( "no alcohol") ; --	Utt	0743	no alcoholic	no alcoolici	alkoholfritt	kein Alkohol*	brezalkoholen
lin no_drugs_0744_Utt = mkiUtt ( "no drugs") ; --	Utt	0744	no drugs	no droghe	drogfritt	keine Drogen	prepovedane droge, brez drog
lin no_0745_Interj = mkiInterj "no" ; --	Interj	0745	no	no	nej	nein	ne
lin noon_0746_CNT = mkiCNT "noon" ; --	CNT	0746	noon	mezzogiorno	middagstid	der Mittag	opoldne
lin nose_0747_CN = mkiCN "nose" ; --	CN	0747	nose	naso	näsa	die Nase	nos
lin no_smoking_0748_Utt = mkiUtt ( "no smoking") ; --	Utt	0748	no smoke	vietato fumare	rökffritt	kein Rauch	prepovedano kajenje
lin notebook_0749_CN = mkiCN "notebook" ; --	CN	0749	notebook	computer portatile	lap top	Notizbuch	beležnica
lin notebook_0750_CN = mkiCN "notebook" ; -- CN
-- DERIVED nothing_0751_NP = S.nothing_NP ; --mkiNP "nothing" ; 
lin ready_0752_AP = mkiAP "ready" ; --	AP	0752	not ready	non pronto	inte färdig	nicht bereit	nepripravljen
lin bolt_0753_CN = mkiCN "bolt" ; --	CN	0753	bolt	bullone	mutter	praxisbezogen	vijaki
lin nut_0753_CN = mkiCN "nut" ; --	CN	0753	bolt	bullone	mutter	praxisbezogen	vijaki
lin ocean_0754_CNP = mkiCNP "ocean" ; --	CNP	0754	ocean	oceano	ocean	der Ozean	ocean
lin office_0755_CNP = mkiCNP "office" ; --	CNP	0755	office	ufficio	kontor	das Büro	urad
lin oh_no_0756_Interj = mkiInterj "oh no" ; --	Interj	0756	oh no	oh no	åh nej	ach nein	o ne
lin old_0757_AP = mkiAP "old" ; --	AP	0757	old	vecchio	gammal	alt	star
lin on_0758_AdvP = mkiAdvP "on" ; --	AdvP	0758	on	acceso	på (om ljus)	auf	na
lin one_way_0759_CN = mkiCN "one way" ; --	CN	0759	one way	senso unico	enkelriktat	Einweg	enosmeren
lin open_folder_0760_VP det = mkVP open_0761_V2 (mkNP det (mkN "folder")) ; --	Det -> VP	0760	open a folder	aprire una cartella	öppna en mapp	einen Ordner öffnen	odprite mapo
lin open_0761_V2 = mkV2 (mkV "open" "opened" "opened") ; --	V2	0761	open	aprire	öppna	öffnen	odprt
-- DERIVED 0762 VP open levare il coperchio ta av locket offen odpreti 
lin open_lid_0762_VP det = mkVP open_0761_V2 (mkNP det (mkN "lid")) ; --	Det -> VP	0762	open	levare il coperchio	ta av locket	offen	odpreti
-- DERIVED 0763 VP open small tin aprire le scatole öppna en burk kleine Dose öffen odpri škatlico 
-- DERIVED 0764 VP open the door aprire la porta öppna dörren die Tür öffnen odpri vrata 
-- DERIVED 0765 VP open the window aprire la finestra öppna fönstret das Fenster öffnen odpri okno 
lin orange_0766_CN = mkiCN "orange" ; --	CN	0766	orange	arancia	apelsin	das Orange	pomaranča
lin orange_juice_0767_CNM = mkiCNM "orange juice" ; --	CNM	0767	orange juice	succo d'arancia	apelsinjuice	der Orangensaft	pomarančni sok
lin mandarine_0768_CN = mkiCN "mandarine" ; --	CN	0768	mandarine	mandarino	mandarin/clementin	die Orange	oranžen
lin organised_0769_AP = mkiAP "organised" ; --	AP	0769	organised	organizzato	organiserad	organisiert	organiziran
-- DERIVED 0770 Quant our nostro vår unser naš 
lin oven_0771_CN = mkiCN "oven" ; --	CN	0771	oven	forno	ugn	der Ofen	pečica
lin pad_0772_CN = mkiCN "pad" ; --	CN	0772	pad	blocco di carta	anteckningsblock	das Polster	blazinica
lin painting_0773_CN = mkiCN "painting" ; --	CN	0773	painting	pittura	målning	Malerei	slika
lin pajamas_0774_CNPL = mkiCNPL "pajama" ; --	CNPL	0774	pajamas	pigiama	pyjamas	der Schlafanzug	pidžama
lin panties_0775_CNPL = mkiCNPL "panty" ; --	CNPL	0775	panties	mutande	underbyxor	Höschen	spodnje hlačke
-- DUPLICATE lin pants_0776_CN = mkiCN "pants" ; -- CN
lin paper_0777_CNM = mkiCNM "paper" ; --	CNM	0777	pencil	matita	penna	Bleistift	svinčnik
lin pencil_0777_CN = mkiCN "pencil" ; --	CN	0777	pencil	matita	penna	Bleistift	svinčnik
lin paper_0778_CN = mkiCN "paper" ; --	CN	0778	paper	carta	papper	das Papier	papir
lin paper_towel_0779_CN = mkiCN "paper towel" ; --	CN	0779	paper towel	asciugamani di carta	pappershanddukar	Papiertücher	papirnate brisače
lin park_0780_V = mkiV "park" ; --	V	0780	park	parcheggiare	parkera	der Park*	park
lin park_0780_V2 = mkiV2 "park" ; --	V2	0780	park	parcheggiare	parkera	der Park*	park
lin park_0781_CNP = mkiCNP "park" ; --	CNP	0781	park	parco	park 	parken*	parkirati
lin part_0782_CN = mkiCN "part" ; --	CN	0782	part	parte	del	der Teil	del
lin party_bag_0783_CNM = mkiCNM "party bag" ; --	CNM	0783	party bag	carta da regalo	presentpapper	Party Tasche	darilna vrečka
lin party_0784_CN = mkiCN "party" ; --	CN	0784	party	party	fest	Party	zabava
-- DERIVED 0785 VP pass napkin distribuire tovaglioli dela ut (servetter) Serviette geben podati prtiček 
-- DERIVED 0786 VP pass out cups distribuire bicchieri dela ut (glas) pass out Tassen podati skodelice 
-- DERIVED 0787 VP pass out papers distribuire fogli dela ut blad pass out Papiere podati dokumente 
lin pass_0788_V = mkiV "pass" ; --	V	0788	pass	passare	passera	bestehen	podati
lin passport_0789_CN = mkiCN "passport" ; --	CN	0789	passport	passaporto	pass	der Reisepass	potni list
lin past_0790_AP = mkiAP "past" ; --	AP	0790	past	antica	förr i tiden*	die Vergngenheit	preteklost
lin pasta_0791_CNM = mkiCNM "pasta" ; --	CNM	0791	pasta	pasta fresca	pasta	die Pasta	testenine
lin pay_attention_0792_V = partV I.pay_V "attention" ; --	V	0792	pay attention	fare attenzione	vara uppmärksam	passt auf	bodite pozorni
lin pay_attention_0792_V2 = mkV2 (partV I.pay_V "attention") to_Prep ; --	V2	0792	pay attention	fare attenzione	vara uppmärksam	passt auf	bodite pozorni
lin peanut_butter_0793_CNM = mkiCNM "peanut butter" ; --	CNM	0793	peanut butter	burro di arachidi	jordnötssmör	die Erdnussbutter	arašidovo maslo
-- DUPLICATE 0794 CNCONJ pen and paper carta e penna papper och penna Stift und Papier kuli in papir DUPLICATE 0777 
lin pen_0794_CN = mkiCN "pen" ; --	CN	0794	pen and paper	carta e penna	papper och penna	Stift und Papier	kuli in papir	DUPLICATE 0777
lin penicillin_0795_CNM = mkiCNM "penicillin" ; --	CNM	0795	penicilline	penicillina	penicillin	Penicillin	penicilin
-- DUPLICATEMAYBE lin pen_0796_CN = mkiCN "pen" ; -- CN
-- DUPLICATE 0797 CN pen penna penna der Schreistift pero DUPLICATE 0796 
lin people_0798_CNPLH = mkCN (mkN "people" "people") ; --	CNPLH	0798	people	gente	människor	die Leute	ljudstvo
-- DERIVED lin people_0799_NPH = mkiNPH "people" ; -- NPH
-- DERIVED 0800 CNPLH people persone personer Menschen osebje 
lin pepper_0801_CNM = mkiCN "pepper" ; --	CNM	0801	pepper	pepe	peppar	der Pfeffer	paprika
lin pepper_0802_CN = mkiCN "pepper" ; --	CN	0802	pepper	peperone	paprika	pfeffern	poper
lin perfect_0803_AP = mkiAP "perfect" ; --	AP	0803	perfect	perfetto	perfekt	perfekt	popoln
lin perfume_0804_CNM = mkiCNM "perfume" ; --	CNM	0804	perfume	profumo	parfym	Parfüm	parfum
lin personal_care_0805_CNM = mkiCNM "personal care" ; --	CNM	0805	personal care	cura personale	personlig vård	die Körperpflege	osebna nega
lin person_0806_CNH = mkiCNH "person" ; --	CNH	0806	person	persona	person 	die Person	oseba
lin pharmacy_0807_CNP = mkiCNP "pharmacy" "at" ; --	CNP	0807	pharmacy	farmacia	apotek	die Apotheke	lekarna
lin phone_number_0808_CN = mkiCN "phone number" ; --	CN	0808	phone number	numero di telefono	telefonnummer	die Telefonnummer	telefonska številka
lin phone_0809_V = mkV "phone" | mkV "call" ; --	V	0809	phone	telefonare	ringa	das Telefon	telefon
lin phone_0809_V2 = mkV2 "phone" | mkV2 "call" ; --	V2	0809	phone	telefonare	ringa	das Telefon	telefon
lin photo_book_0810_CN = mkiCN "photo book" ; --	CN	0810	photo book	album delle foto	fotoalbum	Fotobuch	fotoknjiga
lin photo_0811_CN = mkiCN "photo" ; --	CN	0811	photo	fotografia	foto	das Foto	fotografija
lin pick_up_0812_V2 = mkV2 (partV (mkV "pick") "up") ; --	V2	0812	pick up	raccogliere	plocka upp	abholen	dvigniti
-- DUPLICATE lin pick_up_0813_V2 = mkiV2 "pick up" ; 
lin picture_0814_CN = mkiCN "picture" ; --	CN	0814	picture	quadro	tavla	das Bild	slika
lin pie_0815_CN = mkiCN "pie" ; --	CN	0815	pie	pasticcio	paj	der gefüllter Kuchen	pita
lin pie_0815_CNM = mkiCNM "pie" ; --	CNM	0815	pie	pasticcio	paj	der gefüllter Kuchen	pita
lin pita_bread_0816_CN = mkiCN "pita bread" ; --	CN	0816	pita bread	pane pita	pitabröd	die Pita	polnjen kruh
lin pizza_0817_CN = mkiCN "pizza" ; --	CN	0817	pizza	pizza	pizza	die Pizza	pica
lin pizza_0817_CNM = mkiCN "pizza" ; --	CNM	0817	pizza	pizza	pizza	die Pizza	pica
lin place_0818_CNP = mkiCNP "place" ; --	CNP	0818	place	posto	plats	der Ort	kraj
lin plant_0819_V2 = mkiV2 "plant" ; --	V2	0819	plant	piantare	plantera	die Pflanze*	rastlina 
lin plant_0820_CN = mkiCN "plant" ; --	CN	0820	plant	pianta	växt	pflanzen*	saditi
-- DUPLICATEMAYBE lin plant_0821_CN = mkiCN "plant" ; -- CN
lin plastic_bag_0822_CN = mkiCN "plastic bag" ; --	CN	0822	plastic bag	sacchetto di  plastica	plastpåse	die Plastiktüte	plastična vrečka
lin plastic_container_0823_CN = mkiCN "plastic container" ; --	CN	0823	plastic container	flacone di plastica	plastflaska	der Kunststoffbehälter	plastični zabojnik
lin plastic_liner_0824_CN = mkiCN "plastic liner" ; --	CN	0824	plastic liner	sacco immondizia	soppåse	Kunststoffauskleidung 	plastična folija
lin plastic_wrap_0825_CNM = mkiCNM "plastic wrap" ; --	CNM	0825	plastic wrap	pellicola	gladpack	die Plastikfolie	plastični ovoj
lin plate_0826_CN = mkiCN "plate" ; --	CN	0826	plate	piatto	tallrik	der Teller	krožnik
lin play_comedy_0827_CN = mkiCN "comedy" | mkiCN "play" ; --	CN	0827	play,comedy	commedia	kommedi	das Spiel	igra
lin play_drama_0828_CN = mkiCN "drama" | mkiCN "play" ; --	CN	0828	play,drama	dramma	drama	spielen*	zabava
lin play_0829_CN = mkiCN "play" ; --	CN	0829	play	recita	akt	das Schauspiel	nastopiti
-- DUPLICATEMAYBE lin play_0830_CN = mkiCN "play" ; -- CN
lin please_be_quiet_0831_Utt = mkiUtt ( "please be quiet") | mkiUtt ( "silence please") ; --	Utt	0831	please be quiet	per favore silenzio	tyst	bitte leise sein	prosim bodite tiho
lin I'm_sorry_0832_Interj = mkiInterj "I'm sorry" ; --	Interj	0832	I'm sorry	mi dispiace	var snäll*	bitte*	prosim 
lin please_0833_Interj = mkiInterj "please" ; --	Interj	0833	please	per favore	var snäll	das Bitteschön*	izvolite
-- DUPLICATEMAYBE lin please_0834_Interj = mkiInterj "please" ; -- Interj
-- DERIVED 0835 Utt please push me per favore spingimi var snäll och skjut på push mich bitte prosim potisnite me 
-- DERIVED 0836 Utt please repeat per favore ripeti var snäll och säg om det bitte wiederholen prosim ponovite 
-- DERIVED 0837 Utt please wait per favore aspetta var snäll och vänta Warten Sie mal prosim počakajte 
lin plug_0838_CN = mkiCN "plug" ; --	CN	0838	socket	presa	uttag	Steckdose	vtičnica
lin socket_0838_CN = mkiCN "socket" ; --	CN	0838	socket	presa	uttag	Steckdose	vtičnica
lin plug_in_0839_V2 = mkV2 (partV (mkV "plug") "in") ; --	V2	0839	plug in	inserire la spina	stoppa i kontakten	einstecken 	vključiti
lin plumb_0840_V = mkV "plumb" ; --	V	0840	plumb/cover with lead	piombare	laga tänder	die Bleigummiabdeckung	navpično
lin point_0841_CN = mkiCN "point" ; --	CN	0841	point	punto	punkt	der Punkt	točka
lin police_car_0842_CN = mkiCN "police car" ; --	CN	0842	police car	macchina della polizia	polisbil	das Polizeiauto	policijski avto
lin police_officer_0843_CNH = mkiCNH "police officer" ; --	CNH	0843	police officer	poliziotto	polis	der Polizist	policist
lin police_0844_CNH = mkiCNH "police" ; --	CNH	0844	police	polizia	polis	die Polizei	policija
lin police_station_0845_CNP = mkiCNP "police station" "at" ; --	CNP	0845	police station	stazione di polizia	polisstation	die Polizeidienststelle	policijska postaja
lin political_party_0846_CN = mkiCN "political party" ; --	CN	0846	political party	partito	politiskt parti	die politische Partei	politična stranka
lin pond_0847_CN = mkiCN "pond" ; --	CN	0847	pond	stagno	damm	der Teich	ribnik
lin portiere_0848_CNH = mkiCNH "portiere" ; --	CNH	0848	portiere	concierge	portier	portiere	portir, vratar
lin postal_office_0849_CNP = mkiCNP "post office" | mkiCNP "postal office" "at" ; --	CNP	0849	postal office	ufficio postale	postkontor	das Postamt	poštni urad
lin postcard_0850_CN = mkiCN "postcard" ; --	CN	0850	postcard	cartolina	vykort	Postkarte	razglednica
lin potatoes_salad_0851_CNM = mkiCNM "potato salad" ; --	CNM	0851	potatoes salad	insalata di patate	potatissallad	die Kartoffel Salat	krompirjeva solata
lin potted_plant_0852_CN = mkiCN "potted plant" ; --	CN	0852	potted plant	pianta in vaso	krukväxt	Topfpflanze	rastlina v lončku
-- DERIVED 0853 VPSlash pour out into bowl versare nella ciotola häll i skålen ausgießen in Schale izliti v skledo 
lin pour_out_0854_V2 = mkiV2p "pour" "out" ; --	V2	0854	pour out	versare	hälla ut	ausgiessen	izliti
lin practice_0855_CNM = mkiCNM "practice" ; --	CNM	0855	practice	pratica	övning	die Praxis	praksa, urjenje
lin prefer_0856_V2 = mkiV2 "prefer" ; --	V2	0856	prefer	preferire	föredra	bevorzugen	bolj ceniti
lin prefer_0856_V3 = mkV3 (mkV "prefer") noPrep to_Prep ; --	V3	0856	prefer	preferire	föredra	bevorzugen	bolj ceniti
lin pregnant_woman_0857_CNH = mkCN (mkA "pregnant") (mkN "woman" "women") ; --	CNH	0857	pregnant woman	donna incinta	gravid kvinna	schwangere Frau	noseča ženska
lin present_0858_AP = mkiAP "present" ; --	AP	0858	present	presente	närvarande	das Geschenk*	prisoten
lin price_ticket_0859_CN = mkiCN "price ticket" ; --	CN	0859	price ticket	cartellino del prezzo	prislapp	das Preisschild	cena vstopnice
lin printer_0860_CN = mkiCN "printer" ; --	CN	0860	printer	stampante	skrivare	der Drucker	tiskalnik
lin professor_0861_CNH = mkiCNH "professor" ; --	CNH	0861	professor	professore	professor	der Professor	profesor
lin program_0862_V2 = mkV2 (mkV "program" "programmed" "programmed") ; --	V2	0862	programming the microwave	programmare il microonde	programmera micron	Programmierung der Mikrowelle	programirati mikrovalno pečico
lin microwave_0862_CN = mkiCN "microwave" ; --	CN	0862	programming the microwave	programmare il microonde	programmera micron	Programmierung der Mikrowelle	programirati mikrovalno pečico
-- DERIVED 0862 VP programming the microwave programmare il microonde programmera micron Programmierung der Mikrowelle programirati mikrovalno pečico 
lin public_0863_AP = mkiAP "public" ; --	AP	0863	public	pubblico	allmänhet	öffentich	javen
lin pull_down_0864_V2 = mkiV2p "pull" "down" ; --	V2	0864	pull down	abbattere	slå ner	herunterziehen	podreti
lin pull_out_0865_V2 = mkiV2p "pull" "out" ; --	V2	0865	pull the plug out	staccare la spina	dra ur sladden	Ziehen Sie den Stecker aus	izvlecite vtikač iz
-- DERIVED 0865 VP pull the plug out staccare la spina dra ur sladden Ziehen Sie den Stecker aus izvlecite vtikač iz 
lin tomato_pulp_0866_CNM = mkiCNM "tomato pulp" ; --	CNM	0866	pulp of tomato	polpa di pomodoro	tomatkonserv	Fruchtfleisch der Tomate	paradižnikova mezga
lin purchases_0867_CNPL = mkiCNPL "purchase" ; --	CNPL	0867	purchases	acquisti	inköp	die Einkäüfe	nakup
-- DERIVE 0868 VP push the sensor premere il sensore tryck på kontakten drücken Sie den Sensor potisnite senzor 
lin put_after_shave_0869_VP = mkVP (mkV2 I.put_V) (mkNP (mkN "after shave")) ; --	VP	0869	put after shave	mettere il dopobarba	ta på rakvatten	das Aftershave setzen	losion po britju
lin put_cork_on_0870_VP = mkVP (mkV2 (partV I.put_V "on")) (mkNP (mkN "cork")) ; --	VP	0870	put cap on	mettere il tappo	sätta på korken	setzen Kappe auf	daj kapo na glavo
lin put_coat_on_0871_VP det = mkVP (mkV2 (partV I.put_V "on")) (mkNP det (mkN "coat")) ; --	Det -> VP	0871	put coat on	indossare il cappotto	sätta på jackan	setzen Mantel auf	obleci plašč
lin put_in_0872_V2 = mkV2 (partV I.put_V "in") ; --	V2	0872	put in	mettere dentro	stoppa in	einstellen	daj v
lin put_in_0873_VP np1 np2 = mkVP (mkVP (mkV2 I.put_V) np1) (S.mkAdv in_Prep np2) ; --	NP -> NP -> VP	0873	put in the bag	mettere nel sacchetto	lägga i väskan	setzen in der Tasche	daj v vrečko (torbo)
-- DERIVED 0873 VPSlash put in the bag mettere nel sacchetto lägga i väskan setzen in der Tasche daj v vrečko (torbo) 
-- DERIVED 0874 VPSlash put in the bowl mettere nella ciotola lägga i skålen setzen in der Schüssel daj v skledo 
-- DERIVED 0875 VPSlash put in the box mettere nella scatola lägga i lådan setzen in der Box daj v škatlo 
-- DERIVED 0876 VP put in the head mettere dentro la testa stick in huvudet in den Kopf legen daj v glavo 
lin put_on_0877_V2 = mkV2 (partV I.put_V "on") ; --	V2	0877	put on	indossare	sätta på	anziehen	obleči
lin put_on_0878_V2 = mkV2 (partV I.put_V "on") ; --- clothes --	V2	0878	put on	mettere su	lägga	anziehen	postavi na
lin contact_lens_0879_CN = mkiCN "contact lens" ; --	CN	0879	put on the eye lens	mettere le lenti a contatto	sätta in kontaktlinser	setzen auf die Augenlinse 	daj si očesne leče
-- DERIVED 0879 VP put on the eye lens mettere le lenti a contatto sätta in kontaktlinser setzen auf die Augenlinse daj si očesne leče
lin basket_0880_CN = mkiCN "basket" ; --	CN	0880	put the clothes in the basket	mettere i vestiti nella cesta	lägga kläder i korgen	die Kleider in den Korb setzen	daj obleke v košaro
-- DERIVED 0880 VP put the clothes in the basket mettere i vestiti nella cesta lägga kläder i korgen die Kleider in den Korb setzen daj obleke v košaro 
lin put_together_0881_V2 = mkV2 (partV I.put_V "together") ; --	V2	0881	put together	mettere insieme	sätt ihop	zusammensetzen	daj skupaj
lin quarter_0882_CN = mkiCN "quarter" ; --	CN	0882	quarter	quarto	kvart	Viertel	četrtina
lin radio_alarm_clock_0883_CN = mkiCN "radio alarm clock" ; --	CN	0883	radio alarm clock	radio sveglia	klockradio	Radiowecker	radio budilka
lin radio_announcer_0884_CNH = mkiCN "radio announcer" ; --	CNH	0884	radio announcer	annunciatore radio	radiopratare	der Radiosprecher	radijska napovedovalka
lin rail_0885_CN = mkiCN "rail" ; --	CN	0885	rail	binario	spår	die Schiene	tračnica
lin railroad_station_0886_CNP = mkiCNP "railroad station" | mkiCNP "railway station" "at" ; --	CNP	0886	railroad station	stazione ferroviaria	järnvägsstation	die Eisenbahnstation	železniška postaja
lin raining_boot_0887_CN = mkiCN "raining boot" | mkiCN "wellington" ; --	CN	0887	raining boot	stivali da pioggia	gummistövlar	das Boot	gumijasti škornji
lin rain_0888_V0 = mkiV0 "rain" ; --	V0	0888	rain	piovere	regna	der Regen*	dež
-- DERIVED 0889 VP raise arm alzare il braccio lyft armen der Arm erhöhen dvigniti roko 
-- DERIVED 0890 VP raise hand alzare la mano lyft handen die Hand heben dvigniti dlan 
-- DERIVED 0891 VP raise head alzare la testa lyft huvudet der Kopf heben dvigniti glavo 
-- DERIVED 0892 VP raise pants alzare i pantaloni dra upp byxorna die Hose erhöhen dvigniti hlače 
lin rap_music_0893_CNM = mkiCNM "rap music" ; --	CNM	0893	rap music	musica rap	rapmusik	die Rap Musik	rap glasba
lin razor_0894_CN = mkiCN "razor" ; --	CN	0894	razor	rasoio	rakhyvel	der Rasierer	britev
-- DERIVED 0895 Imp read again leggilo di nuovo läs igen erneut lesen preberite ponovno 
lin read_0896_V = I.read_V ; --	V	0896	read	leggere	läsa	lesen	brati
lin read_0896_V2 = mkV2 I.read_V ; --	V2	0896	read	leggere	läsa	lesen	brati
-- DERIVED 0897 Imp read this leggere questo läsa en fråga* lesen Sie dies preberi to 
lin really_0898_Adv = mkiAdv "really" ; --	Adv	0898	really	davvero	är det sant?*	wirklich	zares
lin red_berry_0899_CN = mkCN (mkA "red") (mkN "berry") ; --	CN	0899	red berry	bacca rossa	röda bär	die rote Beere	rdeča jagoda
lin red_0900_AP = mkiAP "red" ; --	AP	0900	red	rosso	röd	rot	rdeč
lin remote_control_0901_CN = mkiCN "remote control" ; --	CN	0901	remote control	telecomando	fjärrkontroll	die Fernbedienung	daljinec
lin reservation_0902_CN = mkiCN "reservation" ; --	CN	0902	reservation	prenotazione	reservation	die Reservierung	rezervacija
lin reserved_0903_AP = mkiAP "reserved" ; --	AP	0903	reserved	prenotato	reserverad	reserviert	rezerviran
lin restaurant_0904_CNP = mkiCNP "restaurant" ; --	CNP	0904	restaurant	ristorante	restaurang	das Restaurant	restavracija
lin retired_0905_AP = mkiAP "retired" ; --	AP	0905	retired	pensionata	pensionerad	im Ruhestand	upokojen
lin retirement_0906_CNM = mkiCNM "retirement" ; --	CNM	0906	retirement	ritiro	pensionering	die Pensionierung	upokojitev
lin return_to_0907_V2 = mkV2 (mkV "return") to_Prep ; --	V2	0907	return to	ritornare	återvända	zurückkehren zu	vrnitev na
lin have_fun_0908_VP = mkVP S.have_V2 (mkNP (mkN "fun")) | mkVP (mkV "revel") ; --	VP	0908	revel	divertirsi	ha roligt	feiern	uživati
lin rice_0909_CNM = mkiCNM "rice" ; --	CNM	0909	rice	riso	ris	der Reis	riž
lin ride_bike_0910_VP det = mkVP (mkV2 I.ride_V) (mkNP det (mkN "bike")) ; --	Det -> VP	0910	ride a bike	andare in bicicletta	cykla	das Fahrrad fahren	voziti kolo, kolesariti
lin right_0911_AP = mkiAP "right" ; --- corretto --	AP	0911	right	corretto	rätt	rechts	desno
lin right_0912_AP = mkiAP "right" ; --- destra --	AP	0912	right	destra	höger	richtig	pravica
lin right_0913_AP = mkiAP "right" ; --- giusto --	AP	0913	right	giusto	rätt	genau	pravilno
lin right_0913_Adv = mkiAdv "right" ; --- giusto --	Adv	0913	right	giusto	rätt	genau	pravilno
lin ring_0914_CN = mkiCN "ring" ; --	CN	0914	ring	anello	ring	der Ring	prstan
lin ring_bell_0915_CN = mkiCN "door bell" ; --	CN	0915	ring bell	campanello	dörrklocka	die Glocke läuten*	zvoniti
lin ring_0916_V = I.ring_V ; --	V	0916	ring	squillare	ringa	klingeln	obroč
lin rinse_ones_mouth_0917_VP = reflPossVP (mkV2 "rinse") (mkN "mouth") ; --	VP	0917	rinse one's mouth	sciacquarsi la bocca	skölja munnen	den Mund spülen	izpiranje ust
lin rinse_mouth_0917_VP pron = mkVP (mkV2 "rinse") (mkNP (S.mkQuant pron) (mkN "mouth")) ; --	Pron -> VP	0917	rinse one's mouth	sciacquarsi la bocca	skölja munnen	den Mund spülen	izpiranje ust
lin roast_beef_sandwich_0918_CN = mkiCN "roast beef sandwich" ; --	CN	0918	roast beef sandwich	panino all'arrosto	rostbiffssmörgås	der Rinderbratensandwich	sendvič s pečeno govedino
lin robbery_0919_CN = mkiCN "robbery" ; --	CN	0919	robbery	rapina	rån	der Raub	rop
lin rocking_chair_0920_CN = mkiCN "rocking chair" ; --	CN	0920	rocking chair	sedia a dondolo	gungstol	Schaukelstuhl	gugalnik
lin rock_music_0921_CNM = mkiCNM "rock music" ; --	CNM	0921	rock music	musica rock	rockmusik	die Rockmusik	rock glasba
lin rock_0922_CN = mkiCN "rock" ; --	CN	0922	rock	roccia	sten	Rock	skala
lin roll_of_paper_0923_CN = mkCN (mkN "roll") (S.mkAdv part_Prep (mkNP (mkN "paper"))) | mkiCN "paper roll" ; --	CN	0923	roll of paper	rotoli di carta	pappersrulle	die Papierrole	rola papirja
lin roll_0924_V = mkiV "roll" ; --	V	0924	roll	rotolare	rulla	rollen	zvitek
lin roll_0924_V2 = mkiV2 "roll" ; --	V2	0924	roll	rotolare	rulla	rollen	zvitek
lin romantic_story_0925_CN = mkCN (mkA "romantic") (mkN "story") ; --	CN	0925	romantic story	storia sentimentale	drama	die romantische Geschichte	romantična zgodba
lin room_0926_CN = mkiCN "room" ; --- ambienti --	CN	0926	room	ambienti	rum	das Zimmer	soba
lin room_0927_CN = mkiCN "room" ; --- stanza --	CN	0927	room	stanza	rum 	der Raum	prostor
lin rub_out_0928_V2 = mkiV2p "rub" "out" ; --	V2	0928	rub out	cancellare	sudda	leerlaufen	izbrisati
lin run_away_from_0929_V2 = mkV2 (partV I.run_V "away") from_Prep ; --	V2	0929	run away from	correre via	springa iväg	wegrennen von	pobegniti iz
lin run_away_0930_V = partV I.run_V "away" ; --	V	0930	run away	scappare via	springa iväg	wegrennen von	zbežati
lin running_shoe_0931_CN = mkiCN "running shoe" ; --	CN	0931	running shoe	scarpe da corsa	joggingskor	die Laufschuhe	tekaški copati
lin sachet_of_sugar_0932_CN = mkiCN "sugar sachet" ; --	CN	0932	sachet of sugar	bustine di zucchero	sockerförpackning	das Zuckertütchen	vrečka sladkorja
lin sad_tale_0933_CN = mkCN (mkA "sad") (mkN "tale") ; --	CN	0933	sad tale	storia triste	tragedi	die traurige Geschichte	žalostna zgodba
lin sad_0934_AP = mkiAP "sad" ; --	AP	0934	sad	triste	ledsen	traurig	žalosten
lin salad_dressing_0935_CNM = mkiCNM "salad dressing" ; --	CNM	0935	salad dressing	condimento per insalata	salladsdressing	die Salatsauce	solatni preliv
lin salad_0936_CNM = mkiCNM "salad" ; --	CNM	0936	salad	insalata	sallad	der Salat	solata
lin salary_0937_CN = mkiCN "salary" ; --- salario --	CN	0937	salary	salario	lön	das Gehalt	plača
-- DUPLICATEMAYBE lin salary_0938_CN = mkiCN "salary" ; --- stipendio -- CN
-- DERIVED 0939 CNCONJ salt and pepper sale e pepe salt och peppar Salz und Pfeffer sol in poper
lin salt_0940_CNM = mkiCNM "salt" ; --	CNM	0940	salt	sale	salt	das Salz	sol
lin sand_0941_CNM = mkiCNM "sand" ; --	CNM	0941	sand	sabbia	sand	der Sand	pesek
-- DERIVED 0942 Weekday Saturday sabato lördag der Samstag sobota 
lin say_0943_V2 = mkV2 I.say_V ; --	V2	0943	say	dire	säga	sagen	reci
lin say_0943_VS = mkVS I.say_V ; --	VS	0943	say	dire	säga	sagen	reci
-- DERIVED 0944 VP say the truth testimoniare la verità vittna die Wahrheit sagen povedati resnico 
lin scarf__0945_CN = mkiCN "scarf " ; --	CN	0945	scarf 	sciarpa	halsduk	der Schal	šal
lin scary_0946_AP = mkiAP "scary" ; --- pauroso --	AP	0946	scary	pauroso	skräckinjagande	erschreckend	srhljiv
-- DUPLICATEMAYBE lin scary_0947_AP = mkiAP "scary" ; --- spaventoso -- AP
lin scary_tale_0948_CN = mkCN (mkA "scary") (mkN "tale") ; --	CN	0948	scary tale	storia paurosa	skräckfilm	die Gruselgeschichte	srhljiva zgodba, strašljiva zgodba
lin schedule_0949_CN = mkiCN "schedule" ; --	CN	0949	schedule	scheda	schema	der Terminplan	urnik
lin school_0950_CNP = mkiCNP "school" "at" ; --	CNP	0950	school	scuola	skola	die Schule	šola
lin screen_0951_CN = mkiCN "screen" ; --	CN	0951	screen	schermo	skärm	der Bildschirm	zaslon
lin sculpture_0952_CN = mkiCN "sculpture" ; --	CN	0952	sculpture	scultura	skulptur	die Skulptur	skulptura
-- DERIVED 0953 VP seal an envelope chiudere una busta försluta ett kuvert einen Umschlag dichten zapečatiti kuverto 
lin sea_0954_CN = mkiCN "sea" ; --	CN	0954	sea	mare	hav	das Meer	morje
lin secretary_0955_CNH = mkiCNH "secretary" ; --	CNH	0955	secretary	segretario	sekreterare	die Sekretärin	tajnik
lin see_0956_V = I.see_V ; --	V	0956	see	vedere	titta*	sehen	videti
lin see_0956_V2 = mkV2 I.see_V ; --	V2	0956	see	vedere	titta*	sehen	videti
lin see_you_later_0957_Interj = mkiInterj "see you later" ; --	Interj	0957	see you later	a più tardi	vi ses senare	bis später	se vidimo kasneje
-- DUPLICATE lin see_you_later_0958_Interj = mkiInterj "see you later" ; -- Interj
lin senior_0959_CNH = mkiCNH "senior" ; --	CNH	0959	senior	anziano	åldring	der Senior	starejši, višji, nadrejeni
lin sentimental_tv_movie_0960_CN = mkCN (mkA "sentimental") (mkN "TV movie") ; --	CN	0960	sentimental tv movie	film sentimentale tv	TV-film*	sentimental Fernsehfilm 	čustvena tv zgodba (film)
lin service_0961_CN = mkiCN "service" ; --	CN	0961	service	servizio	tjänst	die Bedienung	usluga
lin set_table_0962_VP det = mkVP (mkV2 I.set_V) (mkNP det (mkN "table")) ; --	Det -> VP	0962	set table	apparecchiare	duka	den Tisch decken	pripraviti mizo
lin several_0963_Det = mkiDet "several" ; --	Det	0963	several	tante	många	mehrere	nekoliko, več
lin sewing_machine_0964_CN = mkiCN "sewing machine" ; --	CN	0964	sewing machine	macchina da cucire	symaskin	die Maschine	šivalni stroj
-- DERIVED 0965 VP shake a carpet sbattere il tappeto skaka mattan einen Teppich schütteln stresati preprogo 
-- DERIVED 0966 VP shake a foot sbattere i piedi sparka med fötterna einen Fuss schütteln stresati nogo (stopalo) 
-- DERIVED 0967 VP shake one's hands scuoti le mani skaka händerna Hände schütteln rokovati se 
-- DERIVED 0968 VP shake one's head scuotere la testa skaka på huvudet mit dem Kopf schütteln tresti z glavo 
lin shame_0969_CNM = mkiCNM "shame" ; --	CNM	0969	shame	vergogna	skam	die Schande	sramota
lin shampoo_ones_hair_0970_VP = reflPossVP (mkV2 "shampoo") (mkN "hair") ; --	VP	shampoo lavare i capelli tvätta håret das Shampoo* šampon 
lin shampoo_hair_0970_VP pron = mkVP (mkV2 "shampoo") (mkNP (S.mkQuant pron) (mkN "hair")) ; --	Pron -> VP	shampoo lavare i capelli tvätta håret das Shampoo* šampon 
lin shave_0971_V = mkiV "shave" ; --	V	0971	shave	radere	raka sig	rasieren	(o) briti
lin shave_0971_V2 = mkiV2 "shave" ; --	V2	0971	shave	radere	raka sig	rasieren	(o) briti
lin shaving_cream_0972_CNM = mkiCNM "shaving cream" ; --	CNM	0972	shaving cream	schiuma da barba	raktvål	die Rasiercreme	pena za britje
-- DERIVED 0973 Pron she lei hon sie ona 
lin shelf_0974_CN = mkCN (mkN "shelf" "shelves") ; --	CN	0974	shelf	scaffale	hylla	das Regal	polica
lin shirt_0975_CN = mkiCN "shirt" ; --	CN	0975	shirt	camicia	skjorta	das Hemd	srajca
lin shoe_0976_CN = mkiCN "shoe" ; --- accessori --	CN	0976	shoe	accessori	skor 	die Schuhe	čevlji
-- DUPLICATEMAYBE lin shoe_0977_CN = mkiCN "shoe" ; ---- scarpa -- CN
-- DERIVED lin shoes_0978_CN = mkiCN "shoes" ; -- CN
lin shoe_store_0979_CNP = mkiCNP "shoe store" ; --	CNP	0979	shoe store	negozio di scarpe	skoaffär	das Schuhgeschäft	trgovina s čevlji
lin shopping_bag_0980_CN = mkiCN "shopping bag" ; --	CN	0980	shopping bag	borsa per la spesa	väska	die Einkaufstasche	nakupovalna vreča, torba
lin shopping_center_0981_CNP = mkiCNP "shopping center" | mkiCNP "shopping centre" "at" ; --	CNP	0981	shopping center	centro commerciale	shoppingcenter	das Einkaufszentrum	nakupovalni center
lin shopping_0982_CNM = mkiCNM "shopping" ; --	CNM	0982	shopping	shopping	shoppa*	einkaufen	nakupovanje
lin short_0983_AP = mkiAP "short" ; --	AP	0983	short	corto	kort	kurz	kratek, nizek
lin short_sleeve_0984_CN = mkiCN "short sleeve" ; --	CN	0984	short sleeve	maniche corte	kort ärm	kurze Ärmel	kratek rokav
lin shower_cap_0985_CN = mkiCN "shower cap" ; --	CN	0985	shower cap	cuffia doccia	duschmössa	die Duschhaube	kapa za tuširanje
lin shower_0986_CN = mkiCN "shower" ; --	CN	0986	shower	doccia	dusch	die Dusche	tuš
lin shower_0987_VP = mkVP (mkV2 I.take_V) (mkNP a_Det (mkN "shower")) ; --	VP	0987	shower	farsi la doccia	duscha	der Schauer	ploha
lin sick_0988_AP = mkiAP "sick" ; --	AP	0988	sick	malato	sjuk	krank	bolan
lin sidewalk_border_0989_CNP = mkiCNP "sidewalk border" "on" ; --	CNP	0989	sidewalk border	bordo del marciapiede	trottoarkant	Bürgersteig Grenze	rob pločnika
lin sidewalk_0990_CNP = mkiCNP "sidewalk" "on" ; --	CNP	0990	sidewalk	marciapiede	trottoar	der Bürgersteig	pločnik
lin signal_smoke_system_0991_CN = mkiCN "signal smoke system" ; --	CN	0991	signal smoke system	segnalatore di fumo	brandvarnare	das Rauchsignal System	signalni sistem
lin silver_0992_CNM = mkiCNM "silver" ; --	CNM	0992	silver	argento	silver	das Silber	srebro
lin sink_0993_CN = mkiCN "sink" ; --	CN	0993	sink	acquaio	handfat	das Waschbecken	umivalnik
lin sin_0994_CN = mkiCN "sin" ; --	CN	0994	sin	peccato	synd	die Sünde	greh
lin sir_0995_CNH = mkiCNH "sir" ; --	CNH	0995	sir	signore	herre	der Herr	gospod
lin sister_0996_CNH = mkiCNH "sister" ; --	CNH	0996	sister	sorella	syster	die Schwester	sestra
-- DERIVED 0997 VP sit on floor sedersi per terra sitta på marken auf dem Boden sitzen sediti na tleh 
-- DERIVED 0998 VP sit on floor stare seduti sitta på golvet auf dem Boden sitzen usesti na tla 
lin skin_0999_CNM = mkiCNM "skin" ; --	CNM	0999	skin	pelle	hud	die Haut	koža
lin skirt_1000_CN = mkiCN "skirt" ; --	CN	1000	skirt	gonna	kjol	der Rock	krilo
lin sky_1001_CN = mkiCN "sky" ; --	CN	1001	sky	cielo	himmel	der Himmel	nebo
lin slow_1002_AP = mkiAP "slow" ; --	AP	1002	slow	lento	långsam	langsam	počasen
lin slowly_1003_Adv = mkiAdv "slowly" ; --	Adv	1003	slowly	lentamente	långsamt	langsam	počasi
lin small_form_for_biscuit_1004_CN = mkiCN "biscuit form" ; --	CN	1004	small form for biscuit	formine per i biscotti	kakform	die Kleinform für Kekse	majhen model za biskvit
lin small_1005_AP = mkiAP "small" ; --	AP	1005	small	piccolo	liten	klein	majhen
lin smoker_1006_CNH = mkiCNH "smoker" ; --	CNH	1006	smoker	fumatore	rökare	die Raucher	kadilci
lin snack_bar_1007_CNP = mkiCNP "snack bar" ; --	CNP	1007	snack bar	mensa	cafÃ©	die Imbissstube	okrepčevalnica
lin snack_time_1008_CNT = mkiCNT "snack time" ; --	CNT	1008	snack time	ora della merenda	mellanmål	Snack Zeit	čas za malico
lin sneaker_1009_CN = mkiCN "sneaker" ; --	CN	1009	sneake	scarpa da ginnastica	gymnastiksko	die Turnschuhe	superge
lin snow_clothes_1010_CNPL = mkiCNPL "snow cloth" "snow clothes" ; --	CNPL	1010	snow clothes	completo da neve	vinterkläder	Schnee Kleidung	oblačila za sneg
lin snow_crystal_1011_CN = mkiCN "snow crystal" ; --	CN	1011	snow crystal	cristallo di neve	snökristall	der Schneekristall	kristalni sneg
lin snowing_boot_1012_CN = mkiCN "winter boot" | mkiCN "snowing boot" ; --	CN	1012	snowing boot	stivali da neve	vinterstövlar	Schnee Boot	škorenj za sneg
lin snow_1013_CNM = mkiCNM "snow" ; --	CNM	1013	snow	neve	snö	der Schnee	sneg
lin snow_1014_V0 = mkiV0 "snow" ; --	V0	1014	snow	nevicare	snö	schneien	snežiti
lin soap_opera_1015_CN = mkiCN "soap opera" ; --	CN	1015	soap opera	tv soap opera	tv-såpa	die Seifenoper	nanizanka
lin soap_1016_CNM = mkiCNM "soap" ; --	CNM	1016	soap	sapone	tvål	der Seife	milo
lin soccer_1017_CNM = mkiCNM "soccer" ; --	CNM	1017	soccer	calcio	fotboll	der Fussball	nogomet
lin soccer_field_1018_CNP = mkiCNP "soccer field" "on" ; --	CNP	1018	soccer field	campo da calcio	fotbollsplan	der Fussballplatz	nogometno igrišče
lin soccer_game_1019_CN = mkiCN "soccer game" ; --	CN	1019	soccer game	partita di calcio	fotbollsmatch	das Fussballspiel	nogometna tekma
lin sofa_1020_CN = mkiCN "sofa" ; --	CN	1020	sofa	divano	soffa	die Sofa	kavč
lin someone_1021_NPH = mkiNPH "someone" ; --	NPH	1021	someone	qualcuno	någon	jemand	nekdo
lin some_time_ago_1022_AdvT = mkiAdvT "some time ago" ; --	AdvT	1022	some time ago	tempo fa	för en tid sedan	vor einiger Zeit	nekaj časa nazaj
lin son_1023_CNH = mkiCNH "son" ; --	CNH	1023	son	figlio	son	der Sohn	sin
lin chili_soup_1024_CNM = mkiCNM "chili soup" ; --	CNM	1024	chili soup	minestra chili	chilisoppa	die Chilisuppe	juha s čilijem
lin soup_1025_CNM = mkiCNM "soup" ; --	CNM	1025	soup	minestra	soppa	die Suppe	juha
lin bean_soup_1026_CNM = mkiCNM "bean soup" ; --	CNM	1026	bean soup	minestra di fagioli	bönsoppa	die Bohnensuppe	fižolova juha
lin carrot_soup_1027_CNM = mkiCNM "carrot soup" ; --	CNM	1027	carrot soup	minestra di carote	morotssoppa	Karottensuppe	korenčkova juha
lin chicken_soup_1028_CNM = mkiCNM "chicken soup" ; --	CNM	1028	chicken soup	minestra di pollo	kycklingsoppa	die Hühnersuppe	piščančja juha
lin green_pea_soup_1029_CNM = mkiCNM "green pea soup" ; --	CNM	1029	green pea soup	minestra di piselli	grön ärtsoppa	die Erbsensuppe	juha iz zelenega graha (grahova juha)
lin lentil_soup_1030_CNM = mkiCNM "lentil soup" ; --	CNM	1030	lentil soup	minestra di lenticchie	linssoppa	die Linsensuppe	juha iz leče
lin onion_soup_1031_CNM = mkiCNM "onion soup" ; --	CNM	1031	onion soup	minestra di cipolle	löksoppa	die Zwiebelsuppe	čebulna juha
lin potato_soup_1032_CNM = mkiCNM "potato soup" ; --	CNM	1032	potato soup	minestra di patate	potatissoppa	die Kartoffelsuppe	krompirjeva juha
lin tomato_soup_1033_CNM = mkiCNM "tomato soup" ; --	CNM	1033	tomato soup	minestra di pomodoro	tomatsoppa	die Tomatesuppe	paradižnikova juha
lin soup_plate_1034_CN = mkiCN "soup plate" ; --	CN	1034	soup plate	piatto fondo	sopptallrik	der Suppenteller	krožnik juhe
lin sour_1035_AP = mkiAP "sour" ; --	AP	1035	sour	aspro	sur	sauer	kisel
lin sour_cream_1036_CNM = mkiCNM "sour cream" ; --	CNM	1036	sour cream	panna da cucina	gräddfil	der Sauerrahm	kisla smetana
lin spicy_1037_AP = mkiAP "spicy" ; --	AP	1037	spicy	piccante	kryddstark	würzig	začinjen (pikanten)
lin spoon_1038_CN = mkiCN "spoon" ; --	CN	1038	spoon	cucchiaio	sked	der Löffel	žlica
lin sports_jacket_1039_CN = mkiCN "sports jacket" ; --	CN	1039	sports jacket	giacca sportiva	sportjacka	Sport Jacke	športna jakna
lin sport_1040_CNM = mkiCNM "sport" ; --	CNM	1040	sport	sport	idrotta*	der Sort	šport
-- DUPLICATE 1041 CNM sport sport sport der Sport iz čistega veselja DUPLICATE 1040 
lin stadium_1042_CNP = mkiCNP "stadium" "at" ; --	CNP	1042	stadium	stadio	stadium	das Stadion	stadion
lin stair_1043_CNPL = mkiCNPL "stair" ; --	CNPL	1043	stairs	scale	trappor	die Treppe	stopnice
lin stamp_1044_CN = mkiCN "stamp" ; --- frimärme --	CN	1044	stamp	francobollo	frimärke	die Briefmare	znamka
lin stamp_1045_V2 = mkiV2 "stamp" ; --	V2	1045	stamp	timbrare	stämpla	der Stempel	žig
lin stamp_1046_CN = mkiCN "stamp" ; --- stämpel --	CN	1046	stamp	timbro	stämpel	die Marke	nalepiti (znamko)
lin star_1047_CN = mkiCN "star" ; --	CN	1047	star	stella	stjärna	der Stern	zvezda
lin walk_1048_CN = mkiCN "walk" ; --	CN	1048	start a walk	iniziare una passeggiata	påbörja en promenad	starten Sie einen Spaziergang	začeti s sprehodom (iti na sprehod)
-- DERIVED 1048 VP start a walk iniziare una passeggiata påbörja en promenad starten Sie einen Spaziergang začeti s sprehodom (iti na sprehod) 
lin fuel_station_1049_CNP = mkiCNP "fuel station" "at" ; --	CNP	1049	fuel station	pompa di carburante	bensinpump	die Tankstelle	črpalka za gorivo
lin stay_1050_VA = mkVA (mkV "stay") ; --	VA	1050	stay	stare	stanna	bleiben	bivanje
lin stay_1050_V = mkiV "stay" ; --	V	1050	stay	stare	stanna	bleiben	bivanje
lin steak_1051_CN = mkiCN "steak" ; --	CN	1051	steak	bistecca	biff	das Steak	zrezek
lin stomach_1052_CN = mkiCN "stomach" ; --	CN	1052	stomach	stomaco	mage	der Bauch	trebuh
lin stop_1053_CNP = mkiCNP "stop" "at" ; --	CNP	1053	stop	fermata	hållplats	der Halt	stop
-- DUPLICATE lin stop_1054_V = mkiV "stop" ; -- V 1169
lin stormy_1055_AP = mkiAP "stormy" ; --	AP	1055	stormy	tempestoso	stormig	stürmisch	nevihten
lin story_1056_CN = mkiCN "story" ; --	CN	1056	story	favola	saga	die Geschichte	zgodba
lin straight_1057_Adv = mkiAdv "straight" ; --	Adv	1057	straight	diritto	rakt	gerade	raven
lin straight_1058_AP = mkiAP "straight" ; --	AP	1058	straight	dritto	rak	direkt	naravnost
lin straw_hat_1059_CN = mkiCN "straw hat" ; --	CN	1059	straw hat	cappello di paglia	stråhatt	der Strohhut	slamnik
lin street_1060_CNP = mkiCNP "street" ; --- strada, Strasse --	CNP	1060	street	strada	gata	die Strasse	ulica
lin street_1061_CNP = mkiCNP "street" ; --- via, Gasse --	CNP	1061	street	via	gata	die Gasse	cesta
lin strike_match_1062_VP det = mkVP (mkV2 I.strike_V) (mkNP det (mkN "match")) ; --	Det -> VP	1062	strike a match	accendere un fiammifero	tända en tändsticka	ein Streichholz anzünden	prižgati vžigalico
lin strip_bed_1063_VP det = mkVP (mkV2 "strip") (mkNP det (mkN "bed")) ; --	Det -> VP	1063	strip a bed	disfare il letto	byta i sängen	ein Bett abziehen	sleči posteljnino
lin strong_1064_AP = mkiAP "strong" ; --	AP	1064	strong	forte	stark	stark	močan
lin student_1065_CNH = mkiCNH "student" ; --	CNH	1065	student	studente	student	der Student	študent
lin study_1066_V = mkiV "study" ; --	V	1066	study	studiare	studera	die Studie	študija
lin study_1066_V2 = mkiV2 "study" ; --	V2	1066	study	studiare	studera	die Studie	študija
lin substance_1067_CNM = mkiCNM "substance" ; --	CNM	1067	substance	materia	substans	die Substanz	snov
lin subway_1068_CNP = mkiCNP "subway" ; --	CNP	1068	subway	metropolitana	tunnelbana	U-Bahn	podzemna železnica
lin such_1069_AP = mkiAP "such" ; --	AP	1069	such	così	så	eine solche	tak, samo
lin sugar_1070_CNM = mkiCNM "sugar" ; --	CNM	1070	sugar	zucchero	socker	der Zucker	sladkor
-- DERIVED 1071 Weekday Sunday domenica söndag der Sonntag nedelja 
lin sunglasses_1072_CNPL = mkiCNPL "sunglass" ; --	CNPL	1072	sunglasses	occhiali da sole	solglasögon	die Sonnenbrille	sončna očala
lin sunny_1073_AP = mkiAP "sunny" ; --	AP	1073	sunny	soleggiato	solig	sonnig	sončen
lin sure_1074_AP = mkiAP "sure" ; --	AP	1074	sure	certo	säker	sicher	prepričan
lin surprise_1075_CN = mkiCN "surprise" ; --	CN	1075	surprise	sorpresa	överraskning	die Überraschung	presenečenje
lin sweat_shirt_1076_CN = mkiCN "sweat shirt" ; --	CN	1076	sweat shirt	maglia a maniche lunghe	långärmad tröja	der Pullover	majica
lin candy_sweet_1077_CN = mkiCN "candy" | mkiCN "sweet" ; --	CN	1077	candy,sweet	caramella	godis	süß*	sladek
lin sweet_1078_AP = mkiAP "sweet" ; --	AP	1078	sweet	dolce	söt 	süss	sladkarija
lin sweet_potato_1079_CNM = mkiCNM "sweet potato" ; --	CNM	1079	sweet potato	patata doce	sötpotatis	Süßkartoffel	sladki krompir
lin swimming_pool_1080_CNP = mkiCNP "swimming pool" ; --	CNP	1080	swimming pool	piscina	bassäng	das Schwimmbad	bazen
lin swim_1081_V = I.swim_V ; --	V	1081	swim	nuotare	simma	schwimmen	plavati
lin switch_off_1082_V2 = mkiV2p "switch" "off" ; --	V2	1082	switch off	spegnere	stänga av	ausschalten	odklopiti
lin off_1083_Adv = mkiAdv "off" ; --	Adv	1083	off	spento	avstängd	abschalten	ugasniti …
lin table_1084_CN = mkiCN "table" ; --- tavola --	CN	1084	table	tavola	bord	der Tisch	miza
lin table_1085_CN = mkiCN "table" ; --- tavolo --	CN	1085	table	tavolo	bord	die Tabelle	tabela
lin take_a_nap_1086_VP = mkVP (mkV2 I.take_V) (mkNP a_Det (mkN "nap")) ; --	VP	1086	take a nap	fare un sonnellino	ta en tupplur	ein Nickerchen	zadremati
lin take_1087_V2 = mkV2 I.take_V ; --	V2	1087	take another table	prendere un'altra tabella	hämta en annan karta	nehmen Sie einen anderen Tisch	uporabi drugo tabelo
-- DERIVED 1087 VP take another table prendere un'altra tabella hämta en annan karta nehmen Sie einen anderen Tisch uporabi drugo tabelo 
lin take_away_1088_V2 = mkV2 (partV I.take_V "away") ; --	V2	1088	take away	da asporto	take away	wegbringen	odvzeti
lin take_off_1089_V2 = mkV2 (partV I.take_V "off") ; --- togliere, ta av --	V2	1089	take cap off	togliere il tappo	ta av sig mössan	nehmen Kappe ab	odstranite pokrov
-- DERIVED 1089 VP take cap off togliere il tappo ta av sig mössan nehmen Kappe ab odstranite pokrov 
lin take_care_of_1090_V2 = mkV2 (partV I.take_V "care") (mkPrep "of") ; --	V2	1090	take  care of	prendersi cura di	sköta om	schonen	skrbeti za
-- DERIVED 1091 VP take cover off togliere la coperta ta av täcket In Deckung ab odstraniti pokrovček 
-- DERIVED 1092 VP take off the hat togliersi il cappello ta av hatten nehmen Sie den Hut ab sneti klobuk 
-- DERIVED 1093 VP take off the trousers levare i pantaloni ta av byxorna di Hoe ausziehen sleči hlače 
-- DERIVED 1094 VP take plug off togliere la spina dra ur kontakten nehmen ausstecken odstraniti zamašek 
-- DERIVED 1095 VP take the dog for a walk portare il cane a fare un giro rasta hunden nehmen Sie den Hund für einen Spaziergang vzeti psa na sprehod 
-- DERIVED 1096 VP take the toilet paper prendere la carta igienica ta toalettpapper nehmen Sie die WC-Papier vzeti toaletni papir 
-- DERIVED 1097 VP take trash out portare fuori l'immondizia ta ut soporna nehmen Sie Müll aus vrži smeti 
-- DERIVED 1098 VP take weed off togliere la gramigna rensa ogräs nehmen Unkraut aus odstraniti plevel 
lin talcum_powder_1099_CNM = mkiCNM "talcum powder" ; --	CNM	1099	talcum powder	borotalco	talkpuder	der Talkumpuder	smukec, talk
lin talent_1100_CNH = mkiCNH "talent" ; --	CNH	1100	talent	talento	talang		Talent		talent
lin talent_1100_CNM = mkiCNM "talent" ; --	CNM	1100	talent	talento	talang		Talent		talent
lin taxi_1101_CNP = mkiCNP "taxi" ; --	CNP	1101	taxi	tassì	taxi		Taxi		taksi
lin teacher_1102_CNH = mkiCNH "teacher" ; --- elementary school --	CNH	1102	teacher	insegnante di sostegno	pedagog		učitelj
lin teacher_1103_CNH = mkiCNH "teacher" ; --- secondary school --	CNH	1103	teacher	maestra	lärare	Lehrer	pedagog
lin team_1104_CNH = mkiCNH "team" ; --	CNH	1104	team	squadra	lag	Lehrer	skupina
lin tea_set_1105_CN = mkiCN "tea set" ; --	CN	1105	tea set	set da tè	teservis	das Teeservice	set za čaj, pribor za čaj
lin tea_1106_CNM = mkiCNM "tea" ; --	CNM	1106	tea	tè	te	der Tee	čaj
lin telephone_1107_CN = mkiCN "telephone" | mkiCN "phone" ; --	CN	1107	telephone	telefono	telefon	das Telefon	telefon
lin television_guide_1108_CN = mkiCN "television guide" | mkiCN "TV guide" ; --	CN	1108	television guide	guida tv	TV-programtabell	Fernseher Guide	televizijski program
lin television_1109_CN = mkiCN "television" | mkiCN "TV" ; --	CN	1109	television	TV	TV	das Fernsehen	televizija
lin tell_story_1110_VP det = mkVP (mkV2 I.tell_V) (mkNP det (mkN "story")) ; --	Det -> VP	1110	tell a story	raccontare una storia	berätta en historia	eine Geschichte erzählen	pripovedovati zgodbo
lin tell_1111_V = I.tell_V ; --	V	1111	tell	raccontare	berätta	erzählen	povedati, reči
lin tell_1111_V2 = mkV2 I.tell_V ; --	V2	1111	tell	raccontare	berätta	erzählen	povedati, reči
lin tell_1111_V3 = mkV3 I.tell_V noPrep to_Prep ; --	V3	1111	tell	raccontare	berätta	erzählen	povedati, reči
lin television_news_1112_NP = mkiNP "television news" ; --	NP	1112	television news	telegiornale	TV-nyheter	die Television News	televizijske novice
lin temperature_1113_CN = mkiCN "temperature" ; --	CN	1113	temperature	temperatura	temperatur	die Temperatur	temperatura
-- DERIVED 1114 Numeral ten dieci tio zehn deset 
lin tennis_game_1115_CN = mkiCN "tennis game" ; --	CN	1115	tennis game	partita di tennis	tennismatch	das Tennisspiel	teniška igra
lin tennis_1116_CNM = mkiCNM "tennis" ; --	CNM	1116	tennis	tennis	tennis	das Tennis	tenis
lin text_1117_CN = mkiCN "text" ; --	CN	1117	text	testo	text	der Text	besedilo
lin thank_1118_V2 = mkiV2 "thank" ; --	V2	1118	thank	ringraziare	tacka	danken	zahvaliti
lin thank_you_1119_Interj = mkiInterj "thank you" ; --	Interj	1119	thank you	grazie	tack 	das Dankeschön	hvala
-- DERIVED lin that_1120_Det = mkiDet "that" ; 
lin theater_1121_CNP = mkiCNP "theater" | mkiCNP "theatre" "at" ; --	CNP	1121	theater	teatro	teater	das Theater	gledališče
lin there_1122_AdvP = mkiAdvP "there" ; --	AdvP	1122	there	là	där	dort	tam
-- DERIVED 1123 Utt there's something c'è qualcosa där är något da ist etwas je nekaj 
lin the_same_identical_1124_AP = mkiAP "same" | mkiAP "identical" ; --	AP	1124	the same / identical	identico	lika	dasselbe / gleich	enak/istoveten
-- DERIVED 1125 Pron they loro de sie oni 
lin thin_1126_AP = mkiAP "thin" ; --	AP	1126	thin	magro	mager	dünn	tanek
-- DERIVED 1127 Ord third terzo tredje dritte tretji 
lin thirst_1128_CNM = mkiCNM "thirst" ; --	CNM	1128	thirst	sete	törst	der Durst	žeja
lin this_month_1129_AdvT = mkiAdvT "this month" ; --	AdvT	1129	this month	questo mese	den här månaden	diesen Monat	ta mesec
-- DERIVED lin this_1130_Det = mkiDet "this" ; 
lin throw_away_1131_V2 = mkV2 (partV I.throw_V "away") ; --	V2	1131	throw away	buttare via	slänga	wegschmeißen	vrži stran
lin throw_out_1132_V2 = mkV2 (partV I.throw_V "out") ; --	V2	1132	throw out	sbattere fuori	slå ut	hinauswerfen	vreči  ven
lin throw_the_dice_1133_VP = mkVP (mkV2 I.throw_V) (mkNP the_Det (mkN "dice")) ; --	VP	1133	throw the dice	tirare i dadi	kasta tärning	den Würfel werfen	metati kocko
lin throw_up_1134_V = partV I.throw_V "up" ; --	V	1134	throw up	vomitare	kräkas	sich übergeben	bruhati
lin throw_up_1134_V2 = mkV2 (partV I.throw_V "up") ; --	V2	1134	throw up	vomitare	kräkas	sich übergeben	bruhati
lin thumb_1135_CN = mkiCN "thumb" ; --	CN	1135	thumb	pollice	tumme	der Daumen	palec
-- DERIVED 1136 Weekday Thursday giovedì torsdag der Donnestag četrtek 
lin ticket_1137_CN = mkiCN "ticket" ; --	CN	1137	ticket	biglietto	biljett	die Fahrkarte	vstopnica
lin tidy_up_1138_V = partV (mkV "tidy") "up" ; --- ordinare --	V	1138	tidy up	mettere in ordine	städa	aufräumen	počistiti
lin tidy_up_1138_V2 = mkiV2p "tidy" "up" ; --	V2	1138	tidy up	mettere in ordine	städa	aufräumen	počistiti
-- DUPLICATEMAYBE lin tidy_up_1139_V = partV (mkV "tidy") "up" ; --- mettere in ordine -- V
-- DUPLICATEMAYBE lin tidy_up_1139_V2 = mkiV2p "tidy" "up" ; -- V2
lin tie_1140_V2 = mkiV2 "tie" ; --	V2	1140	tie	annodare	knyta	die Krawatte*	kravata
lin tie_1141_CN = mkiCN "tie" ; --	CN	1141	tie	cravatta	slips	binden*	zvezati
lin time_1142_CNM = mkiCNM "time" ; --- tempo, tid --	CNM	1142	time	tempo	tid	die Zeit	čas
lin tin_can_masher_1143_CN = mkiCN "tin can masher" ; --- burkåtervinning --	CN	1143	tin can masher	schiaccia lattine	burkåtervinning	Blechdose Stampfer	odpirač za konzerve
lin tender_chicken_1144_CNM = mkCN (mkA "tender") (mkN "chicken") ; --	CNM	1144	tender chicken	pollo tenero	kyckklingdelar	zartes Hühnchen	ponudba piščančjega mesa
lin on_the_back_1145_Adv = S.mkAdv on_Prep (mkNP the_Det (mkN "back")) ; --	Adv	1145	be lying down on the back	essere sdraiati sulla schiena	ligga på rygg	auf dem Rücken liegen	ležati na hrbtu
-- DERIVED 1145 VP be lying down on the back essere sdraiati sulla schiena ligga på rygg auf dem Rücken liegen ležati na hrbtu
lin on_the_side_1146_Adv = S.mkAdv on_Prep (mkNP the_Det (mkN "side")) ; --	Adv	1146	be lying down on the side	essere sdraiati sul fianco	ligga på sidan	auf der Seite nach unten liegen	ležati na strani
-- DERIVED 1146 VP be lying down on the side essere sdraiati sul fianco ligga på sidan auf der Seite nach unten liegen ležati na strani 
lin celebrate_1147_V = mkiV "celebrate" ; --	V	1147	celebrate	festeggiare	fira	feiern	praznovati, slaviti
lin celebrate_1147_V2 = mkiV2 "celebrate" ; --	V2	1147	celebrate	festeggiare	fira	feiern	praznovati, slaviti
-- DUPLICATE 1148 V2 V drive guidare köra fahren voziti DUPLICATE 0310 
lin toe_nail_1149_CN = mkiCN "toe nail" ; --	CN	1149	toe nail	unghia del piede	tånagel	die Fussnägel	nohti na nožnih prstih
lin fix_1150_V2 = mkiV2 "fix" ; --	V2	1150	fix	fissare	sätta fast	reparieren	popraviti
lin float_1151_V = mkiV "float" ; --	V	1151	float	galleggiare	flyta	schweben	plavati , pluti
lin gamble_1152_V = mkiV "gamble" ; --	V	1152	gamble	giocare d'azzardo	spela (om pengar) 	um Geld spielen	hazardirati
lin hurt_1153_V = I.hurt_V ; --	V	1153	hurt	ferire	göra ont	verletzen	raniti, poškodovati
lin hurt_1153_V2 = mkV2 I.hurt_V ; --	V2	1153	hurt	ferire	göra ont	verletzen	raniti, poškodovati
lin toilet_1154_CNP = mkiCNP "toilet" ; --- gabinetto --	CNP	1154	toilet	gabinetto	toalett	die Toilette	wc
lin toilet_paper_1155_CNM = mkiCNM "toilet paper" ; --	CNM	1155	toilet paper	carta igienica	toalettpapper	das Klopapier	toaletni papir
lin toilet_1156_CNP = mkiCNP "toilet" ; --- toilette --	CNP	1156	toilet	toilette	toalett	das WC	umivalnica s straniščem
lin look_1157_V = mkV "look" ; --	V	1157	to look	guardare	titta	sehen	pogledati
lin look_1157_V2 = mkV2 (mkV "look") (mkPrep "at") ; --	V2	1157	to look	guardare	titta	sehen	pogledati
lin look_1157_VA = mkVA (mkV "look") ; --	VA	1157	to look	guardare	titta	sehen	pogledati
lin tomato_in_box_1158_CNM = mkCN (mkN "tomato") (S.mkAdv in_Prep (mkNP (mkN "box"))) ; --	CNM	1158	tomato in box	pomodoro in scatola	konserverade tomater	Tomaten im Kasten	paradižnik v zaboju
lin tomato_juice_1159_CNM = mkiCNM "tomato juice" ; --	CNM	1159	tomato juice	succo di pomodoro	tomatjuice	die Tomatensaft	sok od paradižnika
lin tomato_1160_CN = mkiCN "tomato" ; --	CN	1160	tomato	pomodoro	tomat	die Tomate	paradižnik 
lin tomato_sauce_1161_CNM = mkiCNM "tomato sauce" ; --	CNM	1161	tomato sauce	passata di pomodoro	passerade tomater	die Tomatensosse	paradižnikova omaka
-- DUPLICATEMAYBE lin tongue_1162_CN = mkiCN "tongue" ; -- CN
lin too_big_1163_AP = mkAP too_AdA (mkA "big") ; --	AP	1163	too big	troppo grande	för stor	viel zu gross	prevelik
lin too_expensive_1164_AP = mkAP too_AdA (mkA "expensive") ; --	AP	1164	too expensive	troppo caro	för dyr	zu teuer	predrag
lin too_small_1165_AP = mkAP too_AdA (mkA "small") ; --	AP	1165	too small	troppo piccolo	för liten	zu klein	premajhen
lin tooth_1166_CN = mkCN (mkN "tooth" "teeth") ; --	CN	1166	tooth	dente	tand	der Zahn	zob
lin toothpaste_1167_CNM = mkiCNM "toothpaste" ; --	CNM	1167	toothpaste	dentifricio	tandkräm	die Zahnkreme	zobna pasta
lin register_1168_V = mkiV "register" ; --	V	1168	register	registrarsi	registrera sig	registrieren	registrirati
lin stop_1169_V = mkiV "stop" ; --	V	1169	stop	fermare	stanna	anhalten	ustaviti
lin stop_1169_V2 = mkiV2 "stop" ; --	V2	1169	stop	fermare	stanna	anhalten	ustaviti
-- DUPLICATE 1170 V V2 stop fermare stanna anhalten prekiniti DUPLICATE 1169
lin swear_1171_V = I.swear_V ; --	V	1171	swear	giurare	svära	fluchen	priseči
lin turn_round_1172_V = partV (mkV "turn") "round" ; --	V	1172	turn round	girarsi	snurra runt	umdrehen	obrni se
lin turn_1173_V = mkiV "turn" ; --	V	1173	turn	girare	snurra	In den Kurven	da se obrne
lin tour_1174_CN = mkiCN "tour" ; --	CN	1174	tour	giro	runda	die Tour	izlet
lin tourist_1175_CNH = mkiCNH "tourist" ; --	CNH	1175	tourist	turista	turist	der Tourist	turist
lin watch_1176_V2 = mkV2 "watch" ; --	V2	1176	watch television	guardare la televisione	se på TV	fernsehen	gledati televizijo
lin whip_1177_V2 = mkiV2 "whip" ; --	V2	1177	whip	frullare	mixa	Peitsche	bičati
lin town_1178_CNP = mkiCNP "town" ; --	CNP	1178	town	città	stad	die Stadt	mesto
lin traffic_lights_1179_CN = mkiCN "traffic lights" ; --	CN	1179	traffic lights	semaforo	trafikljus	die Ampeln	semafor
lin trainer_1180_CNH = mkiCNH "trainer" ; --	CNH	1180	trainer	allenatore	tränare	der Trainer	trener
lin train_1181_CNP = mkiCNP "train" ; --	CNP	1181	train	treno	tåg	trainieren	vlak
-- DUPLICATE 1182 CNP train treno tåg der Zug trenirati DUPLICATE 1181 
lin trash_bag_1183_CN = mkiCN "trash bag" ; --	CN	1183	trash bag	sacco della spazzatura	soppåse	die Mülltüte	vreča za smeti
lin trash_can_1184_CN = mkiCN "trash can" ; --	CN	1184	trash can	bidone dell'immondizia	soptunna	der Abfalleimer	smetnjak
lin treat_bag_1185_CN = mkiCN "treat bag" ; --	CN	1185	treat bag	dolciumi	godispåse	die Tasche	torba za sladkarije
lin tree_1186_CN = mkiCN "tree" ; --	CN	1186	tree	albero	träd	der Baum	drevo
lin travel_1187_V = mkiV "travel" ; --	V	1187	travel	viaggiare	resa	die Reise	izlet
lin trip_1188_CN = mkiCN "trip" ; --	CN	1188	trip	viaggio	resa	die Fahrt	kratko potovanje
lin true_1189_AP = mkiAP "true" ; --	AP	1189	true	vero	sann	wahr	resničen
lin try_1190_V2 = mkV2 "try" ; --	V2	1190	try another page	prova un'altra pagina	försök med en annan sida	eine andere Seite versuchen	poskusite na drugi strani
-- DERIVED 1190 VP try another page prova un'altra pagina försök med en annan sida eine andere Seite versuchen poskusite na drugi strani 
-- DERIVED 1191 Weekday Tuesday martedì tisdag der Dienstag torek 
lin tuna_fish_1192_CNM = mkiCNM "tuna fish" | mkiCNM "tuna" ; --	CNM	1192	tuna fish	tonno in scatola	tonfisk på burk	der Thunfisch	tunina
-- DERIVED 1193 VP turn blanket on mettere la coperta lägga på filten drehen Decke auf daj odejo čez 
-- DERIVED 1194 VP turn off the tap chiudere il rubinetto stänga kranen abschalten ugasniti … 
-- DERIVED 1195 VP turn off small tin chiudere il barattolo stänga burken kleine Dose abdrehen zapreti malo pločevinko 
-- DERIVED 1196 VP turn on aprire il rubinetto öppna kranen anmachen prižgati 
-- DERIVED 1197 VP turn on can aprire il barattolo öppna burken die Dose andrehen odpreti pločevinko 
-- DERIVED 1198 Utt turns for me gira per me det är min tur stellt sich für mich obrnejo zame 
-- DERIVED 1199 Imp turn the page gira la pagina bläddra dreht die Seite obrnejo stran 
lin turn_1200_CN = mkiCN "turn" ; --	CN	1200	turn	svolto	vändning	die Wende	obrniti
-- DERIVED 1201 VP turn the temperature down abbassare la temperatura sänka värmen drehen Temperatur nach unten zmanjšaj temperaturo 
-- DERIVED 1202 VP turn the temperature up alzare la temperatura höja värmen drehen Temperatur bis povišaj temperaturo 
-- DERIVED 1203 VP turn the page cambiare pagina vända blad umblättern obrni stran 
-- DUPLICATEMAYBE lin turn_1204_V = mkiV "turn" ; -- V
-- DUPLICATEMAYBE lin turn_1204_V2 = mkiV2 "turn" ; -- V2
lin turn_off_1205_V2 = mkiV2p "turn" "off" ; --	V2	1205	turn the TV off	spegni la tv	stänga av TV:n	der Fernseher ausschalten	ugasni televizor
-- DERIVED 1205 VP turn the TV off spegni la tv stänga av TV:n der Fernseher ausschalten ugasni televizor 
lin turn_on_1206_V2 = mkiV2p "turn" "on" ; --	V2	1206	turn the TV on	accendi la tv	sätta på TV:n	der Fernseher einschalten	prižgi televizor
-- DERIVED 1206 VP turn the TV on accendi la tv sätta på TV:n der Fernseher einschalten prižgi televizor 
lin TV_1207_CN = mkiCN "TV" ; --	CN	1207	TV	televisione	TV	der Fernseher	TV/ televizor
lin ugh_1208_Interj = mkiInterj "ugh" ; --	Interj	1208	ugh	uffa	usch	pfui	uf
lin ugly_1209_AP = mkiAP "ugly" ; --	AP	1209	ugly	brutto	ful	hässlich	grd
lin ugly_show_1210_CN = mkCN (mkA "ugly") (mkN "show") ; --	CN	1210	ugly show	brutto spettacolo	dåligt program	hässliche Show	umazana predstava/slaba predstava
lin umbrella_1211_CN = mkiCN "umbrella" ; --	CN	1211	umbrella	ombrella	paraply	der Regenschirm	dežnik
lin undershirt_1212_CN = mkiCN "undershirt" ; --	CN	1212	undershirt	canottiera	undertröja	das Unterhemd	spodnja majica
lin under_1213_PrepP = under_Prep ; --	PrepP	1213	under	sotto	under	unter	spodaj
lin understand_1214_V = I.understand_V ; --	V	1214	understand	capire	förstå	verstehen	razumeti
lin understand_1214_V2 = mkV2 I.understand_V ; --	V2	1214	understand	capire	förstå	verstehen	razumeti
lin underwear_1215_CNM = mkiCN "underwear" ; --	CNM	1215	underwear	biancheria	underkläder	die Unterwäsche	spodnje perilo
lin unemployed_1216_AP = mkiAP "unemployed" ; --	AP	1216	unemployed	disoccupato	arbetslös	arbeitslos	nezaposlen
lin united_1217_AP = mkiAP "united" ; --	AP	1217	united	unito	förenad	vereinigt	združen
lin university_1218_CNP = mkiCNP "university" "at" ; --	CNP	1218	university	università	universitet	die Universität	univerza/fakulteta
lin unpleasant_1219_AP = mkiAP "unpleasant" ; --	AP	1219	unpleasant	antipatico	obehaglig	unangenehm	neprijeten
lin until_1220_PrepT = mkiPrepT "until" ; --	PrepT	1220	until	fino	tills	bis	dokler
lin present_1221_CN = mkiCN "present" ; --	CN	1221	unwrap a present	scartare un regalo	öppna en present	ein Geschenk auspacken	odvij darilo
-- DERIVED 1221 VP unwrap a present scartare un regalo öppna en present ein Geschenk auspacken odvij darilo 
lin use_1222_V2 = mkiV2 "use" ; --	V2	1222	use	usare	använda	benutzen	uporabi
lin wagon_1223_CN = mkiCN "wagon" ; --	CN	1223	wagon	vagone	vagn	der Wagen	vagon
-- DERIVED 1224 Imp wait a minute aspetta un attimo vänta lite warte eine Minute počakaj minuto 
lin wait_1225_V = mkiV "wait" ; --	V	1225	wait	aspettare	vänta	warte ab	počakaj minuto
lin wait_1225_V2 = mkV2 (mkV "wait") for_Prep ; --	V2	1225	wait	aspettare	vänta	warte ab	počakaj minuto
lin wallet_1226_CN = mkiCN "wallet" ; --	CN	1226	wallet	portafoglio	plånbok	die Brieftasche	denarnica
lin wall_1227_CN = mkiCN "wall" ; --- muro --	CN	1227	wall	muro	vägg	die Wand	stena
lin wall_1228_CN = mkiCN "wall" ; --- parete --	CN	1228	wall	parete	vägg	die Mauer	zid
-- DERIVED 1229 Cl I want to be alone voglio restare solo jag vill vara ifred will allein sein želim biti sam 
---lin want_1230_V = mkiV "want" ; --	V	1230	want	volere	vilja	wollen	hočem
lin want_1230_V2 = mkiV2 "want" ; --	V2	1230	want	volere	vilja	wollen	hočem
lin want_1230_VV = mkiVV "want" ; --	VV	1230	want	volere	vilja	wollen	hočem
lin wash_dishes_1231_VP = mkVP (mkV2 "wash") (mkNP aPl_Det (mkN "dish")) ; --	VP	1231	wash dishes	lavare i piatti	diska	das Geschirr spülen	pomiti posodo
lin wash_ones_hands_1232_VP = reflPossPlVP (mkV2 "wash") (mkN "hand") ; --	VP	1232	wash hands	lavare le mani	tvätta händerna	die Hände waschen	umiti roke
lin wash_hands_1232_VP pron = mkVP (mkV2 "wash") (mkNP (S.mkQuant pron) pluralNum (mkN "hand")) ; --	Pron -> VP	1232	wash hands	lavare le mani	tvätta händerna	die Hände waschen	umiti roke
lin washing_line_1233_CN = mkiCN "washing line" ; --	CN	1233	washing line	filo per stendere	tvättlina	die Wäscheleine	vrv za obešanje perila
lin washing_machine_1234_CN = mkiCN "washing machine" ; --	CN	1234	washing machine	lavatrice	tvättmaskin	die Waschmaschine	pralni stoj
lin wash_1235_V = mkiV "wash" ; --	V	1235	wash	lavare	tvätta sig	waschen	umivati
lin wash_1235_V2 = mkiV2 "wash" ; --	V2	1235	wash	lavare	tvätta sig	waschen	umivati
-- DERIVED 1236 VP wash windows lavare le finestre tvätta fönster Wasch Fenster umiti okna 
lin watch_1237_CN = mkiCN "watch" ; --	CN	1237	watch	orologio	klocka	beobachten	ura
-- DERIVED 1238 VP watch TV se på TV die Uhr gledati 
lin water_1239_CNM = mkiCNM "water" ; --	CNM	1239	water	acqua	vatten	das Wasser	voda
lin flowing_1240_CNM = mkiCNM "flowing water" ; --	CNM	1240	flowing	water	scorrere dell'acqua	rinnande vatten	Wasser fließt	tekoča voda
lin watering_can_1241_CN = mkiCN "watering can" ; --	CN	1241	watering can	annaffiatoio	vattenkanna	die Giesskanne	posoda za zalivanje
lin way_1242_CN = mkiCN "way" ; --	CN	1242	way	tragitto	resväg	der Weg	pot
lin weak_1243_AP = mkiAP "weak" ; --	AP	1243	weak	debole	svag	schwach	slabotno
lin veal_1244_CNM = mkiCNM "veal" ; --	CNM	1244	veal	vitello	kalv	das Kalbfleisch	teletina
-- DERIVED 1245 Weekday Wednesday mercoledì onsdag der Mittwoch sreda 
lin week_1246_CN = mkiCN "week" ; --	CN	1246	week	settimana	vecka	die Woche	teden
lin vegetable_garden_1247_CNP = mkiCNP "vegetable garden" ; --	CNP	1247	vegetable garden	orto	grönsaksland	der Gemüsegarten	zelenjavni vrt
lin vegetable_1248_CN = mkiCN "vegetable" ; --- ortaggio --	CN	1248	vegetable	ortaggio	grönsak	die Gemüse	zelenjava
-- DUPLICATEMAYBE lin vegetable_1249_CN = mkiCN "vegetable" ; --- verdura -- CN
lin vegetarian_1250_CN = mkiCN "vegetarian" ; --	CN	1250	vegetarian	vegetariano	vegetarian	der Vegetarier	vegetarijanec
lin well_done_1251_Utt = mkiUtt ( "well done") ; --	Utt	1251	well done	buon lavoro	bra jobbat	gut gemacht	dobro narejeno
-- DERIVED 1252 Pron we noi vi wir mi 
lin veterinary_1253_CNH = mkiCNH "veterinary" ; --	CNH	1253	veterinary	veterinario	veterinär	tierärztlich 	veterinar
lin wet_pants_1254_CNPL = mkiCNPL "wet pant" ; --	CNPL	1254	wet pants	pantaloni bagnati	blöta byxor	nasse Hose	mokre hlače
-- DERIVED 1255 IP what che cosa vad Was kaj 
-- DERIVED 1256 QCl what color game piece? che colore vuoi? vilken färg vill du ha? welche Farbe Spielfigur ? kakšne barve je igralna figura 
-- DERIVED 1257 QCl what do you prefer? cosa preferisci? vad föredrar du? Was bevorzugen Sie? kaj imaš rajši? 
-- DERIVED 1258 QCl what's have you been up to? cosa ti è successo? vad har hänt? Wie läuft es bei dir so? kaj nameravaš? 
-- DERIVED 1259 QCl what's your name? come ti chiami? vad heter du? Wie heisst du? kako vam je ime? 
-- DERIVED 1260 QCl what TV show do you want to watch? quale programma vuoi guardare? vilket program vill du se? Welche Show möchtest u schauen? katero oddajo želite gledati? 
-- DERIVED 1261 IAdv when quando när wann kdaj 
-- DERIVED 1262 IAdv where dove var wo kje 
-- DERIVED 1263 QCl where is dov'è var är wo ist kje je
lin first_1264_Adv = P.mkAdv "first" ; --	Adv	1264	who goes first?	chi comincia?	vem börjar?	wer geht zuerst?	kdo bo prvi?
-- DERIVED 1264 QCl who goes first? chi comincia? vem börjar? wer geht zuerst? kdo bo prvi? 
-- DERIVED 1265 QCl who goes first? chi va per primo? vem är först? wer geht zuerst? Kdo gre prvi? 
-- DERIVED 1266 QCl who am I? chi sono? vem är jag? Wer bin ich? Kdo sem jaz? 
lin window_1267_CN = mkiCN "window" ; --	CN	1267	window	finestra	fönster	das Fenster	okno
lin windy_and_stormy_1268_AP = mkAP S.and_Conj (mkAP (mkA "windy")) (mkAP (mkA "stormy")) ; --	AP	1268	windy and stormy	vento e pioggia	regn och blåst	windig und stürmisch	vetrovno in nevihtno
lin windy_1269_AP = mkiAP "windy" ; --	AP	1269	windy	ventoso	blåsigt	windig	vetrovno in nevihtno
lin wine_1270_CNM = mkiCNM "wine" ; --	CNM	1270	wine	vino	vin	der Wein	vino
-- DERIVED 1271 VP win the lottery vincere la lotteria vinna på lotteri im Lotto gewinnen zmagal na loteriji 
-- DERIVED 1272 VP wipe face lavare il viso tvätta ansiktet das Gesicht abwischen obristi obraz 
-- DERIVED 1273 VP wipe table strofinare il tavolo torka bordet den Tisch wischen obriati tablo 
lin visit_1274_V = mkiV "visit" ; --	V	1274	visit	visitare	besöka	der Besuch	obiskati
lin visit_1274_V2 = mkiV2 "visit" ; --	V2	1274	visit	visitare	besöka	der Besuch	obiskati
-- DERIVED lin with_1275_Prep = mkiPrep "with" ; 
lin without_1276_Prep = mkiPrep "without" ; --	Prep	1276	without	senza	utan	ohne	brez
lin volume_down_1277_Utt = mkiUtt ( "volume down") ; --	Utt	1277	volume down	abbassa il volume	sänka volymen	Lautstärke runter	utišati zvok
lin volume_up_1278_Utt = mkiUtt ( "volume up") ; --	Utt	1278	volume up	alza il volume	höja volymen	Lauter	povečati zvok
lin woman_1279_CNH = mkCN (mkN "woman" "women") ; --	CNH	1279	woman	donna	kvinna	die Frau	ženska
lin wood_1280_CNM = mkiCNM "wood" ; --	CNM	1280	wood	asse di legno	bräda	das Holz	les
lin wool_hat_1281_CN = mkiCN "wool hat" ; --	CN	1281	wool hat	cappello di lana	yllemössa	Wollmütze	volnena kapa
lin word_1282_CN = mkiCN "word" ; --	CN	1282	word	parola	ord	das Wort	beseda
lin vote_1283_CN = mkiCN "vote" ; --	CN	1283	vote	voto	röst	wählen	voliti
-- DERIVED 1284 VV* would not non potere inte kunna würde nicht ne bi 
lin wrist_1285_CN = mkiCN "wrist" ; --	CN	1285	wrist	polso	handled	das Handgelenk	zapestje
-- DERIVED 1286 VP write a letter scrivere una lettera skriva ett brev einen Brief schreiben napiati pismo 
lin write_1287_V = I.write_V ; --	V	1287	write	scrivere	skriva	schreiben	pisati
lin write_1287_V2 = mkV2 I.write_V ; --	V2	1287	write	scrivere	skriva	schreiben	pisati
-- DERIVED 1288 VP write this scrivere questo skriv det här schreibe dies napisati to 
lin wrong_1289_AP = mkiAP "wrong" ; --	AP	1289	wrong	sbagliato	fel	FALSE	narobe
lin yard_work_1290_CNM = mkiCNM "yard work" ; --	CNM	1290	yard work	attrezzi da giardino	trädgårdsredskap	die Gartenarbeit	delo na dvorišču
lin year_1291_CN = mkiCN "year" ; --	CN	1291	year	anno	år	das Jahr	leto
lin yellow_1292_AP = mkiAP "yellow" ; --	AP	1292	yellow	giallo	gul	gelb	rumena
lin yes_1293_Interj = mkiInterj "yes" ; --	Interj	1293	yes	si	ja	ja	da
-- DUPLICATE lin yes_1294_Interj = mkiInterj "yes" ; -- Interj
-- DERIVED 1295 Cl you are close sei vicino du är nära du bist nah dran blizu ste 
-- DERIVED 1296 Cl you are getting close ti stai avvicinando du kommer närmare Sie sind immer in der Nähe približujete se 
-- DERIVED 1297 Cl you are right hai ragione du har rätt Du hast recht prav imate 
-- DERIVED 1298 Cl you are way off sei lontano du är långt ifrån Sie sind weg ste daleč od
lin misunderstand_1299_V = mkV "misunderstand" "misunderstood" "misunderstood" ; --	V	1299	you have misunderstood	hai frainteso	du har missförstått	Sie haben missverstanden	narobe ste razumeli
-- DERIVED 1299 Cl you have misunderstood hai frainteso du har missförstått Sie haben missverstanden narobe ste razumeli 
lin young_1300_AP = mkiAP "young" ; --	AP	1300	young	giovane	ung	jung	mlad
lin young_man_1301_CNH = mkCN (mkA "young") (mkN "man" "men") ; --	CNH	1301	young man	giovane uomo	ung man	ein junger Mann	mlad moški
lin young_woman_1302_CNH = mkCN (mkA "young") (mkN "woman" "women") ; --	CNH	1302	young woman	giovane donna	ung kvinna	eine junge Frau	mlada ženska
-- DERIVED 1303 Quant your tuo din dein,euer,Ihr tvoj/vaš 
lin your_turn_1304_Interj = mkiInterj "your turn" ; --	Interj	1304	your turn	tocca a te	det är din tur	Sie sind dran	na vrsti ste
-- DERIVED 1305 Pron you tu du Sie ti 
-- DERIVED 1306 Pron you voi ni du vi 
lin zucchino_1307_CN = mkCN (mkN "zucchino" "zucchini") | mkCN (mkN "zucchino" "zucchini") ; --	CN	1307	zucchino	zucchino	zucchino	der Zucchino	bučka
lin English_1308_AP = mkiAP "English" ; --	AP	1308	English		inglese		engelsk		Englisch	BATCH-1***
lin be_in_a_hurry_1309_VP = mkVP (S.mkAdv in_Prep (mkNP a_Det (mkN "hurry"))) ; --	VP	1309	I'm in a hurry	io ho fretta	jag har bråttom	ich bin in Eile	Se mi mudi
-- DERIVED 1310 Cl I'm not in a hurry non ho fretta jag har inte bråttom ich habe es nicht eilig se mi ne mudi
lin not_so_fast_1311_Utt = mkiUtt ( "not so fast") ; --	Utt	1311	not so fast	non tanto di corsa	inte så fort	nicht so schnell	ne tako hitro
lin slower_1312_Utt = mkiUtt ( "slower") ; --	Utt	1312	slower	non di corsa	långsammare	langsamer	počasneje
lin no_hurry_1313_Utt = mkiUtt ( "there's no hurry") ; --	Utt	1313	there's no hurry	non c'è fretta	det är ingen brådska	es besteht keine Eile	ne rabimo hiteti
lin airplane_1314_CNP = mkiCNP "airplane" ; --	CNP	1314	airplane	l'aereo	flygplan	das Flugzeug	letalo
-- DUPLICATE lin airport__1315_CNP = mkiCNP "airport " "at" ; -- CNP
lin apartment_building_1316_CNP = mkiCNP "apartment building" ; --	CNP	1316	apartment building	il condominio	hyreshus	das Wohngebäude	stanovanjska gradnja
lin bakery_1317_CNP = mkiCNP "bakery" ; --	CNP	1317	bakery	la pasticceria	bageri	die Bäckerei	pekarna
lin bank__1318_CNP = mkiCNP "bank" ; --	CNP	1318	bank 	la banca	bank 	die Bank	banka
lin bookstore_1319_CNP = mkiCNP "bookstore" ; --	CNP	1319	bookstore	la libreria	bokhandel	der Buchladen	knjigarna
-- DUPLICATEMAYBE lin building_1320_CNP = mkiCNP "building" ; -- CNP
-- DUPLICATEMAYBE lin bus_1321_CNP = mkiCNP "bus" ; -- CNP
lin butcher_shop_1322_CNP = mkiCNP "butcher's shop" ; --	CNP	1322	butcher shop	la macelleria	charkuteri	die Metzgerei	mesnica
lin café_1323_CNP = mkiCNP "café" ; --	CNP	1323	café	il bar	café	das Cafe	kafič, kafe bar
-- DUPLICATEMAYBE lin car_1324_CNP = mkiCNP "car" ; -- CNP
-- DUPLICATEMAYBE lin church_1325_CNP = mkiCNP "church" ; -- CNP
-- DUPLICATEMAYBE lin city_1326_CNP = mkiCNP "city" ; -- CNP
lin city_hall_1327_CNP = mkiCNP "city hall" ; --	CNP	1327	city hall	il municipio	stadshus	das Rathaus	mestna hiša
-- DUPLICATEMAYBE lin clothing_store_1328_CNP = mkiCNP "clothing store" ; -- CNP
lin coffee_shop_1329_CNP = mkiCNP "coffee shop" ; --	CNP	1329	coffee shop	il caffè	café	das Cafe	kavarna
-- DUPLICATEMAYBE lin department_store_1330_CNP = mkiCNP "department store" ; -- CNP
-- DUPLICATEMAYBE lin pharmacy_1331_CNP = mkiCNP "pharmacy" ; -- CNP
lin electronics_store_1332_CNP = mkiCNP "electronics store" ; --	CNP	1332	electronics store	il negozio di elettronica	electronikaffär	das Elektrogeschäft	trgovina elektronike
lin intersection_1333_CNP = mkiCNP "intersection" "at" ; --	CNP	1333	intersection	l'incrocio	korsning	due Überschneidung	križišče
lin lamppost_1334_CN = mkiCN "lamppost" ; --	CN	1334	lamppost	il lampione	gatlykta	der Laternenmast	ulična svetilka
-- DUPLICATEMAYBE lin library_1335_CNP = mkiCNP "library" ; -- CNP
lin market_1336_CNP = mkiCNP "market" "at" ; --	CNP	1336	market	il mercato	marknad	der Markt	trg
lin mayor_1337_CNH = mkiCNH "mayor" ; --	CNH	1337	mayor	il sindaco	borgmästare	der Bürgermeister	župan
lin mosque_1338_CNP = mkiCNP "mosque" ; --	CNP	1338	mosque	la moschea	moské	die Moschee	mošeja
-- DUPLICATEMAYBE lin park_1339_CNP = mkiCNP "park" ; -- CNP
-- DUPLICATEMAYBE lin restaurant_1340_CNP = mkiCNP "restaurant" ; -- CNP
-- DUPLICATEMAYBE lin shoe_store_1341_CNP = mkiCNP "shoe store" ; -- CNP
lin shopping_mall_1342_CNP = mkiCNP "shopping mall" "at" ; --	CNP	1342	shopping mall	il centro commerciale	shoppingcenter	das Einkaufszentrum	nakupovalno središče
-- DUPLICATEMAYBE lin sidewalk_1343_CNP = mkiCNP "sidewalk" "on" ; -- CNP
lin store_1344_CNP = mkiCNP "store" ; --	CNP	1344	store	il negozio	affär	das Geschäft	trgovina
-- DUPLICATEMAYBE lin street_1345_CNP = mkiCNP "street" ; -- CNP
lin streetlight_1346_CN = mkiCN "streetlight" ; --	CN	1346	streetlight	il semaforo	trafikljus	das Strassenlicht	ulična svetilka
lin suburban_1347_CN = mkiCN "suburban" ; --	CN	1347	suburban	periferico	kranskommun	das Vorstadtgebiet	primestni
lin subway_metro_1348_CNP = mkiCNP "subway" | mkiCNP "metro" | mkiCNP "underground" ; --	CNP	1348	subway/metro	il metro	T-bana	U-Bahn / U-Bahn	podzemna / metro
lin supermarket_1349_CNP = mkiCNP "supermarket" "at" ; --	CNP	1349	supermarket	il supermercato	storköp	der Supermarkt	supermarket
lin synagogue_1350_CNP = mkiCNP "synagogue" ; --	CNP	1350	synagogue	la sinagoga	synagoga	die Synagoge	sinagoga
-- DUPLICATEMAYBE lin taxi_1351_CNP = mkiCNP "taxi" ; -- CNP
lin temple_1352_CNP = mkiCNP "temple" ; --	CNP	1352	temple	il tempio	tempel	der Tempel	tempelj
-- DUPLICATE 1353 V2 buy comprare köpa kaufen kupiti DUPLICATE 0145 
lin go_shopping_1354_V = partV I.go_V "shopping" ; --	V	1354	to go shopping	fare le spese	handla	einkaufen gehen	iti po nakupih
-- DUPLICATEMAYBE lin town_1355_CNP = mkiCNP "town" "at" ; -- CNP
lin traffic_1356_CNP = mkiCNP "traffic" ; --	CNP	1356	traffic	il traffico	trafik	der Verkehr	promet
-- DUPLICATEMAYBE lin train_1357_CNP = mkiCNP "train" ; -- CNP
lin train_station_1358_CNP = mkiCNP "train station" "at" ; --	CNP	1358	train station	la stazione ferroviaria	tågstation	der Bahnhof	železniška postaja
lin village_1359_CNP = mkiCNP "village" ; --	CNP	1359	village	il paese	by	das Dorf	vas
-- DERIVED 1360 QCl what are you drinking? che cosa bevi? vad vill du ha att dricka? Was trinkst du? kaj piješ? 
-- DERIVED 1361 QCl who is that? chi è quello? vem är det? Wer ist das? kdo je to? 
-- DUPLICATE lin apartment_1362_CNP = mkiCNP "apartment" ; -- CNP
-- DUPLICATEMAYBE lin bathroom_1363_CNP = mkiCNP "bathroom" ; -- CNP
-- DUPLICATEMAYBE lin bedroom_1364_CNP = mkiCNP "bedroom" ; -- CNP
lin carpet_rug_1365_CN = mkiCN "carpet" | mkiCN "rug" ; --	CN	1365	carpet/rug	il tappeto	matta	der Teppich	preproga / preproga
lin CD_player_1366_CN = mkiCN "CD player" ; --	CN	1366	CD player	il lettore di CD	CD-spelare	der CD Player	CD predvajalnik
-- DUPLICATEMAYBE lin ceiling_1367_CN = mkiCN "ceiling" ; -- CN
-- DUPLICATEMAYBE lin chair_1368_CN = mkiCN "chair" ; -- CN
-- DUPLICATEMAYBE lin closet_1369_CNP = mkiCNP "closet" ; -- CNP
lin couch_1370_CN = mkiCN "couch" ; --	CN	1370	couch	il divano	soffa	die Couch	kavč
lin curtain_1371_CN = mkiCN "curtain" ; --	CN	1371	curtain	la tenda	gardin	der Vorhang	zavese
lin dining_room_1372_CNP = mkiCNP "dining room" ; --	CNP	1372	dining room	la sala da pranzo	matrum	das Esszimmer	jedilnica
lin door_1373_CN = mkiCN "door" ; --	CN	1373	door	la porta	dörr	die Tür	vrata
lin DVD_player_1374_CN = mkiCN "DVD player" ; --	CN	1374	DVD player	il lettore di DVD	DVD-spelare	der DVD Spieler	DVD predvajalnik
-- DUPLICATEMAYBE lin floor_1375_CNP = mkiCNP "floor" "on" ; -- CNP
lin hall_1376_CNP = mkiCNP "hall" ; --	CNP	1376	hall	l'ingresso	hall	die Halle	dvorana
-- DUPLICATEMAYBE lin house_1377_CNP = mkiCNP "house" ; -- CNP
-- DUPLICATEMAYBE lin kitchen_1378_CNP = mkiCNP "kitchen" ; -- CNP
-- DUPLICATEMAYBE lin lamp_1379_CN = mkiCN "lamp" ; -- CN
-- DUPLICATEMAYBE lin living_room_1380_CNP = mkiCNP "living room" ; -- CNP
lin painting_picture_1381_CN = mkiCN "picture" | mkiCN "picture" ; --	CN	1381	painting/picture	il quadro	tavla	die Malerei/das Bild	slika / slika
lin room_1382_CNP = mkiCNP "room" ; --	CNP	1382	room	la camera	rum	das Zimmer	soba
-- DUPLICATEMAYBE lin shelf_1383_CN = mkiCN "shelf" ; -- CN
-- DUPLICATEMAYBE lin sofa_1384_CN = mkiCN "sofa" ; -- CN
lin sound_system_1385_CN = mkiCN "sound system" ; --	CN	1385	sound system	lo stereo	stereo	das Lautsystem	ozvočenje
lin stairs_1386_CNP = mkiCNP "stairs" ; --	CNP	1386	stairs	la scala	trappor	die Treppe	stopnice
-- DUPLICATEMAYBE lin table_1387_CN = mkiCN "table" ; -- CN
-- DUPLICATEMAYBE lin television_1388_CN = mkiCN "television" ; -- CN
-- DUPLICATEMAYBE lin wall_1389_CN = mkiCN "wall" ; -- CN
-- DUPLICATEMAYBE lin carpet_1390_CN = mkiCN "carpet" ; -- CN
-- DUPLICATEMAYBE lin window_1391_CN = mkiCN "window" ; -- CN
-- DUPLICATEMAYBE lin wood_1392_CNM = mkiCNM "wood" ; -- CNM
lin wooden_1393_AP = mkiAP "wooden" ; --	AP	1393	wooden	di legno	av trä	hölzern	leseni
lin appetizer_1394_CN = mkiCN "appetizer" ; --	CN	1394	appetizers	antipasti	 aptitretare	die Vorspeisen	predjedi
lin main_course_1395_CN = mkiCN "main course" ; --	CN	1395	main course	il primo piatto	huvudrätt	die Hauptgänge	glavne jedi
lin dessert_1396_CN = mkiCN "dessert" ; --	CN	1396	dessert	il dolce	dessert	die Nachtische	sladice
-- DERIVED 1397 Cl I would like something to drink vorrei qualcosa da bere jag vill ha något att dricka ich hätte gerne etwas zu trinken rad bi nekaj spil(a) 
-- DERIVED 1398 Utt a bottle of water, please una bottiglia d'acqua, per favore en flaska vatten, tack eine Flasche Wasser, bitte steklenico vode, prosim 
-- DERIVED 1399 Utt a cup of tea, please una tazza di tè, per favore en kopp te, tack eine Tasse Tee bitte skodelico čaja, prosim 
lin coffee_with_milk_1400_NP = mkiNP "coffee with milk" ; --	NP	1400	coffee with milk	caffè latte	kaffe med mjölk	Kaffee mit Milch	kava z mlekom
lin beer_1401_CN = mkiCN "beer" ; --	CN	1401	beer	una birra	en öl	ein Bier	pivo
-- DERIVED 1402 QCl do you have vegetarian dishes? avete dei piatti vegetariani? har ni vegetarisk mat? Haben Sie vegetarische Geriche? Imate vegetarijanske jedi? 
-- DERIVED 1403 QCl where is the bathroom? dov'è la toilette? var är toaletten? Wo ist die Toilette? Kje je kopalnica? 
-- DUPLICATEMAYBE lin breakfast_1404_CN = mkiCN "breakfast" ; -- CN
-- DUPLICATEMAYBE lin lunch_1405_CN = mkiCN "lunch" ; -- CN
-- DUPLICATEMAYBE lin dinner_1406_CN = mkiCN "dinner" ; -- CN
-- DUPLICATEMAYBE lin plate_1407_CN = mkiCN "plate" ; -- CN
-- DUPLICATEMAYBE lin fork_1408_CN = mkiCN "fork" ; -- CN
-- DUPLICATEMAYBE lin knife_1409_CN = mkiCN "knife" ; -- CN
-- DUPLICATEMAYBE lin spoon_1410_CN = mkiCN "spoon" ; -- CN
lin chopstick_1411_CN = mkiCN "chopstick" ; --	CN	1411	chopstick	la bacchetta	ätpinne	die Essstäbchen	palčke
-- DUPLICATEMAYBE lin napkin_1412_CN = mkiCN "napkin" ; -- CN
-- DUPLICATEMAYBE lin cup_1413_CN = mkiCN "cup" ; -- CN
-- DUPLICATEMAYBE lin glass_1414_CN = mkiCN "glass" ; -- CN
lin bottle_of_wine_1415_CN = mkCN (mkN "bottle") (S.mkAdv part_Prep (mkNP (mkN "wine"))) ; --	CN	1415	bottle of wine	una bottiglia di vino	en flaska vin	eine Flasche Wien	steklenica vina
-- DUPLICATEMAYBE lin ice_1416_CNM = mkiCNM "ice" ; -- CNM
-- DUPLICATEMAYBE lin salt_1417_CNM = mkiCNM "salt" ; -- CNM
-- DUPLICATEMAYBE lin pepper_1418_CNM = mkiCNM "pepper" ; -- CNM
-- DUPLICATEMAYBE lin sugar_1419_CNM = mkiCNM "sugar" ; -- CNM
-- DUPLICATEMAYBE lin soup_1420_CNM = mkiCNM "soup" ; -- CNM
-- DUPLICATEMAYBE lin bread_1421_CNM = mkiCNM "bread" ; -- CNM
-- DUPLICATEMAYBE lin butter_1422_CNM = mkiCNM "butter" ; -- CNM
-- DUPLICATEMAYBE lin pasta_1423_CNM = mkiCNM "pasta" ; -- CNM
-- DUPLICATEMAYBE lin rice_1424_CNM = mkiCNM "rice" ; -- CNM
-- DUPLICATEMAYBE lin cheese_1425_CNM = mkiCNM "cheese" ; -- CNM
-- DUPLICATEMAYBE lin vegetable_1426_CN = mkiCN "vegetable" ; -- CN
lin chicken_1427_CNM = mkiCNM "chicken" ; --	CNM	1427	chicken	il pollo	kyckling	das Huhn	piščanec
lin pork_1428_CNM = mkiCNM "pork" ; --	CNM	1428	pork	il maiale	fläsk	das Schweinfleish	svinjina
-- DUPLICATEMAYBE lin beef_1429_CNM = mkiCNM "beef" ; -- CNM
-- DUPLICATEMAYBE lin juice_1430_CNM = mkiCNM "juice" ; -- CNM
-- DUPLICATE lin pie_1431_CN = mkiCN "pie" ; -- CN
-- DUPLICATEMAYBE lin ice_cream_1432_CNM = mkiCNM "ice cream" ; -- CNM
-- DERIVED 1433 Utt another one, please un altro, per favore en till, tack eine andere, bitte drugo, prosim 
-- DERIVED 1434 Utt more, please ancora un po', per favore lite till, tack mehr Bitte Še več, prosim 
-- DERIVED 1435 Utt? please pass mi passi var snäll och ge mig bitte übergeben prosim dodaj 
lin spicy_1436_AP = mkiAP "spicy" ; --	AP	1436	spicy	piccante	kryddstark	würzig	pikantno
-- DUPLICATE 1437 AP sweet dolce söt süß sladko DUPLICATE 1078 
-- DUPLICATE 1438 AP sour aspro sur sauer kislo DUPLICATE 1035 
-- DERIVED 1439 Utt speak slowly, please parli piano, per favore tala långsamt, tack Sprechen Sie bitte langsam govori počasi, prosim 
-- DERIVED 1440 Utt repeat, please ripeta, per favore. var snäll och repetera. bitte wiederholen ponovite prosim 
-- DUPLICATEMAYBE lin bathing_suit_1441_CN = mkiCN "bathing suit" ; -- CN
lin bathing_trunks_1442_CNPL = mkiCNPL "bathing trunk" ; --	CNPL	1442	bathing trunks	il pantoloncini da bagno	badbyxor	die Badehose	kopalke
-- DUPLICATEMAYBE lin belt_1443_CN = mkiCN "belt" ; -- CN
lin bikini_1444_CN = mkiCN "bikini" ; --	CN	1444	bikini	il bikini	bikini	der Bikini	bikini
lin blouse_1445_CN = mkiCN "blouse" ; --	CN	1445	blouse	la camicetta	blus	die Bluse	bluza
lin boxers_1446_CNPL = mkiCNPL "boxer" ; --	CNPL	1446	boxers	i boxer	boxershorts	die Boxershorts	bokserice
lin bra_1447_CN = mkiCN "bra" ; --	CN	1447	bra	il reggiseno	bh	der Bra	nedrček
-- DUPLICATEMAYBE lin bracelet_1448_CN = mkiCN "bracelet" ; -- CN
-- DUPLICATEMAYBE lin jacket_1449_CN = mkiCN "jacket" ; -- CN
-- DUPLICATEMAYBE lin coat_1450_CN = mkiCN "coat" ; -- CN
lin cotton_1451_CNM = mkiCNM "cotton" ; --	CNM	1451	cotton	di il cotone	bomull	die Baumwoll	bombaž
-- DUPLICATEMAYBE lin dress_1452_CN = mkiCN "dress" ; -- CN
lin earring_1453_CN = mkiCN "earring" ; --	CN	1453	earrings	gli orecchini	örhängen	die Ohrringe	uhani
lin eyeglasses_1454_CNPL = mkiCNPL "eyeglass" ; --	CNPL	1454	eyeglasses	gli occhiali	glasögon	die Brille	očala
lin glove_1455_CN = mkiCN "glove" ; --	CN	1455	glove	il guanto	handske	die Handschuhe	rokavice
-- DUPLICATEMAYBE lin hat_1456_CN = mkiCN "hat" ; -- CN
-- DUPLICATE lin jacket_1457_CN = mkiCN "jacket" ; -- CN
lin jeans_1458_CNPL = mkiCNPL "jean" ; --	CNPL	1458	jeans	i blue jeans	jeans	die Jeans	kavbojke
lin leather_1459_CN = mkiCN "leather" ; --	CN	1459	leather	di la pelle	läder	das Leder	usnje
lin suit_1460_CN = mkiCN "suit" ; --	CN	1460	suit	l'abito da uomo	kostym	der Anzug	obleka
-- DUPLICATEMAYBE lin necklace_1461_CN = mkiCN "necklace" ; -- CN
-- DUPLICATE lin pajamas_1462_CNPL = mkiCNPL "pajama" ; -- CNPL
lin pants_1463_CNPL = mkiCNPL "pant" ; --	CNPL	1463	pants	i pantaloni	byxor	die Hose	hlače
-- DUPLICATE lin ring_1464_CN = mkiCN "ring" ; -- CN
lin scarf_1465_CN = mkiCN "scarf" ; --	CN	1465	scarf	il foulard	scarf	der Schal	šal
-- DUPLICATE lin shirt_1466_CN = mkiCN "shirt" ; -- CN
-- DUPLICATE lin shoe_1467_CN = mkiCN "shoe" ; -- CN
lin silk_1468_CNM = mkiCNM "silk" ; --	CNM	1468	silk	la seta	siden	die Seide	svila
lin size__clothes__1469_CN = mkiCN "size" ; --	CN	1469	size (clothes)	la taglia	storlek	die Konfektionsgrösse	Velikost (oblačila)
lin size__shoes__1470_CN = mkiCN "size" ; --	CN	1470	size (shoes)	il numero	storlek	die Schuhgrössen	Velikost (čevlji)
-- DUPLICATEMAYBE lin skirt_1471_CN = mkiCN "skirt" ; -- CN
-- DUPLICATEMAYBE lin sneaker_1472_CN = mkiCN "sneaker" ; -- CN
lin sock_1473_CN = mkiCN "sock" ; --	CN	1473	socks	le calze	sockor	die Socken	nogavice
-- DUPLICATEMAYBE lin sunglasses_1474_CNPL = mkiCNPL "sunglass" ; -- CNPL
lin wear_1475_V2 = mkV2 I.wear_V ; --	V2	1475	wear	portare	att ha på sig	tragen	nositi
lin T_shirt_1476_CN = mkiCN "T-shirt" ; --	CN	1476	T-shirt	la maglietta	T-shirt	T-Shirt	majica
lin underpants__male_female__1477_CNPL = mkiCNPL "underpant" ; --	CNPL	1477	underpants (male/female)	le mutande	underbyxor	die Unterhose (männlich/weiblich)	spodnjice (moški / ženska)
-- DUPLICATEMAYBE lin undershirt_1478_CN = mkiCN "undershirt" ; -- CN
-- DUPLICATEMAYBE lin watch_1479_CN = mkiCN "watch" ; -- CN
lin women's_suit_1480_CN = mkiCN "women's suit" ; --	CN	1480	women's suit	il tailleur pantalone	byxdress	der(Frauen)Anzug	(Ženska) obleka
lin wool_1481_CN = mkiCN "wool" ; --	CN	1481	wool	(di) la lana	ull	die Wolle	volna
lin attachment_1482_CN = mkiCN "attachment" ; --	CN	1482	attachment	l'allegato	bilaga	der Anhang	priponka
lin blog_1483_CN = mkiCN "blog" ; --	CN	1483	blog	il blog	blogg	der Blog	blog
lin DSL_cable_1484_CN = mkiCN "DSL cable" ; --	CN	1484	DSL cable	il cavo ADSL	DSL-kabel	das Kabel(DSL)	kabel (DSL)
lin CD_ROM_1485_CN = mkiCN "CD-ROM" ; --	CN	1485	CD-ROM	il CD-ROM	CD-ROM	CD-ROM	CD ROM
lin CD_ROM_drive_1486_CN = mkiCN "CD-ROM drive" ; --	CN	1486	CD-ROM drive	l'unita CD	CD-ROM-enhet	CD-ROM-Laufwerk	CD-ROM
lin chat_room_1487_CNP = mkiCNP "chat room" ; --	CNP	1487	chat room	la chatroom	chat room	Chat-Raum	Klepetalnica
-- DUPLICATEMAYBE lin computer_1488_CN = mkiCN "computer" ; -- CN
lin document_1489_CN = mkiCN "document" ; --	CN	1489	document	il documento	dokument	das Dokument	dokument
-- DUPLICATEMAYBE lin email_1490_CN = mkiCN "email" ; -- CN
-- DUPLICATEMAYBE lin file_1491_CN = mkiCN "file" ; -- CN
lin instant_message_1492_CN = mkiCN "instant message" ; --	CN	1492	instant message	il messaggio instantaneo	sms	Sofortnachricht	hitro sporočilo
lin internet_1493_NP = mkNP the_Det (mkN "internet") ; --	NP	1493	internet	internet	internet	das Internet	internet
-- DUPLICATEMAYBE lin keyboard_1494_CN = mkiCN "keyboard" ; -- CN
-- DUPLICATEMAYBE lin memory_1495_CN = mkiCN "memory" ; -- CN
lin modem_1496_CN = mkiCN "modem" ; --	CN	1496	modem	il modem	modem	der Modem	modem
lin monitor_screen_1497_CN = mkiCN "monitor" | mkiCN "screen" ; --	CN	1497	monitor,screen	il monitor, lo schermo	monitor/skärm	der Monitor	monitor / zaslon
lin mouse_1498_CN = mkiCN "mouse" ; --	CN	1498	mouse	il mouse	mus	die Maus	miš
lin mouse_pad_1499_CN = mkiCN "mouse pad" ; --	CN	1499	mouse pad	il mousepad	musplatta	die Mausmatte	podloga za miško
-- DUPLICATEMAYBE lin printer_1500_CN = mkiCN "printer" ; -- CN
lin attach_file_1501_VP det = mkVP (mkV2 "attach") (mkNP det (mkN "file")) ; --	Det -> VP	1501	attach a file	allegare un file	lägga till en bilaga	eine Datei anhängen	priložiti datoteko
lin close_file_1502_VP det = mkVP (mkV2 "close") (mkNP det (mkN "file")) ; --	Det -> VP	1502	close a file	chiudere un file	att stänga en fil	eine Datei schliessen	zapreti datoteko
lin delete_1503_V2 = mkiV2 "delete" ; --	V2	1503	delete	cancellare, eliminare	att ta bort	löschen	izbrisati
lin forward_1504_V2 = mkiV2 "forward" ; --	V2	1504	forward	inoltrare	att vidarebefordra	weiterleiten	naj
lin open_file_1505_VP det = mkVP (mkV2 "open") (mkNP det (mkN "file")) ; --	Det -> VP	1505	open a file	aprire un file, aprire un documento	att öppna en fil	eine Datei öffnen	odpreti datoteko
lin reply_1506_V = mkiV "reply" ; --	V	1506	reply	rispondere	att svara	antworten	odgovoriti
lin save_1507_V2 = mkV2 "save" ; --- save a file --	V2	1507	save a document	salvare un documento	att spara ett dokument	ein Dokument speichern	shraniti dokument
-- DUPLICATEMAYBE lin save_1508_V2 = mkV2 I.send_V ; --- send a file -- V2
-- DUPLICATEMAYBE -- DERIVED 1508 VP send a file inviare un file, inviare un documento att skicka en fil eine Datei senden poslati datoteko
lin send_email_1509_VP det = mkVP (mkV2 I.send_V) (mkNP det (mkN "email")) ; --	Det -> VP	1509	send an email	mandare un'email, mandare una mail	att skicka e-post	E-Mail senden	poslati e-pošto
lin webpage_1510_CN = mkiCN "webpage" ; --	CN	1510	webpage	la pagina web	webbsida	die Internetseite	spletna stran
lin website_1511_CN = mkiCN "website" ; --	CN	1511	website	il sito web	website	die Website	spletna stran
-- DUPLICATE 1512 Weekday Monday lunedì måndag der Montag ponedeljek DUPLICATE 0690 
-- DUPLICATE 1513 Weekday Tuesday martedì tisdag der Dienstag torek DUPLICATE 1191 
-- DUPLICATE 1514 Weekday Wednesday mercoledì onsdag der Mittwoch sreda DUPLICATE 1245 
-- DUPLICATE 1515 Weekday Thursday giovedì torsdag der Donnerstag četrtek DUPLICATE 1136 
-- DUPLICATE 1516 Weekday Friday venerdì fredag der Freitag petek 
-- DUPLICATE 1517 Weekday Saturday sabato lördag der Samstag sobota DUPLICATE 0942 
-- DUPLICATE 1518 Weekday Sunday domenica söndag der Sonntag nedelja DUPLICATE 1071 
-- DERIVED 1519 Month January gennaio januari der Januar januar 
-- DERIVED 1520 Month February febbraio februari der Februar februar 
-- DERIVED 1521 Month March marzo mars der März marec 
-- DERIVED 1522 Month April aprile april der April april 
-- DERIVED 1523 Month May maggio maj der Mai maj 
-- DERIVED 1524 Month June giugno juni der Juni junij 
-- DERIVED 1525 Month July luglio juli der Juli julij 
-- DERIVED 1526 Month August agosto augusti der August avgust 
-- DERIVED 1527 Month September settembre september der September september 
-- DERIVED 1528 Month October ottobre oktober der Oktober oktober 
-- DERIVED 1529 Month November novembre november der November november 
-- DERIVED 1530 Month December dicembre december der Dezember december
-- DERIVED lin this_Monday_1531_AdvT = mkiAdvT "this Monday" ; -- AdvT
lin last_week_1532_AdvT = mkiAdvT "last week" ; --	AdvT	1532	last week	la settimana scorsa	förra veckan	letzte Woche	prejšnji teden
-- DUPLICATEMAYBE lin next_month_1533_AdvT = mkiAdvT "next month" ; -- AdvT
lin what_is_the_date_today_1534_Utt = mkiUtt "what is the date today" ; --	Utt	1534	what is the date today?	che giorno è?	vilket datum är det idag?	Welches Datum haben wir heute?	kateri datum je danes?
-- DUPLICATE 1535 AP red rosso röd rot rdeča DUPLICATE 0900 
-- DUPLICATE 1536 AP blue blu blå blau modra DUPLICATE 0098 
-- DUPLICATE 1537 AP yellow giallo gul gelb rumena DUPLICATE 1292 
-- DUPLICATE 1538 AP green verde grön grün zelena DUPLICATE 0443 
lin orange_1539_AP = mkiAP "orange" ; --	AP	1539	orange	arancione	orange	orange	oranžna
lin purple_1540_AP = mkiAP "purple" ; --	AP	1540	purple	viola	lila	lila	vijolična
lin black_1541_AP = mkiAP "black" ; --	AP	1541	black	nero	svart	schwarz	črna
lin white_1542_AP = mkiAP "white" ; --	AP	1542	white	bianco	vit	weiss	bela
lin brown_1543_AP = mkiAP "brown" ; --	AP	1543	brown	marrone	brun	braun	rjava
-- lin need_1544_V2 = mkiV2 "need" ; -- DUPLICATE 
-- DUPLICATE lin money_1545_CNM = mkiCNM "money" ; -- CNM
-- DUPLICATE lin paper_1546_CNM = mkiCNM "paper" ; -- CNM
-- DUPLICATE lin pencil_1547_CN = mkiCN "pencil" ; -- CN
-- DUPLICATE lin pen_1548_CN = mkiCN "pen" ; -- CN
-- DUPLICATE lin stamp_1549_CN = mkiCN "stamp" ; -- CN
-- DUPLICATEMAYBE lin toothpaste_1550_CNM = mkiCNM "toothpaste" ; -- CNM
lin towel_1551_CN = mkiCN "towel" ; --	CN	1551	towel	un asciugamano	en handduk	ein Handtuch	brisača
-- DUPLICATEMAYBE lin soap_1552_CNM = mkiCNM "soap" ; -- CNM
-- DUPLICATE lin clothes_1553_CNPL = mkiCNPL "cloth" "clothes" ; 
-- DUPLICATEMAYBE lin band_1554_CNH = mkiCNH "band" ; -- CNH
-- DUPLICATEMAYBE lin book_1555_CN = mkiCN "book" ; -- CN
-- DUPLICATE lin circus_1556_CNP = mkiCNP "circus" ; -- CNP
lin club_1557_CNP = mkiCNP "club" "at" ; --	CNP	1557	club	il club	klubb	der Club	klub
lin comedy_1558_CN = mkiCN "comedy" ; --	CN	1558	comedy	la commedia	kommedi	die Komödie	komedija
lin concert_1559_CN = mkiCN "concert" ; --	CN	1559	concert	il concerto	konsert	das Konzert	koncert
lin documentary_1560_CN = mkiCN "documentary" ; --	CN	1560	documentary	il documentario	documentär	der Dokumentarfilm	dokumentarni
lin drama_1561_CN = mkiCN "drama" ; --	CN	1561	drama	il dramma	drama	das Drama	drama
lin exciting_1562_AP = mkiAP "exciting" ; --	AP	1562	exciting	stimolante	spännande	aufregend	razburljivo
-- DUPLICATE 1563 AP funny divertente rolig komisch smešno DUPLICATE 0407 
lin gallery_1564_CNP = mkiCNP "gallery" ; --	CNP	1564	gallery	la galleria	galleriet	die Galerie	Galerija
lin interesting_1565_AP = mkiAP "interesting" ; --	AP	1565	interesting	interessante	intressant	interessant	zanimivo
-- DUPLICATEMAYBE lin magazine_1566_CN = mkiCN "magazine" ; -- CN
lin movie_theater_1567_CNP = mkiCNP "movie theater" ; --	CNP	1567	movie theater	la sala cinematografica	biosalong	das Filmtheater	kino
-- DUPLICATEMAYBE lin movie_1568_CN = mkiCN "movie" | mkiCN "film" ; -- CN
-- DUPLICATEMAYBE lin museum_1569_CNP = mkiCNP "museum" ; -- CNP
lin opera_1570_CNP = mkiCNP "opera" "at" ; --	CNP	1570	opera	l'opera	opera	die Oper	opera
-- DUPLICATEMAYBE lin painting_1571_CN = mkiCN "painting" ; -- CN
lin party_1572_CNP = mkiCNP "party" ; --	CNP	1572	party	la festa	fest	die Party	zabava
-- DUPLICATE 1573 CNP restaurant il ristorante restaurant das Restaurant restavracija DUPLICATE 1340 
-- DUPLICATEMAYBE lin sculpture_1574_CN = mkiCN "sculpture" ; -- CN
lin song_1575_CN = mkiCN "song" ; --	CN	1575	song	la canzone	sång	das Lied	pesem
lin television_program_1576_CN = mkiCN "television program" ; --	CN	1576	television program	la trasmissione televisiva	TV-program	das Fernsehprogramm	televizijskega programa
lin the_news_1577_NP = mkiNP "the news" ; --	NP	1577	the news	le notizie	nyheterna	die Nachrichten	novice
lin the_radio_news_1578_NP = mkiNP "the radio news" ; --	NP	1578	the radio news	il giornaleradio	radionyheterna	die Radionachrichten	novice (na radiu)
lin the_TV_news_1579_NP = mkiNP "the TV news" ; --	NP	1579	the TV news	il telegiornale, il TG	TV-nyheterna	die Fernsehnachrichten	novice (na TV)
-- DUPLICATEMAYBE lin theater_1580_CNP = mkiCNP "theater" "at" ; -- CNP
-- DUPLICATEMAYBE lin ticket_1581_CN = mkiCN "ticket" ; -- CN
lin be_bored_1582_VP = mkVP (mkA "bored") ; --	VP	1582	be bored	annoiarsi	att ha tråkigt	gelangweilt sein	biti dolgčas
lin dance_1583_V = mkiV "dance" ; --	V	1583	dance	ballare	att dansa	tanzen	plesati
lin flip_channels_1584_VP = mkVP (mkV2 "flip") (mkNP aPl_Det (mkN "channel")) ; --	VP	1584	flip channels	cambiare canale	att byta kanal	die Kanäle wechseln	spremeniti kanale
-- DERIVED 1585 VP go to a party andare a una festa att gå på fest auf eine Party gehen iti na zabavo 
-- DERIVED 1586 VP go to the movies andare al cinema att gå på bio ins Kino gehen iti v kino 
-- DERIVED 1587 VP have a party dare una festa att ha en fest eine Feier haben prirediti zabavo 
-- DERIVED 1588 VP have fun divertirsi att ha roligt Spaß haben zabavati se 
-- DUPLICATE 1589 VP listen to music ascoltare la musica att lyssna på musik Musik hören za poslušanje glasbe DUPLICATE 0626 
-- DERIVED 1590 VP read a book leggere un libro att läsa en bok ein Buch lesen prebrati knjigo 
-- DERIVED 1591 VP read a magazine leggere una rivista att läsa en veckotidning an eine Zeitschrift lesen brati revijo 
-- DERIVED 1592 VP see a movie vedere un film att se en film einen Film sehen videti film 
-- DERIVED 1593 VP see a play vedere uno spettacolo att se en pjäs ein Stück,Spiel schauen videti igro 
-- DERIVED 1594 VP watch the television guardare la tivù (la televisione) att se på TV fernsehen gledati televizijo 
lin aunt_1595_CNH = mkiCNH "aunt" ; --	CNH	1595	aunt	la zia	faster, moster	die Tante	teta
-- DUPLICATE lin baby_1596_CNH = mkiCNH "baby" ; -- CNH
-- DUPLICATEMAYBE lin brother_1597_CNH = mkiCNH "brother" ; -- CNH
lin female_cousin_1598_CNH = mkiCNH "female cousin" | mkiCNH "cousin" ; --	CNH	1598	female cousin	la cugina	kusin	die Cousine	bratranec (ženska)
lin male_cousin_1599_CNH = mkiCNH "male cousin" | mkiCNH "cousin" ; --	CNH	1599	male cousin	il cugino	kusin	der Cousin	bratranec (moški)
-- DUPLICATEMAYBE lin daughter_1600_CNH = mkiCNH "daughter" ; -- CNH
-- DUPLICATEMAYBE lin father_1601_CNH = mkiCNH "father" ; -- CNH
lin father_in_law_1602_CNH = mkiCNH "father-in-law" ; --	CNH	1602	father-in-law	il suocero	svärfar	der Schwiegervater	tast
lin fiancé_1603_CNH = mkiCNH "fiancé" ; --	CNH	1603	fiancé,fiancée	il fidanzato/la fidanzata	fästman/fästmö	Verlobten/Verlobte(männlich/weiblich)	zaročenec / zaročenka (moški / ženska)
lin fiancée_1603_CNH = mkiCNH "fiancée" ; --	CNH	1603	fiancé,fiancée	il fidanzato/la fidanzata	fästman/fästmö	Verlobten/Verlobte(männlich/weiblich)	zaročenec / zaročenka (moški / ženska)
-- DUPLICATEMAYBE lin grandfather_1604_CNH = mkiCNH "grandfather" ; -- CNH
lin grandmother_1605_CNH = mkiCNH "grandmother" ; --	CNH	1605	grandmother	la nonna	farmor, mormor	die Oma	babica
lin husband_1606_CNH = mkiCNH "husband" ; --	CNH	1606	husband	il marito	make	der Mann	mož
-- DUPLICATEMAYBE lin mother_1607_CNH = mkiCNH "mother" ; -- CNH
lin mother_in_law_1608_CNH = mkiCNH "mother-in-law" ; --	CNH	1608	mother-in-law	la suocera	svärmor	die Schwiegermutter	tašča
lin relative_1609_CNH = mkiCNH "relative" ; --	CNH	1609	relative	il/la parente	släkting	der Verwandter/die Verwandte	sorodnik (moški / ženska)
-- DUPLICATEMAYBE lin sister_1610_CNH = mkiCNH "sister" ; -- CNH
-- DUPLICATEMAYBE lin son_1611_CNH = mkiCNH "son" ; -- CNH
lin stepdaughter_1612_CNH = mkiCNH "stepdaughter" ; --	CNH	1612	stepdaughter	la figlia di mia moglie/di mio marito	styvdotter	die Stieftochter	pastorka
lin stepfather_1613_CNH = mkiCNH "stepfather" ; --	CNH	1613	stepfather	il marito di mia madre	styvfar	der Stiefvater	očim
lin stepmother_1614_CNH = mkiCNH "stepmother" ; --	CNH	1614	stepmother	la moglie di mio padre	styvmor	die Stiefmutter	mačeha
lin stepson_1615_CNH = mkiCNH "stepson" ; --	CNH	1615	stepson	il figlio di mia moglie/di mio marito	styvson	der Stiefsohn	pastorek
lin divorce_1616_V = mkV "divorce" ; --	V	1616	divorce	divorziarsi	att skiljas	sich scheiden lassen	ločiti se
lin inherit_1617_V2 = mkiV2 "inherit" ; --	V2	1617	inherit	ereditare	att ärva	erben	podedoval
lin meet_1618_V2 = mkV2 I.meet_V ; --	V2	1618	meet	conoscere	att träffa (en person)	eine Person zum ersten mal kennenlernen	izpolniti (oseba) (prvič)
-- DERIVED 1619 VP to love amare att älska lieben ljubiti 
lin marry_1620_V = mkiV "marry" ; --	V	1620	marry	sposarsi	att gifta sig	heiraten	poročiti
lin marry_1620_V2 = mkiV2 "marry" ; --	V2	1620	marry	sposarsi	att gifta sig	heiraten	poročiti
lin meet_casually_1621_V2 = mkV2 I.meet_V | mkV2 (partV I.meet_V "casually") ; --	V2	1621	meet casually	incontrare	att träffa (en person)	(eine Person)(nebenbei)kennenlernen	izpolniti (oseba) (mimogrede)
lin uncle_1622_CNH = mkiCNH "uncle" ; --	CNH	1622	uncle	lo zio	farbror, morbror	der Onkel	stric
lin wife_1623_CNH = mkiCNH "wife" ; --	CNH	1623	wife	la moglie	fru	die Ehefrau	žena
-- DUPLICATE lin apple_1624_CN = mkiCN "apple" ; -- CN
-- DUPLICATE lin apricot_1625_CN = mkiCN "apricot" ; -- CN
-- DUPLICATEMAYBE lin banana_1626_CN = mkiCN "banana" ; -- CN
-- DUPLICATEMAYBE lin beef_1627_CNM = mkiCNM "beef" ; -- CNM
-- DUPLICATEMAYBE lin carrot_1628_CN = mkiCN "carrot" ; -- CN
-- lin coffee_1629_CNM = mkiCNM "coffee" ; DUPLICATE 
-- DUPLICATEMAYBE lin cucumber_1630_CN = mkiCN "cucumber" ; -- CN
-- DUPLICATEMAYBE lin drink_1631_CN = mkiCN "drink" ; -- CN
lin egg_1632_CN = mkiCN "egg" ; --	CN	1632	egg	l'uovo	ägg	das Ei,die Eier	jajce (e)
lin eggplant_1633_CN = mkiCN "eggplant" ; --	CN	1633	eggplant	la melanzana	aubergine	di Aubergine	jajčevec
lin fish_1634_CNM = mkiCNM "fish" ; --	CNM	1634	fish	il pesce	fisk	der Fisch	ribe
lin fruit_1635_CNM = mkiCNM "fruit" ; --	CNM	1635	fruit	la frutta	frukt	das Obst	sadje
-- DUPLICATEMAYBE lin grape_1636_CN = mkiCN "grape" ; -- CN
-- DUPLICATEMAYBE lin honey_1637_CNM = mkiCNM "honey" ; -- CNM
-- DUPLICATEMAYBE lin lettuce_1638_CNM = mkiCNM "lettuce" ; -- CNM
lin lobster_1639_CN = mkiCN "lobster" ; --	CN	1639	lobster	l'aragosta	hummer	der Hummer	jastog
-- DUPLICATEMAYBE lin meat_1640_CNM = mkiCNM "meat" ; -- CNM
-- DUPLICATEMAYBE lin milk_1641_CNM = mkiCNM "milk" ; -- CNM
-- DUPLICATEMAYBE lin orange_1642_CN = mkiCN "orange" ; -- CN
lin peach_1643_CN = mkiCN "peach" ; --	CN	1643	peach	la pesca	persika	der Pfirsich	breskev
lin pear_1644_CN = mkiCN "pear" ; --	CN	1644	pear	la pera	päron	die Birne	hruška
-- DUPLICATE lin pepper__condiment__1645_CN = mkiCN "pepper" ; --	CN	1645	pepper (condiment)	il pepe	peppar	der Pfeffer(das Gewürz)	poper (začimba)
-- DUPLICATE lin pepper__vegetable__1646_CN = mkiCN "pepper" ; --	CN	1646	pepper (vegetable)	il peperone	paprika	der Pfeffer (das Gemüse)	poper (rastlinski)
lin shrimp_1647_CN = mkiCN "shrimp" ; --	CN	1647	shrimp	il gambero	räka	die Garnele	kozice
lin soft_drink_1648_CN = mkiCN "soft drink" ; --	CN	1648	soft drink	la bibita	läskedryck	die Soda	brezalkoholna pijača / soda
-- DUPLICATE lin tea_1649_CNM = mkiCNM "tea" ; -- CNM
-- DUPLICATEMAYBE lin tomato_1650_CN = mkiCN "tomato" ; -- CN
-- DUPLICATEMAYBE lin veal_1651_CNM = mkiCNM "veal" ; -- CNM
-- DUPLICATEMAYBE lin water_1652_CNM = mkiCNM "water" ; -- CNM
-- DUPLICATEMAYBE lin wine_1653_CNM = mkiCNM "wine" ; -- CNM
-- DUPLICATE lin zucchini_1654_CN = mkiCN "zucchini" ; --	CN	1654	zucchini	lo zucchino, la zucchina	zucchini	die Zucchini	bučke
-- DERIVED 1655 QCl can you help me? mi può aiutare? kan du hjälpa mig? Kannst du mir helfen? mi lahko pomagaš? 
-- DERIVED 1656 Cl I'm lost mi sono perso jag har gått vilse ich bin verloren Zgubljen sem
lin know_1657_VQ = mkVQ I.know_V ; --	VQ	1657	I don't know where my wife is	non riesco a trovare mia moglie	jag vet inte var min fru är	ich weiss nicht,wo meine Frau ist	Ne vem, kje je moja žena
-- DERIVED 1657 Cl I don't know where my wife is non riesco a trovare mia moglie jag vet inte var min fru är ich weiss nicht,wo meine Frau ist Ne vem, kje je moja žena 
-- DERIVED 1658 Cl I don't know where my husband is non riesco a trovare mio marito jag vet inte var min man är ich weiss nicht ,wo mein Mann ist Ne vem, kje je moj mož 
-- DERIVED 1659 Cl I'm hurt mi sono ferito jag har skadat mig ich bin verletzt Poškodovan sem 
-- DERIVED lin I_need_a_doctor_1660_Cl = mkiCN "I need a doctor" ; -- Cl
lin allergic_to_1661_AP np = mkAP (mkA2 (mkA "allergic") to_Prep) np ; --	NP -> AP	1661	I'm allergic to penicillin	Sono allergico alla penicillina	jag är allergisk mot penicillin	ich bin allergisch gegen Penicilin	sem alergičen na penicilin
-- DERIVED I'm_allergic_to_penicillin_1661_CN = mkiCN "I'm allergic to penicillin" ; -- CN
lin i_am_dizzy_1662_Cl nph = mkCl nph (mkA "dizzy") ; --	NPH -> Cl	1662	I'm dizzy	mi gira la testa	jag är yr	mir ist schwindelig	Sem omotična
-- DERIVED 1662 Cl I'm dizzy mi gira la testa jag är yr mir ist schwindelig Sem omotična
lin i_have_nausea_1663_Cl nph = mkCl nph S.have_V2 (mkNP (mkN "nausea")) ; --	NPH -> Cl	1663	I have nausea	ho la nausea	jag mår illa	ich habe Übelkeit	Čutim slabost, počutim se slabo
-- DERIVED lin I_have_nausea_1663_CN = mkiCN "I have nausea" ; -- CN
lin my_x_hurts_1664_Cl pron cn = mkCl (mkNP (S.mkQuant pron) cn) I.hurt_V ; --	Pron -> CN -> Cl	1664	my arm hurts	mi fa male il braccio	jag har ont i armen	mein Arm tut weh	me roka boli
-- DERIVED 1664 Cl my arm hurts mi fa male il braccio jag har ont i armen mein Arm tut weh me roka boli 
-- DERIVED 1665 Cl my leg hurts mi fa male la gamba jag har ont i benet mein Bein tut weh me noga boli 
-- DERIVED 1666 Cl my head hurts mi fa male la testa jag har ont i huvudet mein Kopf tut weh glava me boli 
-- DERIVED 1667 QCl where's the book? dov'è il libro? var är boken? Wo ist das Buch? kje je knjiga? 
-- DERIVED 1668 Cl it's right here è proprio qui den är här es ist genau hier je tukaj 
-- DERIVED 1669 Cl he is here lui è qui han är här er ist hier on je tukaj 
-- DERIVED 1670 Cl he is there lui è lì han är där er ist dort tam je 
-- DERIVED 1671 Cl it's somewhere over there è lì, da qualche parte det är någonstans där borta es ist irgendwo da drüben da je nekje tam 
-- DERIVED 1672 Imp put it here lo metta qui lägg det här stell es hier ab postavi tukaj 
-- DERIVED 1673 Cl wait for me here mi aspetti qui vänta på mig här warte auf mich hier počakaj me tukaj 
lin as_far_as_there_1674_AdvP = mkiAdvP "as far as there" ; --	AdvP	1674	as far as there	fino a lì	ända dit bort	soweit es	kolikor tam
-- DERIVED 1675 QCl where does he live? dove abita lui? var bor han? Wo wohnt er? kje živi? 
-- DERIVED 1676 Cl he lives there lui abita lì han bor där er lebt dort živi tam
lin expect_1677_VV = mkVV (mkV "expect") ; --	VV	1677	I expect to see him there	io spero di vederlo lì	jag hoppas på att se honom där	ich erwarte ihn dort zu sehen	Pričakujem, da ga vidim tam
-- DERIVED 1677 Cl I expect to see him there io spero di vederlo lì jag hoppas på att se honom där ich erwarte ihn dort zu sehen Pričakujem, da ga vidim tam 
-- DERIVED 1678 Cl it's not here non è qui det är inte här es ist nicht hier to ni tukaj 
-- DERIVED 1679 QCl what do you have there? cosa hai lì? vad har du där? was hast du da? kaj imaš tam? 
-- DERIVED 1680 Cl I like mi piace jag tycker om det ich mag všeč mi je 
-- DERIVED 1681 Cl I like it a lot mi piace molto jag tycker mycket om det ich mag es sehr zelo mi je všeč 
-- DERIVED 1682 Cl I love music la musica mi piace molto jag älskar musik ich mag Musik Obožujem glasbo 
-- DERIVED 1683 QCl do you like fruit? ti piace la frutta? tycker du om frukt? Magst du Obst? Vam je všeč sadje?
lin yes_s_1684_Utt s = mkiUtt ("yes" ++ (mkUtt s).s) ; --	S -> Utt	1684	yes, I like fruit	si, la frutta mi piace	ja, jag tycker om frukt	ja,ich mag Obst	ja,imam rada sadje
-- DERIVED 1684 Utt yes, I like fruit si, la frutta mi piace ja, jag tycker om frukt ja,ich mag Obst ja,imam rada sadje 
-- DERIVED 1685 Cl I don't like it non mi piace jag tycker inte om det ich mag es nicht Ni mi všeč 
-- DERIVED 1686 Cl I don't like it very much non mi piace molto jag tycker inte så mycket om det ich mag es nicht so sehr tega ne maram preveč
-- DUPLICATEMAYBE lin yes_s_1687_Utt s = mkiUtt ("no" ++ (mkUtt s).s) ; -- S -> Utt
-- DERIVED 1687 Utt no, I don't like fruit no, la frutta non mi piace nej, jag tycker inte om frukt nein,ich mag kein Obst ne, ne maram sadja 
-- DERIVED 1688 QCl do you like chocolate? ti piace il cioccolato? tycker du om choklad? Magst du Schokolade? Vam je všeč čokolada?
-- DUPLICATEMAYBE lin bandage_1689_CN = mkiCN "bandage" ; -- CN
lin bath_gel_1690_CNM = mkiCNM "bath gel" ; --	CNM	1690	bath gel	il bagnoschiuma	badskum	das Duschgel	gel za kopanje
lin bathtub_1691_CNP = mkiCNP "bathtub" ; --	CNP	1691	bathtub	la vasca (da bagno)	badkar	die Badewanne	kad
lin cologne_1692_CNM = mkiCNM "cologne" ; --	CNM	1692	cologne	l'acqua (di) colonia	eau-de-cologne	das Eau de Cologne	kolonjska voda
-- DUPLICATEMAYBE lin deodorant_1693_CNM = mkiCNM "deodorant" ; -- CNM
lin medicine_cabinet_1694_CN = mkiCN "medicine cabinet" ; --	CN	1694	medicine cabinet	l'armadietto	medicinskåp	der Medizinschrank	medicinska omara
-- DUPLICATEMAYBE lin mirror_1695_CN = mkiCN "mirror" ; -- CN
-- DUPLICATEMAYBE lin perfume_1696_CNM = mkiCNM "perfume" ; -- CNM
lin powder_1697_CNM = mkiCNM "powder" ; --	CNM	1697	powder	il borotalco	talkpuder	der Pulver	prah
-- DUPLICATEMAYBE lin razor_1698_CN = mkiCN "razor" ; -- CN
lin shampoo_1699_CN = mkiCN "shampoo" ; --	CN	1699	shampoo	lo shampoo	shampoo	das Shampoo	šampon
-- DUPLICATEMAYBE lin shaving_cream_1700_CNM = mkiCNM "shaving cream" ; -- CNM
-- DUPLICATE lin shower_1701_CN = mkiCN "shower" ; -- CN
lin shower_gel_1702_CNM = mkiCNM "shower gel" ; --	CNM	1702	shower gel	il docciaschiuma	duschtvål	das Duschgel	gel za tuširanje
lin sink__wash_basin__1703_CN = mkiCN "sink" | mkiCN "wash basin" ; --	CN	1703	sink (wash basin)	il lavandino, il lavabo	tvättställ	das Waschbecken(das Waschbecken)	korito (umivalnik)
-- DUPLICATE lin soap_1704_CNM = mkiCNM "soap" ; -- CNM
-- DUPLICATE 1705 VP shave farsi la barba, radersi att raka sig rasieren britje
lin take_a_bath_1706_VP = mkVP (mkV2 I.take_V) (mkNP a_Det (mkN "bath")) ; --	VP	1706	take a bath	farsi il bagno	att ta ett bad	ein Bad nehmen	kopati se
lin take_a_shower_1707_VP = mkVP (mkV2 I.take_V) (mkNP a_Det (mkN "shower")) ; --	VP	1707	take a shower	farsi la doccia	att duscha	zu duschen	stuširati
-- DUPLICATE 1708 VP wash oneself lavarsi att tvätta sig sich waschen stuširati se 
-- DUPLICATE lin toilet_1709_CNP = mkiCNP "toilet" ; -- CNP
-- DUPLICATE lin toilet_paper_1710_CNM = mkiCNM "toilet paper" ; -- CNM
-- DUPLICATEMAYBE lin towel_1711_CN = mkiCN "towel" ; -- CN
-- DUPLICATEMAYBE lin blender_1712_CN = mkiCN "blender" ; -- CN
-- DUPLICATEMAYBE lin bottle_1713_CN = mkiCN "bottle" ; -- CN
-- DUPLICATE lin bowl_1714_CN = mkiCN "bowl" ; -- CN
-- DUPLICATEMAYBE lin box_1715_CN = mkiCN "box" ; -- CN
-- DUPLICATEMAYBE lin broom_1716_CN = mkiCN "broom" ; -- CN
lin can_1717_CN = mkiCN "can" ; --	CN	1717	can	la lattina	burk	die Dose	lahko
-- DUPLICATEMAYBE lin carton_1718_CN = mkiCN "carton" ; -- CN
lin coffeemaker_espresso_machine_1719_CN = mkiCN "coffeemaker" | mkiCN "espresso machine" ; --	CN	1719	coffeemaker,espresso machine	la macchina del caffè	kaffebryggare	die Kaffeemaschine/die Espressomaschine	aparat za kavo / espresso stroj
lin counter_1720_CN = mkiCN "counter" ; --	CN	1720	counter	il piano	arbetsbänk	der Zähler	števec
-- DUPLICATE 1721 CN cup la tazza kopp die Tasse skodelica DUPLICATE 1413 
lin cupboard_1722_CN = mkiCN "cupboard" ; --	CN	1722	cupboard	la credenza	skåp	der Schrak	omara
-- DUPLICATEMAYBE lin dishwasher_1723_CN = mkiCN "dishwasher" ; -- CN
lin dishwashing_detergent_1724_CN = mkiCN "dishwashing detergent" ; --	CN	1724	dishwashing detergent	il detersivo per i piatti	diskmedel	das Spülmittel	detergent za pomivanje posode
-- DUPLICATEMAYBE lin drawer_1725_CN = mkiCN "drawer" ; -- CN
-- DUPLICATEMAYBE lin dryer_1726_CN = mkiCN "dryer" ; -- CN
-- DUPLICATEMAYBE lin iron_1727_CN = mkiCN "iron" ; -- CN
-- DUPLICATEMAYBE lin ironing_board_1728_CN = mkiCN "ironing board" ; -- CN
lin kitchen_sink_1729_CN = mkiCN "kitchen sink" ; --	CN	1729	kitchen sink	il lavandino	diskho	das Abwaschbecken	(kuhinjsko korito
lin laundry_detergent_1730_CNM = mkiCNM "laundry detergent" ; --	CNM	1730	laundry detergent	il detersivo per il bucato	tvättmedel	das Waschmittel	detergent za pranje perila
-- DUPLICATE lin microwave_1731_CN = mkiCN "microwave" ; -- CN
-- DUPLICATEMAYBE lin oven_1732_CN = mkiCN "oven" ; -- CN
lin refrigerator_1733_CN = mkiCN "refrigerator" ; --	CN	1733	refrigerator	il frigorifero, il frigo	kylskåp	der Kühlschrank	hladilnik
lin stove_1734_CN = mkiCN "stove" ; --	CN	1734	stove	la cucina elettrica, la cucina a gas	spis	der Herd	štedilnik
lin tea_kettle_1735_CN = mkiCN "tea kettle" ; --	CN	1735	tea kettle	il bollitore	vattenkokare	der Teekessel	 kotliček za čaj
-- DERIVED 1736 VP to cook cucinare att laga mat kochen kuhati 
-- DERIVED 1737 VP to do the dishes lavare i piatti att diska das Geschirr spülen pomiti posodo 
-- DERIVED 1738 VP to do the laundry fare la lavanderia, fare il bucato att tvätta die Wäsche waschen oprati perilo 
-- DUPLICATEMAYBE lin washing_machine_1739_CN = mkiCN "washing machine" ; -- CN
-- DERIVED 1740 Cl this isn't true questo non è vero det är inte sant dies ist nicht wahr To ne velja 
-- DERIVED 1741 Cl this isn't so questo non è così så är det inte dies ist nicht so to ni tako 
-- DERIVED 1742 Cl it's very bad è molto male det är väldigt illa es ist sehr schlimm to je zelo slabo 
-- DERIVED 1743 Cl it's for you è per te det är till dig es ist für dich to je za vas 
-- DERIVED 1744 Cl it's not bad non c'è male det är helt okej es ist nicht schlecht ni slabo 
-- DERIVED 1745 Cl it's trendy è di moda det är inne es ist trendy je v trendu, moderno 
-- DERIVED 1746 Cl it's very good è molto buono det är mycket bra es ist sehr gut je zelo dobro 
-- DERIVED 1747 Cl I don't care non mi interessa det bryr jag mig inte om ist mir egal Me ne zanima 
-- DERIVED 1748 Cl it is done very badly è fatto malissimo det är dåligt gjort es ist sehr schlecht gemacht je narejeno zelo slabo 
-- DERIVED 1749 Cl it's not good non è buono det är inte bra es ist nicht gut ni dobro 
-- DERIVED 1750 Cl it's not very good non è molto buono det är inte särskilt bra es ist nicht sehr gut ni glih dobro 
-- DERIVED 1751 Cl it's really bad è veramente cattivo det är verkligen dåligt es ist wirklich schlecht to je res slabo 
-- DUPLICATE 1752 Cl it's very bad è molto male det är mycket dåligt es ist sehr schlimm to je zelo slabo DUPLICATE 1742 
-- DERIVED 1753 Cl it's worthless non serve a nulla det tjänar inget till es ist wertlos to je ničvredno 
-- DERIVED 1754 Cl that's not good quello non è buono det där är inte bra das ist nicht gut to ni dobro 
-- DERIVED 1755 Cl that's worthless questo non vale niente det är värdelöst das ist wertlos to je ničvredno 
-- DERIVED 1756 Cl this isn't correct questo non è corretto det är inte korrekt dies ist nicht korrekt To ni pravilno 
-- DERIVED 1757 Cl this isn't right questo non è giusto det är inte rätt das ist nicht richtig to ni prav 
-- DERIVED 1758 QCl what's your name? come ti chiami? vad heter du? Wie heißen Sie? kako ti je ime?
lin may_1759_VV = E.may_VV ; --	VV	1759	may I sit here?	posso sedermi qui?	kan jag sitta här?	Darf ich hier sitzen?	ali se lahko vsedem tukaj
-- DERIVED 1759 QCl may I sit here? posso sedermi qui? kan jag sitta här? Darf ich hier sitzen? ali se lahko vsedem tukaj 
-- DERIVED 1760 QCl where do you live? dove abiti? var bor du? Wo wohnen Sie? kje živiš? 
-- DERIVED 1761 Cl this is my wife questa è mia moglie det här är min fru das ist meine Frau to je moja žena 
-- DERIVED 1762 Cl this is my husband questo è mio marito det här är min man das ist mein Ehemann 
-- DUPLICATE lin money_1763_CNM = mkiCNM "money" ; -- CNM
-- DUPLICATE lin bank_1764_CNP = mkiCNP "bank" ; -- CNP
lin more_slowly_1765_Adv = mkiAdv "more slowly" ; --	Adv	1765	more slowly	più piano	långsammare	langsamer	počasneje
lin more_difficult_1766_AP = mkiAP "more difficult" ; --	AP	1766	more difficult	più difficile	svårare	schwieriger	težje
lin easier_1767_AP = mkiAP "easier" ; --	AP	1767	easier	più facile	lättare	einfacher	lažje
lin farther_1768_AdvP = mkiAdvP "farther" ; --	AdvP	1768	farther	più lontano	längre bort	weiter	dlje
lin nearer_1769_AdvP = mkiAdvP "nearer" ; --	AdvP	1769	nearer	più vicino	närmare	näher	bliže
lin more_than_that_1770_Adv = mkiAdv "more than that" ; --	Adv	1770	more than that	più di quello	mer än det	mehr als das	več kot to
lin more_than_a_year_1771_Adv = mkiAdv "more than a year" ; --	Adv	1771	more than a year	più di un anno	mer än ett år	mehr als ein Jahr	več kot eno leto
lin less_slowly_1772_Adv = mkiAdv "less slowly" ; --	Adv	1772	less slowly	meno piano	mindre långsamt	weniger langsam	hitreje
lin less_difficult_1773_AP = mkiAP "less difficult" ; --	AP	1773	less difficult	meno difficile	mindre svårt	weniger schwierig	manj zahtevna
lin less_easy_1774_AP = mkiAP "less easy" ; --	AP	1774	less easy	meno facile	mindre enkelt	weniger leicht	težje
lin less_far_1775_AdvP = mkiAdvP "less far" ; --	AdvP	1775	less far	meno lontano	inte så långt bort	weniger weit	ne tako daleč
lin less_near_1776_AdvP = mkiAdvP "less near" ; --	AdvP	1776	less near	meno vicino	inte så nära	weniger in der Nähe von	ne tako blizu
lin less_than_that_1777_Adv = mkiAdv "less than that" ; --	Adv	1777	less than that	meno di quello	mindre än det	weniger als	manj kot to
lin less_than_a_year_1778_Adv = mkiAdv "less than a year" ; --	Adv	1778	less than a year	meno di un anno	mindre än ett år	weniger als ein Jahr	manj kot eno leto
-- DERIVED 1779 Cl I've hurt my hand mi sono fatta male alla mano jag har skadat min hand ich habe meine Hand verletzt Sem si poškodoval roko 
-- DERIVED 1780 Cl I have a headache ho mal di testa jag har huvudvärk ich habe Kopfschmerzen imam glavobol 
-- DERIVED 1781 Cl my stomach hurts mi fa male lo stomaco jag har ont i magen mein Bauch tut weh me boli želodec 
-- DUPLICATEMAYBE lin beach_1782_CNP = mkiCNP "beach" "on" ; -- CNP
lin desert_1783_CNP = mkiCNP "desert" ; --	CNP	1783	desert	il deserto	öken	die Wüste	puščava
lin field_1784_CNP = mkiCNP "field" "on" ; --	CNP	1784	field	il campo	fält	das Feld	polje
lin flower_1785_CN = mkiCN "flower" ; --	CN	1785	flower	il fiore	blomma	die Blume	cvet
lin forest_1786_CNP = mkiCNP "forest" ; --	CNP	1786	forest	la foresta	skog	der Wald	gozd
-- DUPLICATEMAYBE lin hill_1787_CNP = mkiCNP "hill" "on" ; -- CNP
-- DUPLICATEMAYBE lin lake_1788_CNP = mkiCNP "lake" "at" ; -- CNP
lin land_1789_CNP = mkiCNP "land" "on" ; --	CNP	1789	land	la terra	land	das Land	zemljišče
lin moon_1790_CNP = mkiCNP "moon" "on" ; --	CNP	1790	moon	la luna	måne	der Mond	moon
lin mountain_1791_CNP = mkiCNP "mountain" "on" ; --	CNP	1791	mountain	la montagna	berg	das Gebirge	gora
-- DUPLICATEMAYBE lin ocean_1792_CNP = mkiCNP "ocean" ; -- CNP
-- DUPLICATEMAYBE lin plant_1793_CN = mkiCN "plant" ; -- CN
lin pond_1794_CNP = mkiCNP "pond" ; --	CNP	1794	pond	lo stagno	damm	der Teich	ribnik
lin river_1795_CNP = mkiCNP "river" "by" ; --	CNP	1795	river	il fiume	flod	der Fluss	river
-- DUPLICATEMAYBE lin rock_1796_CN = mkiCN "rock" ; -- CN
lin sand_1797_CN = mkiCN "sand" ; --	CN	1797	sand	la sabbia	sand	der Sand	pesek
lin sea_1798_CNP = mkiCNP "sea" ; --	CNP	1798	sea	il mare	hav	das Meer	morje
-- DUPLICATEMAYBE lin sky_1799_CN = mkiCN "sky" ; -- CN
-- DUPLICATEMAYBE lin star_1800_CN = mkiCN "star" ; -- CN
lin sun_1801_CN = mkiCN "sun" ; --	CN	1801	sun	il sole	sol	die Sonne	sonce
-- DUPLICATEMAYBE lin tree_1802_CN = mkiCN "tree" ; -- CN
-- DUPLICATE 1803 CNM water l'acqua vatten das Wasser voda DUPLICATE 1652 
-- DERIVED 1804 Cl I don't know how or when non so nè come nè quando jag vet inte hur eller när ich weiss nicht,wie oder wann Ne vem, kako in kdaj 
-- DERIVED lin I_don't_see_1805_CN = mkiCN "I don't see" ; -- Cl
-- DERIVED 1806 Cl I don't see anything non vedo nulla jag ser ingenting Ich sehe nichts Ne vidim ničesar 
-- DERIVED 1807 Cl I have no time non ho tempo jag har inte tid ich habe keine Zeit Nimam časa 
-- DERIVED 1808 Cl I have nothing to do non ho niente da fare jag har inget att göra ich habe nichts zu tun ničesar nimam za početi 
-- DERIVED 1809 Cl I never go away non vado mai via jag reser aldrig bort Ich gehe nie weg Nikoli ne izginejo 
-- DERIVED 1810 Cl I never go non vado mai jag går aldrig ich gehe nie Nikoli ne hodim 
-- DERIVED 1811 Cl it doesn't matter non importa det spelar ingen roll es spielt keine Rolle ni pomembno 
-- DERIVED 1812 Cl it's nothing non è nulla det är inget es ist nichts nič ni 
-- DERIVED 1813 Cl no one is coming nessuno viene det kommer ingen niemand kommt nihče ne prihaja 
-- DERIVED 1814 Cl nothing happened non è successo nulla det hände inget nichts ist passiert se ni nič zgodilo 
-- DERIVED 1815 Cl you don't see tu non vedi du ser inte Sie nicht sehen, ne vidite 
lin businessman_1816_CNH = mkCN (mkN "businessman" "businessmen") ; --	CNH	1816	businessman	l'uomo d'affari	affärsman	der Geschäftsmann	poslovnež
lin businesswoman_1817_CNH = mkCN (mkN "businesswoman" "businesswomen") ; --	CNH	1817	businesswoman	la donna d'affari	affärskvinna	der Geschäftsfrau	Poslovna ženska
-- DUPLICATEMAYBE lin carpenter_1818_CNH = mkiCNH "carpenter" ; -- CNH
lin construction_worker_1819_CNH = mkiCNH "construction worker" ; --	CNH	1819	construction worker	il muratore	byggarbetare	der Bauarbeiter	gradbinec
lin dentist_1820_CNH = mkiCNH "dentist" ; --	CNH	1820	dentist	il dentista	tandläkare	der Zahnarzt	zobozdravnik
-- DUPLICATEMAYBE lin doctor_1821_CNH = mkiCNH "doctor" ; -- CNH
lin electrician_1822_CNH = mkiCNH "electrician" ; --	CNH	1822	electrician	l'elettricista	elektriker	der Elektriker	električar
lin engineer_1823_CNH = mkiCNH "engineer" ; --	CNH	1823	engineer	l'ingegnere	ingenjör	der Ingenieur	inženir
-- DUPLICATEMAYBE lin farmer_1824_CNH = mkiCNH "farmer" ; -- CNH
lin full_time_1825_NPH det cn = mkNP det (mkCN (mkiAP "full-time") cn) ; --	Det -> CNH -> NPH	1825	full-time	a tempo pieno	heltid	die Vollzeit	polni delovni čas
lin journalist_1826_CNH = mkiCNH "journalist" ; --	CNH	1826	journalist	il giornalista	journalist	der Journalist	novinar
-- DUPLICATEMAYBE lin lawyer_1827_CNH = mkiCNH "lawyer" ; -- CNH
lin musician_1828_CNH = mkiCNH "musician" ; --	CNH	1828	musician	il musicista	musiker	der Musiker	glasbenik
lin part_time_1829_NPH det cn = mkNP det (mkCN (mkiAP "part-time") cn) ; --	Det -> CNH -> NPH	1829	part-time	part time	deltid	die Teilzeit	krajši delovni čas
lin policeman_1830_CNH = mkCN (mkN "policeman" "policemen") ; --	CNH	1830	policeman	il poliziotto	polis	der Polizist	policist
-- DUPLICATEMAYBE lin professor_1831_CNH = mkiCNH "professor" ; -- CNH
lin retired_1832_CNH = mkiCNH "retired" ; --	CNH	1832	retired	il pensionato	pensionär	im Ruhestand	upokojen
lin salesman_1833_CNH = mkCN (mkN "salesman" "salesmen") ; --	CNH	1833	salesman	il commesso	expedit	der Verkäufer	prodajalec
-- DUPLICATEMAYBE lin secretary_1834_CNH = mkiCNH "secretary" ; -- CNH
lin stay_at_home_dad_1835_CNH = mkiCNH "stay-at-home dad" ; --	CNH	1835	stay-at-home dad/mom	il casalingo/la casalinga	hemmafru/hemmaman	nichberufstätige Vater/Mutter	gospodinjec
lin stay_at_home_mom_1835_CNH = mkiCNH "stay-at-home mom" ; --	CNH	1835	stay-at-home dad/mom	il casalingo/la casalinga	hemmafru/hemmaman	nichberufstätige Vater/Mutter	gospodinjec
lin steady_job_1836_CN = mkiCN "steady job" ; --	CN	1836	steady job	il lavoro fisso	fast arbete	der fester Arbeitsplatz	stalna služba
lin taxi_driver_1837_CNH = mkiCNH "taxi driver" ; --	CNH	1837	taxi driver	il tassista	taxichaufför	der Taxifahrer	voznik taksija
-- DUPLICATE lin teacher_1838_CNH = mkiCNH "teacher" ; -- CNH
lin unemployed_1839_CNH = mkCN (mkN "unemployed" "unemployed") ; --	CNH	1839	unemployed	il disoccupato	arbetslös	der Arbeitsloser	brezposeln
lin veterinarian_1840_CNH = mkiCNH "veterinarian" ; --	CNH	1840	veterinarian	il veterinario	veterinär	der Tierarzt	veterinar
lin writer_1841_CNH = mkiCNH "writer" ; --	CNH	1841	writer	lo scrittore	författare	der Schriftsteller	pisatelj
-- DUPLICATE lin adult_1842_CNH = mkiCNH "adult" ; -- CNH
-- DUPLICATEMAYBE lin boy_1843_CNH = mkiCNH "boy" ; -- CNH
lin child__1844_CNH = mkCN (mkN "child" "children") ; --	CNH	1844	child 	il bambino	barn	das Kind	otrok
lin famous_1845_AP = mkiAP "famous" ; --	AP	1845	famous	famoso	berömd	berühmt	slaven
-- DUPLICATEMAYBE lin girl_1846_CNH = mkiCNH "girl" ; -- CNH
lin intelligent_1847_AP = mkiAP "intelligent" ; --	AP	1847	intelligent	intelligente	intelligent	intelligent	inteligentni
-- DUPLICATE lin man_1848_CNH = mkiCNH "man" ; -- CNH
-- DUPLICATEMAYBE lin person_1849_CNH = mkiCNH "person" ; -- CNH
lin teenager_1850_CNH = mkiCNH "teenager" ; --	CNH	1850	teenager	l'adolescente	tonåring	der Teenager	teen
-- DUPLICATE lin woman_1851_CNH = mkiCNH "woman" ; -- CNH
-- DERIVED 1852 Utt please write that for me per favore, me lo scrive var snäll och skriv ner det åt mig Schreiben Sie das für mich,bitte prosim, napišite zame
lin at_what_time_1853_IAdv = lin IAdv (Pre.ss "at what time") ; --	IAdv	1853	at what time does the store open?	a che ora apre il negozio?	när öppnar affären?	Wann öfnet der Laden?	kdaj se trgovina odpre?
-- DERIVED 1853 QCl at what time does the store open? a che ora apre il negozio? när öppnar affären? Wann öfnet der Laden? kdaj se trgovina odpre? 
-- DERIVED 1854 QCl at what time does the store close? a che ora chiude il negozio? när stänger affären? Wann schliest der aden? kdaj se trgovina zapre? 
-- DUPLICATE 1855 CNM cash contanti kontanter das Bargeld gotovina DUPLICATE 0159 
-- DUPLICATE 1856 CN credit card carta di credito kreditkort die Bankkarte kreditne kartice DUPLICATE 0261
lin online_1857_AdvP = mkiAdvP "online" ; --	AdvP	1857	can I order this online?	posso ordinarlo su internet?	kan jag beställa det på nätet?	Kann ich diese online bestellen?	ali lahko naročim prek spleta?
-- DERIVED 1857 QCl can I order this online? posso ordinarlo su internet? kan jag beställa det på nätet? Kann ich diese online bestellen? ali lahko naročim prek spleta? 
lin women's_clothing_1858_CN = mkiCN "women's clothing" ; --	CN	1858	women's clothing	l'abbigliamento donne	damkläder	die Frauenkleidung	ženska oblačila
lin men's_clothing_1859_CN = mkiCN "men's clothing" ; --	CN	1859	men's clothing	l'abbigliamento uomini	herrkläder	die Männerkleidung	moška oblačila
-- DUPLICATE lin tie_1860_CN = mkiCN "tie" ; -- CN
-- DUPLICATE 1861 CNP bookstore la libreria bokhandel die Buchhandlung knjigarna DUPLICATE 1319 
-- DUPLICATEMAYBE lin bakery_1862_CNP = mkiCNP "bakery" ; -- CNP
lin American_football_1863_CNM = mkiCNM "American football" ; --	CNM	1863	American football	il futbol americano	amerikansk fotboll	der American Football	Ameriški nogomet
-- DUPLICATEMAYBE lin ball_1864_CN = mkiCN "ball" ; -- CN
lin baseball_1865_CNM = mkiCNM "baseball" ; --	CNM	1865	baseball	il baseball	baseball	der Baseball	bejzbol
lin basketball_1866_CNM = mkiCNM "basketball" ; --	CNM	1866	basketball	la pallacanestro	basket	der Basketball	košarka
lin biking_1867_CNM = mkiCNM "biking" ; --	CNM	1867	biking	il ciclismo	cykling	Radfahren	kolesarjenje
-- DUPLICATEMAYBE lin champion_1868_CNH = mkiCNH "champion" ; -- CNH
lin game_1869_CN = mkiCN "game" ; --	CN	1869	game	la partita	match	das Spiel	igra
lin player_1870_CNH = mkiCNH "player" ; --	CNH	1870	player	il giocatore	spelare	der Spieler	predvajalnik
lin soccer_football_1871_CNM = mkiCNM "soccer" | mkiCNM "football" ; --	CNM	1871	soccer,football	il calcio	fotboll	der Fussball/er Fussball	nogomet / nogomet
-- DUPLICATEMAYBE lin stadium_1872_CNP = mkiCNP "stadium" "at" ; -- CNP
lin swimming_1873_CNM = mkiCNM "swimming" ; --	CNM	1873	swimming	il nuoto	simning	das Schwimmen	kopanje
-- DUPLICATEMAYBE lin team_1874_CNH = mkiCNH "team" ; -- CNH
-- DUPLICATEMAYBE lin tennis_1875_CNM = mkiCNM "tennis" ; -- CNM
-- DUPLICATE 1876 VP draw,tie pareggiare oavgjort anbinden pripraviti / kravato
lin go_camping_1877_V = partV I.go_V "camping" ; --	V	1877	go camping	andare in campeggio	att campa	kampieren	iti kampiranje
lin go_hiking_1878_V = partV I.go_V "hiking" ; --	V	1878	go hiking	camminare in montagna	att fotvandra	bergwandern	(Iti), pohodništvo
lin lose_1879_V = I.lose_V ; --	V	1879	lose	perdere	att förlora	verlieren	izgubiti
lin play_1880_V = mkiV "play" ; --	V	1880	play	giocare	att spela	zu spielen (ein Spiel)	igrati (igra)
lin play_1880_V2 = mkiV2 "play" ; --	V2	1880	play	giocare	att spela	zu spielen (ein Spiel)	igrati (igra)
lin play_sport_1881_VP cnm = mkVP (mkV2 "play") (mkNP cnm) ; --	CNM -> VP	1881	play a sport	praticare uno sport	att idka någon sport	eine Sportart zu spielen	igrati šport
lin play_cards_1882_VP = mkVP (mkV2 "play") (mkNP aPl_Det (mkN "card")) ; --	VP	1882	play cards	giocare a carte	att spela kort	Karten spielen	za igranje kart
lin play_billiards_1883_VP = mkVP (mkV2 "play") (mkNP aPl_Det (mkN "billiard")) ; --	VP	1883	play pool, play billiards	giocare a biliardo	att spela biljard	Pool/Billard spielen	igrati Bazen / biljard
lin win_1884_V = I.win_V ; --	V	1884	win	vincere	att vinna	siegen	zmagati
lin win_1884_V2 = mkV2 I.win_V ; --	V2	1884	win	vincere	att vinna	siegen	zmagati
-- DUPLICATE lin telephone_1885_CN = mkiCN "telephone" ; -- CN
-- DERIVED 1886 Cl I have to make a phone call devo fare una telefonata jag måste ringa ett samtal ich muss einen Anruf machen Moram opraviti telefonski klic 
-- DERIVED 1887 QCl may I use your cell phone? posso usare il tuo telefonino? kan jag låna din mobiltelefon? Kann ich Ihr Handy beutzen? ali lahko uporabljate svoj mobilni telefon? 
-- DERIVED 1888 Utt what number, please? che numero, per favore? vilket nummer? Welche Nummer,bitte? katera številka, prosim?
lin busy_1889_AP = mkiAP "busy" ; --- the line is busy --	AP	1889	the line is busy	la linea è occupata	det är upptaget	die Leitung ist besetzt	je linija zasedena
-- DERIVED 1889 Cl the line is busy la linea è occupata det är upptaget die Leitung ist besetzt je linija zasedena 
-- DERIVED 1890 QCl where is the computer? dov'è il computer? var är datorn? Wo ist der Computer? kjer je računalnik? 
-- DERIVED 1891 Cl I need to send an email devo mandare un messaggio di posta elettronica jag behöver skicka ett mejl ich muss eine email senden Moram poslati e-pošto
lin connect_to_internet_1892_VP = mkVP (mkV2 (mkV "connect") to_Prep) (mkNP the_Det (mkN "internet")) ; --	VP	1892	can I connect to the internet?	posso collegarmi con internet?	kan jag gå ut på nätet?	Kann ich mich ins Internet einwählen?	ali se lahko povežem z internetom?
-- DERIVED 1892 QCl can I connect to the internet? posso collegarmi con internet? kan jag gå ut på nätet? Kann ich mich ins Internet einwählen? ali se lahko povežem z internetom? 
-- DERIVED 1893 QCl do you have a website? avete un sito web? har ni en webbsida? Hast du eine Website? Imaš spletno stran?
lin what_time_is_it_1894_Utt = mkiUtt "what time is it" ; --	Utt	1894	what time is it?	che ore sono?	vad är klockan?	Wie spät ist es?	koliko je ura?
-- DERIVED 1894 QCl what time is it? che ore sono? vad är klockan? Wie spät ist es? koliko je ura?
-- DERIVED 1895 Cl it's 1:00 pm sono le tredici den är 13:00 es ist 13:00Uhr ura je 13:00 
-- DERIVED 1896 Cl it's 2:00 pm sono le quattordici den är 14:00 es ist 14:00Uhr ura je 14:00 
-- DERIVED 1897 Cl it's 2:00 am sono le due den är 2:00 es ist 02.00 Uhr ura je 2:00 
lin today_1898_AdvT = mkiAdvT "today" ; --	AdvT	1898	today	oggi	idag	heute	danes
lin tomorrow_1899_AdvT = mkiAdvT "tomorrow" ; --	AdvT	1899	tomorrow	domani	imorgon	morgen	jutri
lin yesterday_1900_AdvT = mkiAdvT "yesterday" ; --	AdvT	1900	yesterday	ieri	igår	gestern	včeraj
lin now_1901_AdvT = mkiAdvT "now" ; --	AdvT	1901	now	ora	nu	jetzt	zdaj
lin later_1902_AdvT = mkiAdvT "later" ; --	AdvT	1902	later	dopo	senare	später	pozneje
lin right_away_1903_AdvT = mkiAdvT "right away" ; --	AdvT	1903	right away	subito	genast	jetzt sofort	takoj
lin abdomen_1904_CN = mkiCN "abdomen" ; --	CN	1904	abdomen	il ventre	buken	das Abdomen	trebuh
-- DUPLICATEMAYBE lin belly_1905_CN = mkiCN "belly" ; -- CN
lin ankle_1906_CN = mkiCN "ankle" ; --	CN	1906	ankle	la caviglia	ankeln	die Fessel	gleženj
-- DUPLICATE lin arm_1907_CN = mkiCN "arm" ; -- CN
lin behind_1908_CN = mkiCN "behind" ; --	CN	1908	behind	il sedere	stjärt	hinter	zadaj
-- DUPLICATEMAYBE lin blood_1909_CNM = mkiCNM "blood" ; -- CNM
lin bone_1910_CN = mkiCN "bone" ; --	CN	1910	bone	l'osso	ben	der Knochen	kosti
-- DUPLICATEMAYBE lin brain_1911_CN = mkiCN "brain" ; -- CN
-- DUPLICATEMAYBE lin breast_1912_CN = mkiCN "breast" ; -- CN
-- DUPLICATEMAYBE lin cheek_1913_CN = mkiCN "cheek" ; -- CN
-- DUPLICATEMAYBE lin chest_1914_CN = mkiCN "chest" ; -- CN
-- DUPLICATEMAYBE lin chin_1915_CN = mkiCN "chin" ; -- CN
lin ear_1916_CN = mkiCN "ear" ; --	CN	1916	ear	l'orecchio	öra	das Ohr	uho
-- DUPLICATEMAYBE lin elbow_1917_CN = mkiCN "elbow" ; -- CN
-- DUPLICATEMAYBE lin eye_1918_CN = mkiCN "eye" ; -- CN
lin eyebrow_1919_CN = mkiCN "eyebrow" ; --	CN	1919	eyebrow	il sopracciglio	ögonbryn	die Augenbraue	obrvi
lin eyelash_1920_CN = mkiCN "eyelash" ; --	CN	1920	eyelash	il ciglio	ögonfrans	die Wimper	trepalnice
-- DUPLICATEMAYBE lin face_1921_CN = mkiCN "face" ; -- CN
-- DUPLICATEMAYBE lin finger_1922_CN = mkiCN "finger" ; -- CN
-- DUPLICATEMAYBE lin foot_1923_CN = mkiCN "foot" ; -- CN
lin forehead_1924_CN = mkiCN "forehead" ; --	CN	1924	forehead	la fronte	panna	die Stirn	čelo
lin hair_1925_CN = mkiCN "hair" ; --	CN	1925	hair	i capelli	hår	die Haare	lasje
lin hair_1925_CNM = mkiCNM "hair" ; --	CNM	1925	hair	i capelli	hår	die Haare	lasje
-- DUPLICATE lin hand_1926_CN = mkiCN "hand" ; -- CN
-- DUPLICATE lin head_1927_CN = mkiCN "head" ; -- CN
-- DUPLICATE lin heart_1928_CN = mkiCN "heart" ; -- CN
lin hips_1929_CN = mkiCN "hips" ; --	CN	1929	hips	i fianchi	höfter	die Hüften	boki
lin knee_1930_CN = mkiCN "knee" ; --	CN	1930	knee	il ginocchio	knä	das Knie	koleno
-- DUPLICATE lin leg_1931_CN = mkiCN "leg" ; -- CN
lin lung_1932_CN = mkiCN "lung" ; --	CN	1932	lung	il polmone	lunga	die Lungen	pljuča
-- DUPLICATEMAYBE lin mouth_1933_CN = mkiCN "mouth" ; -- CN
-- DUPLICATEMAYBE lin muscle_1934_CN = mkiCN "muscle" ; -- CN
-- DUPLICATEMAYBE lin neck_1935_CN = mkiCN "neck" ; -- CN
-- DUPLICATEMAYBE lin nose_1936_CN = mkiCN "nose" ; -- CN
lin shoulder_1937_CN = mkiCN "shoulder" ; --	CN	1937	shoulder	la spalla	axel	die Schultern	ramena
-- DUPLICATEMAYBE lin skin_1938_CNM = mkiCNM "skin" ; -- CN
-- DUPLICATEMAYBE lin stomach_1939_CN = mkiCN "stomach" ; -- CN
lin tendon_1940_CN = mkiCN "tendon" ; --	CN	1940	tendon	il tendine	sena	die Sehne	kite
-- DUPLICATEMAYBE lin thumb_1941_CN = mkiCN "thumb" ; -- CN
lin toe_1942_CN = mkiCN "toe" ; --	CN	1942	toe	l'alluce	tå	der Zeh	toe
-- DUPLICATEMAYBE lin tongue_1943_CN = mkiCN "tongue" ; -- CN
-- DUPLICATEMAYBE lin tooth_1944_CN = mkiCN "tooth" ; -- CN
lin waist_1945_CN = mkiCN "waist" ; --	CN	1945	waist	la vita	midja	die Taille	pas
-- DUPLICATEMAYBE lin wrist_1946_CN = mkiCN "wrist" ; -- CN
-- DUPLICATE 1947 AdvT last week la settimana scorsa förra veckan letzte Woche prejšnji teden DUPLICATE 1532 
lin next_week_1948_AdvT = mkiAdvT "next week" ; --	AdvT	1948	next week	la settimana prossima	nästa vecka	nächste Woche	naslednji teden
lin in_n_weeks_1949_AdvT card = S.mkAdv in_Prep (mkNP card (mkN "week")) ; --	Card -> AdvT	1949	in two weeks	fra due settimane	om två veckor	in zwei Wochen	V dveh tednih
lin n_weeks_ago_1950_AdvT card = P.mkAdv ((mkUtt (mkNP card (mkN "week"))).s ++ "ago") ; --	Card -> AdvT	1950	two weeks ago	due settimane fa	för två veckor sedan	zwei Wochen zuvor	pred dvema tednoma
-- DUPLICATEMAYBE lin this_month_1951_AdvT = mkiAdvT "this month" ; -- AdvT
-- DUPLICATEMAYBE lin last_month_1952_AdvT = mkiAdvT "last month" ; -- AdvT
-- DUPLICATEMAYBE lin next_month_1953_AdvT = mkiAdvT "next month" ; -- AdvT
lin the_coming_month_1954_AdvT = mkiAdvT "the coming month" ; --	AdvT	1954	the coming month	il mese che viene	kommande månad	die kommenden Monate	prihodnji mesec
lin in_n_months_1955_AdvT card = S.mkAdv in_Prep (mkNP card (mkN "month")) ; --	Card -> AdvT	1955	in two months	fra due mesi	om två månader	in zwei Monaten	v dveh mesecih
lin n_months_ago_1956_AdvT card = P.mkAdv ((mkUtt (mkNP card (mkN "month"))).s ++ "ago") ; --	Card -> AdvT	1956	this year	quest'anno	i år	dieses Jahr	to leto
lin this_year_1956_AdvT = mkiAdvT "this year" ; --	AdvT	1956	this year	quest'anno	i år	dieses Jahr	to leto
lin last_year_1957_AdvT = mkiAdvT "last year" ; --	AdvT	1957	last year	l'anno scorso	förra året	letztes Jahr	lansko leto
lin next_year_1958_AdvT = mkiAdvT "next year" ; --	AdvT	1958	next year	l'anno prossimo	nästa år	nächstes Jahr	naslednje leto
lin the_coming_year_1959_AdvT = mkiAdvT "the coming year" ; --	AdvT	1959	the coming year	l'anno che viene	kommande år	das kommende Jahr	prihodnje leto
lin in_n_years_1960_AdvT card = S.mkAdv in_Prep (mkNP card (mkN "year")) ; --	Card -> AdvT	1960	in two years	fra due anni	om två år	in zwei Jahren	V dveh letih
lin n_years_ago_1960_AdvT card = P.mkAdv ((mkUtt (mkNP card (mkN "year"))).s ++ "ago") ; --	Card -> AdvT	1960	in two years	fra due anni	om två år	in zwei Jahren	V dveh letih
lin how_long_ago_1962_IAdv = lin IAdv (Pre.ss "how long ago") ; --	IAdv	1962	how long ago	quanto tempo fa?	för hur länge sedan?	Wie lange her?	kako dolgo nazaj?
-- DERIVED 1963 Cl I have time. io ho tempo jag har tid Ich habe Zeit. Imam čas. 
-- DERIVED 1964 Cl I don't have any time io non ho tempo jag har inte tid Ich habe keine Zeit Nimam časa 
-- DERIVED 1965 Cl I'm hungry io ho fame jag är hungrig ich habe Hunger Lačen sem 
-- DERIVED 1966 Cl I'm thirsty ho sete jag är törstig ich habe Durst žejen sem 
-- DERIVED 1967 Cl I'm cold ho freddo jag fryser es ist mir kalt zebe me 
-- DERIVED 1968 Cl I'm hot ho caldo jag är varm Ich bin heiß mi je vroče 
-- DERIVED 1969 Cl it's cold fa freddo det är kallt es ist kalt je hladno 
-- DERIVED 1970 Cl it's hot fa caldo det är varmt es ist heiß je vroče 
-- DERIVED 1971 Cl it's windy tira vento det blåser es ist windig vetrovno je 
lin cloud_1972_CN = mkiCN "cloud" ; --	CN	1972	cloud	la nuvola	moln	die Wolke	oblak
lin degree_1973_CN = mkiCN "degree" ; --- grado (measure) --	CN	1973	degree	il grado	grad	der Grad	stopnja
lin fog_1974_CNM = mkiCNM "fog" ; --	CNM	1974	fog	la nebbia	dimma	der Nebel	megla
lin hurricane_1975_CN = mkiCN "hurricane" ; --	CN	1975	hurricane	l'uragano	orkan	der Hurrikan	orkan
lin it_is_sunny_1976_Cl = mkCl it_NP (mkA "sunny") ; --	Cl	1976	it's sunny	c'è il sole	det är soligt	es ist sonnig	sončno je
-- DUPLICATEMAYBE lin lightning_1977_CN = mkiCN "lightning" ; -- CN
lin rain_1978_CNM = mkiCNM "rain" ; --	CNM	1978	rain	la pioggia	regn	der Regen	dež
-- DUPLICATEMAYBE lin snow_1979_CNM = mkiCNM "snow" ; -- CNM
lin storm_1980_CN = mkiCN "storm" ; --	CN	1980	storm	il temporale	storm	der Sturm	nevihta
-- DUPLICATE 1981 CN sun il sole sol die Sonne sonce DUPLICATE 1801 
-- DUPLICATEMAYBE lin temperature_1982_CN = mkiCN "temperature" ; -- CN
lin thunder_1983_CNM = mkiCNM "thunder" ; --	CNM	1983	thunder	il tuono	åska	der Donner	Grom
-- DUPLICATEMAYBE lin umbrella_1984_CN = mkiCN "umbrella" ; -- CN
lin wind_1985_CNM = mkiCNM "wind" ; --	CNM	1985	wind	il vento	blåst	der Wind	veter

-- auxiliary words; some may be superfluous

lin a_lot__Adv = mkiAdv "a lot" ; --	Adv
lin about__Prep = mkiPrep "about" ; --	Prep
lin adjust__V2 = mkiV2 "adjust" ; --	V2
lin afraid__Adv = mkiAdv "afraid" ; --	Adv
lin again__AdvT = mkiAdv "again" ; --	AdvT
lin agree__V = mkiV "agree" ; --	V
lin alive__Adv = mkiAdv "alive" ; --	Adv
lin alone__Adv = mkiAdv "alone" ; --	Adv
lin another__Det = mkiSgDet "another" ; --	Det
lin any__Quant = P.mkQuant "any" "any" ; --	Quant
lin anything__NP = mkiNP "anything" ; --	NP
lin ask__V2 = mkiV2 "ask" ; --	V2
lin at__PrepP = mkiPrepP "at" ; --	PrepP
lin attach__V3 = mkiV3 "attach" ; --	V3
lin be_fine__VP = mkVP fine__AP ; --	VP
lin be_lost__VP = mkVP (mkA "lost") ; --	VP
lin bed__CNP = mkiCNP "bed" ; --	CNP
lin beg_pardon__V2 = mkV2 (partV (mkV "beg") "pardon") ; --	V2
lin bike__CN = mkiCN "bike" ; --	CN
lin billiards__CNPL = mkiCNPL "billiards" ; --	CNPL
lin biscuit__CN = mkiCN "biscuit" ; --	CN
lin blanket__CN = mkiCN "blanket" ; --	CN
lin blow__V2 = mkV2 I.blow_V ; --	V2
lin bored__AP = mkiAP "bored" ; --	AP
lin bring__V3 = mkV3 I.bring_V ; --	V3
lin camping__CNP = mkiCNP "camping" "on" ; --	CNP
lin candle__CN = mkiCN "candle" ; --	CN
lin candy__CN = mkiCN "candy" ; --	CN
lin care__S nph = mkS negativePol (mkCl nph (mkV "care")) ; --	NPH -> S
lin cell__CN = mkiCN "cell" ; --	CN
lin change__V2 = mkiV2 "change" ; --	V2
lin channel__CN = mkiCN "channel" ; --	CN
lin clear__V2 = mkiV2 "clear" ; --	V2
lin coffeemaker__CN = mkiCN "coffeemaker" ; --	CN
lin color__CN = mkiCN "color" ; --	CN
lin communicate__V = mkiV "communicate" ; --	V
lin connect__V2 = mkiV2 "connect" ; --	V2
lin correct__AP = mkiAP "correct" ; --	AP
lin cover__CN = mkiCN "cover" ; --	CN
lin cover__V2 = mkV2 (mkV "cover" "covered") ; --	V2
lin cross__V = mkiV "cross" ; --	V
lin dad__CNH = mkiCNH "dad" ; --	CNH
lin decorate__V2 = mkiV2 "decorate" ; --	V2
lin diaper__CN = mkiCN "diaper" ; --	CN
lin dice__CN = mkiCN "dice" ; --	CN
lin different__AP = mkiAP "different" ; --	AP
lin dizzy__AP = mkiAP "dizzy" ; --	AP
lin draw__V = I.draw_V ; --	V
lin dressed__AP = mkiAP "dressed" ; --	AP
lin empty__AP = mkiAP "empty" ; --	AP
lin envelope__CN = mkiCN "envelope" ; --	CN
lin espresso__CN = mkiCN "espresso" ; --	CN
lin expect__VV = mkiVV "expect" ; --	VV
lin fiancé__CNH = mkiCNH "fiancé" ; --	CNH
lin fiancée__CNH = mkiCNH "fiancée" ; --	CNH
lin film__CN = mkiCN "film" ; --	CN
lin fine__AP = mkiAP "fine" ; --	AP
lin flip__V2 = mkiV2 "flip" ; --	V2
lin flush__V2 = mkiV2 "flush" ; --	V2
lin fold__V2 = mkiV2 "fold" ; --	V2
lin folder__CN = mkiCN "folder" ; --	CN
lin glue__V2 = mkiV2 "glue" ; --	V2
lin happen__V = mkV "happen" "happened" ; --	V
lin hate__V2 = mkiV2 "hate" ; --	V2
lin hear__V = I.hear_V ; --	V
lin hike__V = mkiV "hike" ; --	V
lin hold__V2 = mkV2 I.hold_V ; --	V2
lin home__Adv = mkiAdv "home" ; --	Adv
lin in__PrepP = S.in_Prep ; --	PrepP
lin into__Prep = mkiPrep "into" ; --	Prep
lin lead__CNM = mkiCNM "lead" ; --	CNM
lin leave__V2 = mkV2 I.leave_V ; --	V2
lin lens__CN = mkiCN "lens" ; --	CN
lin lexicon__CN = mkiCN "lexicon" ; --	CN
lin lie__V = I.lie_V ; -- lie down --	V
lin like__V2 = mkiV2 "like" ; --	V2
lin live__V = mkiV "live" ; --	V
lin lose__V2 = mkV2 I.lose_V ; --	V2
lin lost__AP = mkiAP "lost" ; --	AP
lin lottery__CN = mkiCN "lottery" ; --	CN
lin lower__V2 = mkV2 (mkV "lower" "lowered") ; --	V2
lin make__V2 = mkV2 I.make_V ; --	V2
lin match__CN = mkiCN "match" ; --	CN
lin matter__V = mkV "matter" "mattered" ; --	V
lin meadow__CNP = mkiCNP "meadow" "on" ; --	CNP
lin metro__CNP = mkiCNP "metro" ; --	CNP
lin mind__CN = mkiCN "mind" ; --	CN
lin minute__CN = mkiCN "minute" ; --	CN
lin mom__CNH = mkiCNH "mom" ; --	CNH
lin mow__V2 = mkiV2 "mow" ; --	V2
lin nail__CN = mkiCN "nail" ; --	CN
lin nap__CN = mkiCN "nap" ; --	CN
lin on__PrepP = S.on_Prep ; --	PrepP
lin online__Adv = mkiAdv "online" ; --	Adv
lin order__V2 = mkV2 (mkV "order" "ordered") ; --	V2
lin over_there__AdvP = mkiAdvP "over there" ; --	AdvP
lin page__CN = mkiCN "page" ; --	CN
lin pass__V2 = mkV2 "pass" ; --	V2
lin peace__CNP = mkiCNP "peace" ; --	CNP
lin piece__CN = mkiCN "piece" ; --	CN
lin please__Utt imp = mkiUtt ( ("please" ++ (mkUtt imp).s)) ; --	Imp -> Utt
lin plumb__V2 = mkiV2 "plumb" ; --	V2
lin programming__CNM = mkiCNM "programming" ; --	CNM
lin push__V2 = mkiV2 "push" ; --	V2
lin question__CN = mkiCN "question" ; --	CN
lin quiet__AP = mkiAP "quiet" ; --	AP
lin raise__V2 = mkiV2 "raise" ; --	V2
lin receipt__CN = mkiCN "receipt" ; --	CN
lin repeat__V = mkiV "repeat" ; --	V
lin repeat__V2 = mkiV2 "repeat" ; --	V2
lin respond__V2 = mkiV2 "respond" ; --	V2
lin revel__V = mkiV "revel" ; --	V
lin ride__V2 = mkV2 I.ride_V ; --	V2
lin rinse__V2 = mkiV2 "rinse" ; --	V2
lin rug__CN = mkiCN "rug" ; --	CN
lin save__V2 = mkiV2 "save" ; --	V2
lin seal__V2 = mkiV2 "seal" ; --	V2
lin send__V2 = mkV2 I.send_V ; --	V2
lin sensor__CN = mkiCN "sensor" ; --	CN
lin shake__V = I.shake_V ; --	V
lin shake__V2 = mkV2 I.shake_V ; --	V2
lin show__V3 = mkV3 I.show_V ; --	V3
lin side__CN = mkiCN "side" ; --	CN
lin sit__V = I.sit_V ; --	V
lin slower__Interj = mkiInterj "slower" ; --	Interj
lin so__Adv = mkiAdv "so" ; --	Adv
lin somewhere__AdvP = mkiAdvP "somewhere" ; --	AdvP
lin speak__V = I.speak_V ; --	V
lin spell__V2 = mkV2 "spell" ; --	V2
lin start__V2 = mkiV2 "start" ; --	V2
lin strike__V2 = mkV2 I.strike_V ; --	V2
lin strip__V2 = mkiV2 "strip" ; --	V2
lin swear__V = I.swear_V ; --	V
lin symbol__CN = mkiCN "symbol" ; --	CN
lin talk__V = mkiV "talk" ; --	V
lin tap__CN = mkiCN "tap" ; --	CN
lin time__CNM = mkiCNM "time" ; --	CNM
lin trendy__AP = mkiAP "trendy" ; --	AP
lin trousers__CNPL = mkiCNPL "trousers" ; --	CNPL
lin truth__CNM = mkiCNM "truth" ; --	CNM
lin try__VV = mkiVV "try" ; --	VV
lin turn_round__V = partV (mkV "turn") "round" ; --	V
lin unwrap__V2 = mkiV2 "unwrap" ; --	V2
lin volume__CN = mkiCN "volume" ; --	CN
lin walk__V = mkiV "walk" ; --	V
lin weather__CNM = mkiCNM "weather" ; --	CNM
lin weed__CNM = mkiCNM "weed" ; --	CNM
lin wipe__V2 = mkiV2 "wipe" ; --	V2
lin worthless__AP = mkiAP "worthless" ; --	AP

lin timeAdvT t = S.mkAdv (mkPrep "at") t ; --	Time -> AdvT
lin it_is_time_Cl t = mkCl it_NP t ; --	Time -> Cl

---	to decide: what times to include
lin am1_Time = mkiNP "1:00 am" ; --	Time
lin am2_Time = mkiNP "2:00 am" ; --	Time
lin pm1_Time = mkiNP "1:00 pm" ; --	Time
lin pm2_Time = mkiNP "2:00 pm" ; --	Time

}
