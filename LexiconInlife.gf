abstract LexiconInlife = SyntaxInlife ** {

flags startcat=Utt ;

fun above_0001_PrepP : PrepP ;
fun account_0002_CN : CN ;
fun actor_0003_CNH : CNH ;
fun actress_0004_CNH : CNH ;
fun adapted_computer_0005_CN : CN ;
fun adapted_game_0006_CN : CN ;
fun address_0007_V2 : V2 ;
fun address_0008_CN : CN ;
fun adjust_down_0009_V2 : V2 ;
fun admirable_0010_AP : AP ;
fun adult_0011_CNH : CNH ;
fun baby_0011_CNH : CNH ;
fun advice_0012_V2 : V2 ;
fun aerial_0013_Adv : Adv ;
fun afternoon_0014_CNT : CNT ;
fun after_shave_0015_CN : CN ;
fun airport_0016_CNP : CNP ;
fun all_done_0017_Interj : Interj ;
fun allergic_0018_AP : AP ;
fun alley_0019_CNP : CNP ;
fun always_0020_AdV : AdV ;
fun ambulance_0021_CN : CN ;
fun analcolic_beer_0022_CNM : CNM ;
fun ananas_juice_0023_CNM : CNM ;
-- DERIVED 0024 Conj and e och und in 
fun somebody_0025_NPH : NPH ;
fun apartment_0026_CNP : CNP ;
fun appetite_0027_CNM : CNM ;
fun apple_juice_0028_CNM : CNM ;
fun apple_0029_CN : CN ;
fun appointment_0030_CN : CN ;
fun apricot_0031_CN : CN ;
-- DERIVED 0032 Month April Aprile april der April april 
fun April_Fool's_Day_0033_NP : NP ;
fun arm_0035_CN : CN ;
fun around_0036_PrepP : PrepP ;
fun art_0037_CNM : CNM ;
fun ask_0038_V3 : V3 ;
fun question_0038_CN : CN ;
fun yes_no_question_0039_CN : CN ;
fun attractive_0040_AP : AP ;
-- DERIVED 0041 Month August Agosto augusti der August avgust 
fun author_0042_CNH : CNH ;
fun away_0043_AdvP : AdvP ;
fun awful_0044_AP : AP ;
-- DUPLICATE lin awful_0045_AP = mkiAP "awful" ; -- AP
fun back_0046_CN : CN ;
fun back_0047_AdvP : AdvP ;
-- DUPLICATE lin back_0048_CN = mkiCN "back" ; -- CN
fun bad_0049_AP : AP ;
fun bad_day_0050_CNT : CNT ;
fun badly_0051_Adv : Adv ;
fun bad_man_0052_CNH : CNH ;
-- DUPLICATEMAYBE lin bad_0053_AP = mkiAP "bad" ; -- AP
fun bag_0054_CN : CN ;
fun baker_0055_CNH : CNH ;
fun baking_powder_0056_CNM : CNM ;
fun ball_bath_0057_CNP : CNP ;
fun ball_of_wool_0058_CN : CN ;
fun ball_0059_CN : CN ;
fun banana_0060_CN : CN ;
fun bandage_0061_CN : CN ;
fun band_0062_CN : CN ;
fun band_0063_CNH : CNH ;
fun bank_0064_CNP : CNP ;
fun bank_teller_0065_CNH : CNH ;
fun basin_0066_CNP : CNP ;
-- DUPLICATEMAYBE lin basin_0067_CNP = mkiCNP "basin" ; -- CNP
fun bath_cap_0068_CN : CN ;
fun bathing_0069_CNM : CNM ;
fun bathing_suit_0070_CN : CN ;
fun bathroom_0071_CNP : CNP ;
fun battery_0072_CN : CN ;
fun beach_bag_0073_CN : CN ;
fun beach_0074_CNP : CNP ;
fun beach_towel_0075_CN : CN ;
fun beautiful_0076_AP : AP ;
fun beautiful_clothe_0077_CN : CN ;
fun beautiful_show_0078_CN : CN ;
fun bed_for_visit_0079_CN : CN ;
fun bedroom_0080_CNP : CNP ;
fun bed_time_0081_CNT : CNT ;
fun beef_0082_CNM : CNM ;
fun beer_0083_CNM : CNM ;
-- DERIVED 0084 Copula be essere vara sein biti 
fun belly_0085_CN : CN ;
fun belt_0086_CN : CN ;
fun best_wishes_0087_Interj : Interj ;
fun big_0088_AP : AP ;
fun bird_food_0089_CNM : CNM ;
fun bird_house_0090_CN : CN ;
fun bite_0091_V2 : V2 ;
fun black_cat_0092_CNH : CNH ;
fun blender_0093_CN : CN ;
fun blood_pressure_0094_CNM : CNM ;
fun blood_0095_CNM : CNM ;
fun blow_out_0096_V2 : V2 ;
fun blueberry_juice_0097_CNM : CNM ;
fun blue_0098_AP : AP ;
fun boiled_0099_AP : AP ;
fun book_0100_CN : CN ;
fun book_store_0101_CNP : CNP ;
fun boredom_0102_CNM : CNM ;
fun both_0103_Det : Det ;
fun bottle_0104_CN : CN ;
fun straw_0104_CN : CN ;
fun bottom_ache_0105_CNM : CNM ;
fun bowl_0106_CN : CN ;
-- DUPLICATE lin bowl_0107_CN = mkiCN "bowl" ; -- CN
-- DUPLICATE lin bowl_0108_CN = mkiCN "bowl" ; -- CN
fun box_0109_CN : CN ;
fun box_drink_0110_CN : CN ;
fun box_of_chocolates_0111_CN : CN ;
fun box_of_legumi_0112_CN : CN ;
fun boy_0113_CNH : CNH ;
-- DUPLICATEMAYBE lin boy_0114_CNH = mkiCNH "boy" ; -- CNH
fun bracelet_0115_CN : CN ;
fun brain_0116_CN : CN ;
fun bread_0117_CNM : CNM ;
fun bread_slice_0118_CN : CN ;
fun breakfast_0119_CN : CN ;
fun breakfast_time_0120_NP : NP ;
fun breast_0121_CN : CN ;
fun bricklayer_0122_CNH : CNH ;
fun bring_back_0123_V2 : V2 ;
fun brochure_0124_CN : CN ;
fun broken_0125_AP : AP ;
fun break_0126_V2 : V2 ;
fun broom_0127_CN : CN ;
fun pail_0127_CN : CN ;
-- DUPLICATEMAYBE lin broom_0128_CN = mkiCN "broom" ; -- CN
fun brother_0129_CNH : CNH ;
fun brown_sugar_0130_CNM : CNM ;
fun brush_0131_V2 : V2 ;
fun tongue_0132_CN : CN ;
fun building_0133_CNP : CNP ;
-- DUPLICATEMAYBE lin building_0134_CNP = mkiCNP "building" ; -- CNP
fun bus_driver_0135_CNH : CNH ;
fun business_0136_CN : CN ;
fun bus_0137_CNP : CNP ;
fun bus_station_0138_CNP : CNP ;
fun bus_timetable_0139_CN : CN ;
fun how_lucky_0140_Interj : Interj ;
fun butcher's_shop_0141_CNP : CNP ;
fun butter_0142_V2 : V2 ;
fun butter_slice_of_bread_0142_VP : Det -> VP ;
fun butter_0143_CNM : CNM ;
fun button_up_0144_V2 : V2 ;
fun buy_0145_V2 : V2 ;
fun bye_0146_Interj : Interj ;
fun call_0147_V2 : V2 ;
fun respond_to_telephone_0148_VP : VP ;
fun call_0149_CN : CN ;
fun camera_0150_CN : CN ;
fun candied_pie_0151_CN : CN ;
fun can_opener_0152_CN : CN ;
fun car_0153_CNP : CNP ;
fun care_0154_CNM : CNM ;
fun carpenter_0155_CNH : CNH ;
fun carpet_0156_CN : CN ;
fun carrot_0157_CN : CN ;
fun carton_0158_CN : CN ;
fun cash_0159_CNM : CNM ;
fun casual_jacket_0160_CN : CN ;
fun cat_food_0161_CNM : CNM ;
fun cd_player_0162_CN : CN ;
fun ceiling_0163_CN : CN ;
fun cellular_0164_CN : CN ;
fun certificate_0165_CN : CN ;
fun chair_0166_CN : CN ;
fun champion_0167_CNH : CNH ;
fun change_0168_V : V ;
fun change_channel_0169_VP : VP ;
fun change_diaper_0170_VP : VP ;
fun change_ones_mind_0171_VP : VP ;
fun check_0172_V2 : V2 ;
fun cheek_0173_CN : CN ;
fun cheers_0174_Interj : Interj ;
fun cheese_cracker_0175_CN : CN ;
fun cheese_cream_0176_CNM : CNM ;
fun cheese_0177_CNM : CNM ;
fun cheese_snack_0178_CN : CN ;
fun chemistry_class_0179_CN : CN ;
fun chest_pain_0180_CNM : CNM ;
fun chest_0181_CN : CN ;
fun chicken_croquette_0182_CN : CN ;
fun chicken_fillet_0183_CN : CN ;
fun chicken_fillet_sandwich_0184_CN : CN ;
fun chicken_fry_0185_CN : CN ;
fun chicken_leg_0186_CN : CN ;
fun chicken_pieces_0187_CN : CN ;
fun chicken_0188_CN : CN ;
fun chin_0189_CN : CN ;
fun chocolate_0190_CNM : CNM ;
fun chocolate_cookie_0191_CN : CN ;
fun chocolate_drop_0192_CNPL : CNPL ;
fun Christmas_day_0193_CNT : CNT ;
fun Christmas_tree_0194_CN : CN ;
fun church_0195_CNP : CNP ;
fun church_courtyard_0196_CNP : CNP ;
fun circus_0197_CNP : CNP ;
fun citizen_0198_CNH : CNH ;
fun city_0199_CNP : CNP ;
fun class_0200_CN : CN ;
fun classical_music_0201_CNM : CNM ;
fun clean_hands_0202_NP : NP ;
fun clean_house_0203_NP : NP ;
fun cleaning_equipment_0204_CN : CN ;
fun clean_0205_V2 : V2 ;
fun clean_0206_AP : AP ;
fun cleaning_0207_CN : CN ;
-- DERIVED 0208 VP clean room pulire la stanza städa rummet sauberes Zimmer* čista soba 
-- DERIVED 0209 VP clean the bath pulire il bagno städa badrummet Bad reinigen očistiti kopalno kad 
-- DUPLICATE lin bathroom_0209_CNP = mkiCN "bathroom" ; -- CNP 
-- DERIVED 0210 VP clean the kitchen pulire la cucina städa köket die Küche sauber machen očistiti kuhinjo 
-- DERIVED 0211 VP clean the table pulire il tavolo torka bordet den Tisch wischen počistiti mizo 
fun clear_table_0212_VP : VP ;
-- DERIVED 0213 VP close chiudere documento stänga dokument schliessen zapreti 
fun close_0214_V2 : V2 ;
fun close_ones_eyes_0215_VP : VP ;
fun closet_0216_CNP : CNP ;
-- DERIVED 0217 VP close the door chiudere la porta stänga dörren die Tür schliessen zapreti vrata 
-- DERIVED 0218 VP close the window chiudere la finestra stänga fönstret das Fenster schliessn zapreti okno 
fun clothes_0219_CNPL : CNPL ;
-- DERIVED lin clothes_0220_CNPL = mkiCNPL "cloth" "clothes" ; 
-- DERIVED lin clothes_0221_CNPL = mkiCNPL "cloth" "clothes" ; 
fun clothing_store_0222_CNP : CNP ;
fun cloudy_0223_AP : AP ;
fun coach_door_0224_CN : CN ;
-- DUPLICATE 0225 CNCONJ coat and gloves cappotto e guanti rock och handskar Mantel und Handschuhe plašč in rokavice DUPLICATE 0226 
fun coat_0226_CN : CN ;
fun coffee_0227_CNM : CNM ;
fun cold_drink_0228_CN : CN ;
fun cold_0229_AP : AP ;
-- DUPLICATEMAYBE lin cold_0230_AP = mkiAP "cold" ; -- AP
fun cold_0231_CNM : CNM ;
fun cold_tea_0232_CNM : CNM ;
fun brush_0233_CN : CN ;
fun comb_0233_CN : CN ;
fun come_back_home_0234_VP : VP ;
fun come_here_0235_VP : VP ;
fun come_0236_V : V ;
fun community_0237_CN : CN ;
fun company_0238_CN : CN ;
fun computer_0239_CN : CN ;
fun concert_0240_CNP : CNP ;
fun conference_0241_CNP : CNP ;
fun control_0242_CN : CN ;
fun cook_0243_V : V ;
-- DUPLICATE 0244 VP cook cucinare laga mat der Cook* kuharica DUPLICATE 0243 
fun cook_0245_CNH : CNH ;
fun cooking_book_0246_CN : CN ;
fun cooking_spoon_0247_CN : CN ;
fun copybook_0248_CN : CN ;
fun cordless_telephone_0249_CN : CN ;
fun corner_0250_CNP : CNP ;
fun corridor_0251_CNP : CNP ;
fun cottage_cheese_0252_CNM : CNM ;
-- lin cotton_floc_0253_CN = mkiCN "cotton floc" ; DUPLICATE typo 
fun cotton_flock_0254_CNM : CNM ;
-- DERIVED 0255 VV? could not non potrei jag kan inte* konnte nicht ne bi 
fun country_0256_NP : NP ;
fun country_music_0257_CNM : CNM ;
fun country_0258_CNP : CNP ;
fun course_0259_CNP : CNP ;
fun cream_0260_CNM : CNM ;
fun credit_card_0261_CN : CN ;
fun cucumber_0262_CN : CN ;
fun cupboard_0263_CNP : CNP ;
fun cup_0264_CN : CN ;
fun customs_0265_CNP : CNP ;
fun cut_ones_nails_0266_VP : VP ;
fun cut_nails_0266_VP : Pron -> VP ;
fun cut_0267_V2 : V2 ;
-- DUPLICATE 0268 CN appointment appuntamento möte* das Datum datum DUPLICATE 0030 
fun date_0269_CN : CN ;
fun daughter_0270_CNH : CNH ;
fun day_0271_CNT : CNT ;
-- DERIVED 0272 Month December Dicembre december der Dezember december 
fun declare_0273_VS : VS ;
fun decorate_pie_0274_VP : VP ;
fun degree_0275_CN : CN ;
fun delicious_0276_AP : AP ;
fun deodorant_0277_CNM : CNM ;
fun department_store_0278_CNP : CNP ;
fun desk_0279_CN : CN ;
fun detergent_0280_CNM : CNM ;
fun dictionary_0281_CN : CN ;
fun digital_0282_AP : AP ;
fun dinner_0283_CN : CN ;
fun dinner_time_0284_NP : NP ;
fun direction_0285_CN : CN ;
fun dirty_hands_0286_NP : NP ;
fun dirty_0287_AP : AP ;
fun disgrace_0288_CN : CN ;
fun disgust_0289_CN : CN ;
fun dishes_detersive_0290_CNM : CNM ;
fun dishwasher_0291_CN : CN ;
fun divorce_0292_CN : CN ;
fun doctor_0293_CNH : CNH ;
-- DUPLICATEMAYBE lin doctor_0294_CNH = mkiCNH "doctor" ; -- CNH
fun dog_food_0295_CNM : CNM ;
fun cross_VP_0296_VP : VP ;
-- DERIVED 0297 VP don't like non piacere inte tycka om nicht mögen ne maram 
-- DERIVED 0298 Imp don't look non guardare titta inte nicht schauen ne glej 
-- DERIVED 0299 VP don't speak non parlante icketalande nicht sprechen ne govori 
-- DERIVED 0300 VP don't care non mi interessa intresserar mig inte egal me ne zanima 
-- DERIVED 0301 VP don't want non volere inte vilja nicht wollen ne želim 
fun donut_shop_bakery_0302_CNP : CNP ;
fun do_the_shopping_0303_VP : VP ;
fun a_dozen_0304_Det : Det ;
fun drawer_0305_CN : CN ;
fun dress_0306_CN : CN ;
fun dried_fruit_0307_CNM : CNM ;
fun drink_0308_V : V ;
fun drink_0308_V2 : V2 ;
fun drink_0309_CN : CN ;
fun drive_0310_V : V ;
fun drive_0310_V2 : V2 ;
fun driver_0311_CNH : CNH ;
fun dryer_0312_CN : CN ;
fun dry_ones_face_0313_VP : VP ;
fun dry_face_0313_VP : Pron -> VP ;
fun dry_ones_hands_0314_VP : VP ;
fun dry_hands_0314_VP : Pron -> VP ;
fun dry_pants_0315_NP : NP ;
fun earn_0316_V2 : V2 ;
fun Easter_egg_0317_CN : CN ;
fun easy_chair_0318_CN : CN ;
fun eat_0319_V : V ;
fun eat_0319_V2 : V2 ;
fun economic_0320_AP : AP ;
fun eggs_on_toast_0321_NP : NP ;
-- DUPLICATE 0322 NP eggs on toast uova sul toast äggsmörgås Eier auf Toast jajca na toastu DUPLICATE 0321 
-- DERIVED 0323 Numeral eight otto åtta acht osem 
fun elbow_0324_CN : CN ;
fun electric_0325_AP : AP ;
fun email_0326_CN : CN ;
fun emery_board_0327_CN : CN ;
fun employee_0328_CNH : CNH ;
-- DUPLICATEMAYBE lin employee_0329_CNH = mkiCNH "employee" ; -- CNH
fun empty_trash_can_0330_VP : VP ;
fun end_walk_0331_VP : VP ;
fun end_0332_CN : CN ;
fun end_of_the_sentence_0333_NP : NP ;
fun end_of_the_word_0334_NP : NP ;
fun evening_0335_CNT : CNT ;
fun exam_0336_CN : CN ;
fun excellent_0337_AP : AP ;
fun except_0338_Prep : Prep ;
fun exchange_0339_CNM : CNM ;
fun excuse_me_0340_Interj : Interj ;
fun go_away_0341_V2 : V2 ;
fun go_out_0342_V : V ;
fun exit_0343_CNP : CNP ;
fun eye_0344_CN : CN ;
fun eye_socket_0345_CN : CN ;
fun face_0346_CN : CN ;
fun facial_hair_0347_CNM : CNM ;
fun make_up_ones_face_0348_VP : VP ;
fun make_up_face_0348_VP : Pron -> VP ;
fun factory_0349_CNP : CNP ;
fun fall_0350_V : V ;
fun family_0351_CNH : CNH ;
fun fantastic_0352_AP : AP ;
fun farmer_0353_CNH : CNH ;
fun fashion_0354_CNM : CNM ;
fun fast_0355_V : V ;
fun fast_0356_CN : CN ;
fun fast_food_0357_CNM : CNM ;
fun fasting_day_0358_CNT : CNT ;
fun fast_0359_Adv : Adv ;
fun fat_0361_AP : AP ;
fun father_0362_CNH : CNH ;
-- DUPLICATEMAYBE lin father_0363_CNH = mkiCNH "father" ; -- CNH
fun father's_day_0364_NP : NP ;
-- DERIVED 0365 Month February Febbraio februari der Februar februar 
fun feel_0366_V2 : V2 ;
fun feel_0366_VS : VS ;
-- lin feel_0367_V2 = mkiV2 "feel" ; -- DUPLICATE 
-- lin feel_0367b_VS = mkiVS "feel" ; -- DUPLICATE 
fun fee_0368_CN : CN ;
fun female_0369_AP : AP ;
fun female_friend_0370_CNH : CNH ;
-- fun few_0371_Det : Det ; -- DERIVED
fun a_few_0371_Det : Det ;
fun little_0372_DetM : DetM ;
fun a_little_0372_DetM : DetM ;
fun field_trip_0373_CN : CN ;
fun file_0374_CN : CN ;
-- DUPLICATEMAYBE lin file_0375_CN = mkiCN "file" ; -- CN
fun file_ones_nails_0376_VP : VP ;
fun file_nails_0376_VP : Pron -> VP ;
fun finger_0377_CN : CN ;
fun first_course_0378_CN : CN ;
fun fish_and_chips_0379_NP : NP ;
fun fish_0380_V : V ;
fun fish_0380_V2 : V2 ;
fun fish_0381_CN : CN ;
fun fish_soup_0382_CNM : CNM ;
fun fish_stick_0383_CN : CN ;
fun fish_tank_0384_CN : CN ;
-- DUPLICATEMAYBE lin fish_tank_0385_CN = mkiCN "fish tank" ; -- CN
-- DERIVED 0386 Numeral five cinque fem fünf pet 
fun flat_bread_0387_CNM : CNM ;
fun flight_0388_CN : CN ;
fun floor_0389_CNP : CNP ;
fun flower_in_plant_0390_CN : CN ;
fun flush_the_toilet_0391_VP : VP ;
fun fold_dresses_0392_VP : VP ;
fun food_0393_CNM : CNM ;
fun foot_0395_CN : CN ;
fun forget_0396_V : V ;
fun forget_0396_V2 : V2 ;
fun fork_0397_CN : CN ;
fun free_time_0398_CNM : CNM ;
fun freezed_dinner_0399_CN : CN ;
-- DERIVED 0400 Weekday Friday venerdÃ¬ fredag der Freitag petek 
fun fridge_0401_CN : CN ;
fun from_0402_PrepP : PrepP ;
fun fruit_0403_CN : CN ;
fun fruit_tree_0404_CN : CN ;
fun full_moon_0405_NP : NP ;
fun funny_0407_AP : AP ;
fun funny_show_0408_CN : CN ;
fun gallant_0409_AP : AP ;
fun gate_0410_CNP : CNP ;
fun general_health_0411_CN : CN ;
fun get_dressed_0412_VP : VP ;
fun get_out_of_chair_0413_VP : Det -> VP ;
fun get_0415_V2 : V2 ;
fun girl_0416_CNH : CNH ;
fun give___0418_V3 : V3 ;
--DERIVED 0419 Imp give me that dammi quello ge mig det gib mir das daj mi 
fun give_way_to_0420_V2 : V2 ;
fun glad_to_meet_you_0421_Interj : Interj ;
-- DERIVED 0422 VP glass and straw bicchiere e cannuccia glas och sugrör Glas und Stroh steklo in slama 
fun glass_0423_CN : CN ;
fun glue_envelope_0424_VP : Det -> VP ;
fun go_0425_V : V ;
fun go_around_0426_V : V ;
fun go_away_0427_V : V ;
fun go_fast_0428_V : V ;
fun good_0430_AP : AP ;
fun good_bye_0431_Interj : Interj ;
fun good_proposal_0432_CN : CN ;
fun go_0433_NP : NP ;
fun gracious_0434_AP : AP ;
fun grandfather_0435_CNH : CNH ;
fun granny_pie_0436_CNM : CNM ;
fun granola_bar_0437_CN : CN ;
fun grapes_juice_0438_CNM : CNM ;
fun grape_0439_CN : CN ;
fun graphics_pad_0440_CN : CN ;
fun grated_apple_0441_CNM : CNM ;
fun green_bean_0442_CN : CN ;
fun green_0443_AP : AP ;
fun grill_cheese_0444_CNM : CNM ;
fun guesthouse_0445_CNP : CNP ;
fun gym_0447_CNP : CNP ;
fun hair_clip_0450_CN : CN ;
fun hair_cut_0451_CN : CN ;
fun hair_dryer_0452_CN : CN ;
fun hair_spray_0453_CNM : CNM ;
fun hamburger_0454_CN : CN ;
fun hand_0455_CN : CN ;
fun happy_0456_AP : AP ;
-- DUPLICATEMAYBE lin happy_0457_AP = mkiAP "happy" ; -- AP
fun hat_0458_CN : CN ;
-- DERIVED lin have_0459_V2 = S.have_V2 ; -- V2
-- DERIVED lin have_0460_V2 = mkiV2 "have" ; 
-- DERIVED 0461 V2? have not non avere inte ha nicht haben nimati 
-- DERIVED 0462 V2? have not* non avere inte ha nicht besitzen revna oseba 
-- DERIVED 0463 QCl have you heard? hai sentito di har du hört hast du gehört? ali ste slišali? 
fun headache_0464_CNM : CNM ;
fun head_0465_CN : CN ;
-- lin head_0466_CN = mkiCN "head" ; DUPLICATE 
fun health_0467_CNM : CNM ;
fun healthy_0468_AP : AP ;
fun hearing_test_0469_CN : CN ;
fun heart_attack_0470_CN : CN ;
fun heart_0471_CN : CN ;
fun heart_problem_0472_CN : CN ;
fun help_0473_V : V ;
fun help_0473_V2 : V2 ;
fun help_0474_CNM : CNM ;
fun here_it_is_0476_Interj : Interj ;
fun here_0477_AdvP : AdvP ;
-- DERIVED 0478 Quant her suo hans/hennes* ihr njo 
fun high_0479_AP : AP ;
fun high_blood_pressure_0480_NP : NP ;
fun high_chair_0481_CN : CN ;
fun highway_0482_CNP : CNP ;
fun hill_0483_CNP : CNP ;
fun hockey_player_0484_CNH : CNH ;
fun hold_hands_0485_VP : VP ;
fun holiday_0486_CNT : CNT ;
fun homemade_0487_AP : AP ;
fun honey_0488_CNM : CNM ;
fun horror_0489_CNM : CNM ;
fun horse_0490_CN : CN ;
fun hostel_0491_CNP : CNP ;
fun hot_0493_AP : AP ;
fun hot_chocolate_0494_CNM : CNM ;
fun hot_dog_0495_CN : CN ;
fun hotel_0496_CNP : CNP ;
-- DUPLICATE 0497 CNP hotel albergo hotell das Hotel gostišče DUPLICATE 0496 
fun hot_pepper_0498_CNM : CNM ;
fun hot_sausage_0499_CN : CN ;
fun house_0500_CNP : CNP ;
fun how_are_0501_QCl : NPH -> QCl ;
fun how_much_is_0502_QCl : NP -> QCl ;
-- DERIVED 0503 IP how much quanto hur mycket wie viel? koliko 
-- DERIVED 0504 QCl how old are you? quanti anni hai hur gammal är du? wie alt sind Sie? koliko si star(a)? 
fun how_is_it_going_0505_Utt : Utt ;
fun how_is_the_weather_0506_Utt : Utt ;
-- DERIVED 0507 Numeral hundred cento hundra hundert sto 
fun hunger_0508_CNM : CNM ;
fun hungry_0509_AP : AP ;
fun hurt_0511_AP : AP ;
fun agree_0513_VP : VP ;
-- DERIVED 0514 Cl i can't wait non posso aspettare jag kan inte vänta ich kann nicht warten komaj čakam 
fun ice_cream_biscuit_0515_CN : CN ;
fun ice_cream_cone_0516_CN : CN ;
fun ice_cream_0517_CNM : CNM ;
fun ice_0518_CNM : CNM ;
fun ice_lollipop_0519_CN : CN ;
fun better_0520_AP : AP ;
fun det_ap_one_0520_NP : Det -> AP -> NP ;
-- DERIVED 0520 Cl i'd like a better one ne vorrei uno migliore jag vill ha en bättre ich möchte eine bessere rad bi boljše
-- DERIVED 0522 Cl i don't know non lo so jag vet inte ich weiss nicht ne vem 
-- DERIVED 0523 Cl i don't understand non capisco jag förstår inte ich verstehe nicht ne razumem 
-- DERIVED 0524 Cl i don't want non voglio jag vill inte ich möchte nicht si ne želim 
-- DERIVED 0525 Cl I feel good sto bene jag mår bra ich fühle mich gut dobro se počutim 
-- DERIVED 0526 Subj if se om ob* če 
-- DERIVED 0527 Cl i hate that show odio quel programma jag avskyr det programmet ich hasse das show sovražim to oddajo 
fun show_0527_CN : CN ;
-- DERIVED 0528 Cl I have need of the receipt ho bisogno della ricevuta jag behöver kvitto ich benötige den Empfang rabim potrdilo
fun something_to_v_0529_NP : V2 -> NP ;
-- DERIVED 0529 Cl I have something to say ho qualcosa da dire jag har något att säga ich habe etwas zu sagen imam nekaj za povedati
fun have_0530_VV : VV ;
-- DERIVED 0530 Cl I have to change my money devo cambiare jag måste växla pengar ich muss mein Geld wechseln moram zamenjati denar (valuto) 
-- DERIVED 0531 Pron I io jag ich Jaz 
-- DERIVED 0532 Cl i like this mi piace quello jag tycker om det ich mag das to mi je všeč 
fun like_0532_Cl : NPH -> NP -> Cl ;
-- DERIVED 0533 Cl I'll spell it dire lettera per lettera bokstavera ich werde es buchstabieren črkoval bom 
-- DERIVED 0534 Cl I'll spell it indico lettera per lettera jag bokstaverar det ich werde es buchstabieren prebral bom črko za črko 
-- DERIVED 0535 Cl i'll spell it pronuncio lettera per lettera jag uttalar det bokstav för bokstav ich werde es buchstabieren napisal bom črko za črko 
-- DERIVED 0536 Cl i love that show mi piace quel programma jag tycker om det programmet ich liebe diese Show obožujem to oddajo 
-- DERIVED 0537 Cl I love you ti amo jag älskar dig ich liebe dich ljubim te 
-- DERIVED 0538 Cl I made a mistake ho fatto un errore jag har gjort fel ich machte einen Fehler naredil sem napako 
-- DERIVED 0539 Cl i'm having fun mi sto divertendo jag har roligt ich habe ein Spas se zabavam 
-- DERIVED 0540 Cl i'm lost mi sono perso jag fattar inte ich bin verloren sem izgubljen 
fun immediately_0541_AdvT : AdvT ;
-- DERIVED 0542 Cl i'm not fine non sentirsi bene känna sig dålig mir get es nicht gut nisem v redu 
-- DERIVED 0543 Cl i'm not ready non sono pronto jag är inte färdig ich bin nicht bereit nisem pripravljen 
fun important_0544_AP : AP ;
fun ready_to_v_0545_AP : VP -> AP ;
fun work_0545_V : V ;
-- DERIVED 0545 Cl I'm ready to work sono pronto per lavorare jag är beredd att börja arbeta ich bin bereit zu arbeiten sem pripravljen za delo 
fun in_bottom_0546_AdvP : AdvP ;
fun included_0547_AP : AP ;
-- DERIVED 0548 Cl I need help ho bisogno d'aiuto jag behöver hjälp ich brauche Hilfe rabim pomoč 
fun in_flower_0549_AdvP : AdvP ;
fun information_office_0550_CNP : CNP ;
fun instant_coffee_0551_CNM : CNM ;
fun instant_tea_0552_CNM : CNM ;
fun interest_0553_V2 : V2 ;
fun international_0554_AP : AP ;
fun point_0555_V2 : V2 ;
fun cl_to_vp_0555_Cl : NPH -> VP -> VP -> Cl ;
-- DERIVED 0555 Cl I point to symbols to communicate indico i simboli jag pekar på symboler ich zeige auf Symbole zu kommunizieren komuniciram preko simbolov 
fun iron_0556_CN : CN ;
fun ironing_board_0557_CN : CN ;
fun see_0558_VS : VS ;
fun busy_0558_AP : AP ;
-- DERIVED 0558 Cl I see that you are busy vedo che sei occupato jag ser att du är upptagen ich sehe dass Sie beschäftigt sind vidim, da si zaseden(a) 
-- DERIVED 0559 Copula is essere är ist je 
-- DERIVED 0560 Cl is not in the lexicon non è in questo lessico finns inte i lexikonet ist nicht im Lexikon ni ga v leksikonu 
-- DERIVED 0561 Copula is not non è är inte ist nicht ni 
-- DERIVED 0562 VP is not on this page non è in questa pagina finns inte på denna sida ist nicht auf dieser Seite ni na tej strani 
fun it_is_about_time_0563_Cl : Cl ;
-- DERIVED 0564 Cl it's not this non è är inte es ist nicht diese to ni to
fun it_is_time_to_vp_0565_Cl : VP -> Cl ;
-- DERIVED 0565 Cl it's time È ora det är dags es wird Zeit čas je 
-- DERIVED 0566 Cl I want a different size voglio una taglia differente jag vill ha en annan storlek Ich will verschiedene Größe želim drugo velikost 
-- DERIVED 0567 ClSlash I want io voglio jag vill inte Ich will hočem, želim
fun det_one_0568_NP : Det -> NP ;
-- DERIVED 0568 Cl I want that one voglio quello jag vill ha den där ich möchte diese/diesen/dieses želim tisto 
-- DERIVED 0569 Cl I want to beg you pardon voglio chiedere scusa jag vill be om ursäkt ich möchte etwas anderes sagen hočem reči nekaj drugega 
-- DERIVED 0570 Cl I want to show you something voglio mostrarti qualcosa jag vill visa dig någonting Ich will dir etwas zeigen hočem ti nekaj pokazati 
-- DERIVED 0571 Cl I want to talk with you voglio parlare con te jag vill prata med dig ich will mit dir reden hočem govoriti z vami 
fun i_won_0572_Utt : NPH -> Utt ;
fun jacket_0573_CN : CN ;
-- DUPLICATE lin jacket_0574_CN = mkiCN "jacket" ; 
-- DERIVED 0575 Month January Gennaio januari der Januar januar 
fun juice_0576_CNM : CNM ;
-- DERIVED 0577 Month July Luglio juli der Juli julij 
-- DERIVED 0578 Month June Giugno juni der Juni junij 
fun keyboard_0579_CN : CN ;
fun key_0580_CN : CN ;
fun kilometer_0581_CN : CN ;
fun kitchen_0582_CNP : CNP ;
fun kitchen_robot_0583_CN : CN ;
fun knife_0584_CN : CN ;
fun knock_down_0585_V2 : V2 ;
fun know_0586_V : V ;
fun know_0586_VS : VS ;
fun labour_day_0587_NP : NP ;
fun lake_0588_CNP : CNP ;
fun lamp_0589_CN : CN ;
fun land_0590_V : V ;
fun last_month_0591_AdvT : AdvT ;
fun last_0592_AP : AP ;
fun laundry_basket_0593_CN : CN ;
fun laundry_0594_CNM : CNM ;
fun laundry_0595_CN : CN ;
fun laundry_soap_0596_CNM : CNM ;
fun lawyer_0597_CNH : CNH ;
fun lay_away_0598_V2 : V2 ;
-- DERIVED 0599 VP lay away the clothes mettere via i vestiti lägga in kläder die Kleider weglegen pospravi obleke 
fun learn_0600_V : V ;
fun learn_0600_V2 : V2 ;
fun leave_alone_0601_VP : NP -> VP ;
fun left_0603_AP : AP ;
fun leg_0604_CN : CN ;
fun less_0605_Det : Det ;
fun less_0605_DetM : DetM ;
-- DERIVED 0606 Utt let's go to another store andiamo in un altro negozio vi går till en annan affär Lassen Sie uns zu einem anderen Laden gehen gremo v drugo trgovino 
-- DERIVED 0607 Utt let's talk later parliamo più tardi vi pratas vid senare Lass uns später reden pogovoriva se kasneje 
fun letter_carrier_0608_CNH : CNH ;
fun letter_0609_CN : CN ;
fun letter_0610_CN : CN ;
fun number_0610_CN : CN ;
fun lettuce_0611_CNM : CNM ;
fun library_0612_CNP : CNP ;
fun library_card_0613_CN : CN ;
fun lie_down_0614_V : V ;
fun life_jacket_0615_CN : CN ;
fun life_support_system_0616_CN : CN ;
fun light_0617_V2 : V2 ;
fun light_0618_CN : CN ;
fun light_0619_AP : AP ;
fun light_0620_CN : CN ;
fun lightning_0621_CN : CN ;
fun line_0622_CNP : CNP ;
fun catalogue_0623_CN : CN ;
fun listen_0624_V : V ;
fun listen_0624_V2 : V2 ;
-- DERIVED 0625 Cl listen ti ascolto jag lyssnar på dig anhören čuti 
-- DERIVED 0626 VP listen to music ascoltare la musica lyssna på musik Musik hören poslušati glasbo 
fun list_0627_CN : CN ;
fun literature_0628_CNM : CNM ;
fun be_alive_0629_VP : VP ;
fun living_room_0630_CNP : CNP ;
fun local_0631_AP : AP ;
fun locker_room_0632_CNP : CNP ;
fun long_0633_AP : AP ;
fun long_sleeve_0634_NP : NP ;
fun look_out_the_window_0635_VP : VP ;
fun loud_0636_AP : AP ;
fun low_0637_AP : AP ;
fun low_blood_pressure_0638_NP : NP ;
fun love_0639_V2 : V2 ;
fun lower_head_0640_VP : VP ;
fun love_story_0641_CN : CN ;
-- DUPLICATEMAYBE lin love_0642_V2 = mkiV2 "love" ; -- V2
fun lucky_0643_AP : AP ;
fun luggage_0644_CNM : CNM ;
fun lunch_bag_0645_CN : CN ;
fun lunch_meat_0646_CNM : CNM ;
fun lunch_0647_CN : CN ;
fun lunch_time_0648_CN : CN ;
fun madam_0649_CNH : CNH ;
fun magazine_0650_CN : CN ;
fun magnificent_0651_AP : AP ;
fun magnifying_glass_0652_CN : CN ;
fun mail_box_0653_CN : CN ;
fun maize_bread_0654_CNM : CNM ;
fun make_bed_0655_VP : VP ;
-- DERIVED 0656 VP make biscuits fare i biscotti con le formine baka kakor Kekse machen napraviti kekse 
fun make_0657_V2 : V2 ;
fun make_peace_0658_VP : VP ;
fun male_friend_0659_CNH : CNH ;
fun male_0660_AP : AP ;
fun man_0661_CNH : CNH ;
fun many_0662_Det : Det ;
fun city_map_0663_CN : CN ;
fun map_0664_CN : CN ;
fun world_map_0665_CN : CN ;
fun marching_band_0666_CN : CN ;
-- DERIVED 0667 Month March Marzo mars der März marec 
fun mathematics_0668_NP : NP ;
-- DERIVED 0669 Month May Maggio maj der Mai maj 
fun meaning_0670_CN : CN ;
fun measure_0671_CN : CN ;
fun measuring_cup_0672_CN : CN ;
-- DUPLICATEMAYBE lin beef_0673_CNM = mkiCNM "beef" ; -- CNM
fun meat_0674_CNM : CNM ;
fun medium_0675_AP : AP ;
fun meeting_0676_CNP : CNP ;
fun memory_0677_CN : CN ;
fun menu_0678_CN : CN ;
fun men_wc_0679_CNP : CNP ;
fun metre_0680_CN : CN ;
fun microwave_oven_0681_CN : CN ;
fun midnight_0682_CNT : CNT ;
fun milk_0683_CNM : CNM ;
fun mirror_0684_CN : CN ;
fun miss_0685_V2 : V2 ;
-- DERIVED 0686 VP miss the coach perdere il bus missa bussen verpassen den Trainer zamuditi avtobus 
-- DUPLICATEMAYBE lin miss_0686_V2 = mkiV2 "miss" ; -- V2
fun make_a_mistake_0687_VP : VP ;
fun mistake_0687_CN : CN ;
fun mobile_telephone_0688_CN : CN ;
fun moment_0689_CN : CN ;
-- DERIVED 0690 Weekday Monday lunedì måndag der Montag ponedeljek 
fun money_0691_CNM : CNM ;
-- DUPLICATE lin money_0692_CNM = mkiCNM "money" ; 
-- DUPLICATE lin money_0693_CNM = mkiCNM "money" ; 
fun monitor_0694_CN : CN ;
fun month_0695_CN : CN ;
fun monument_0696_CN : CN ;
fun more_0697_Adv : Adv ;
fun more_0698_Det : Det ;
fun more_0698_DetM : DetM ;
fun morning_0699_CNT : CNT ;
fun mother_0700_CNH : CNH ;
fun mother's_day_0701_CNT : CNT ;
fun mousse_chocolate_0702_CNM : CNM ;
fun mouth_0703_CN : CN ;
fun lip_0704_CN : CN ;
fun movie_0705_CN : CN ;
fun movies_0706_CNP : CNP ;
fun movie_star_0707_CNH : CNH ;
fun mow_lawn_0708_VP : VP ;
fun much_0709_Adv : Adv ;
fun muscle_0710_CN : CN ;
fun museum_0711_CNP : CNP ;
fun music_band_0712_CNH : CNH ;
fun music_0713_CNM : CNM ;
-- DERIVED 0715 Quant my mio min mein,meine moj 
fun legs_shaking_0714_Cl : Pron -> Cl ;
fun my_turn_0716_Utt : Pron -> Utt ;
fun nail_file_0717_CN : CN ;
fun name_0718_CN : CN ;
-- DUPLICATE lin name_0719_CN = mkiCN "name" ; 
fun nappie_0720_CN : CN ;
fun napkin_0721_CN : CN ;
fun National_day_0722_CNT : CNT ;
fun nausea_0723_CNM : CNM ;
fun necessary_0724_AP : AP ;
fun neck_0725_CN : CN ;
fun necklace_0726_CN : CN ;
fun need_0727_V2 : V2 ;
fun need_0727_VV : VV ;
-- DERIVED 0728 VP need aver bisogno del pettine behöver kamma sig benötigen potrebovati 
fun be_afraid_of_0729_VP : NP -> VP ;
fun be_afraid_0729_VP : VP ;
fun neighbor_0730_CNH : CNH ;
fun new_age_music_0731_CNM : CNM ;
fun new_clothes_0732_NP : NP ;
fun never_0733_AdV : AdV ;
fun new_0734_AP : AP ;
fun new_word_0735_CN : CN ;
fun next_month_0736_AdvT : AdvT ;
fun next_to_0737_PrepP : PrepP ;
fun nice_0738_AP : AP ;
fun nice_music_0739_CN : CN ;
-- DUPLICATEMAYBE lin nice_0740_AP = mkiAP "nice" ; -- AP
fun night_0741_CNT : CNT ;
-- DERIVED 0742 Numeral nine nove nio neun devet 
fun no_alcohol_0743_Utt : Utt ;
fun no_drugs_0744_Utt : Utt ;
fun no_0745_Interj : Interj ;
fun noon_0746_CNT : CNT ;
fun nose_0747_CN : CN ;
fun no_smoking_0748_Utt : Utt ;
fun notebook_0749_CN : CN ;  -- computer
fun notebook_0750_CN : CN ;  -- of paper
-- DERIVED nothing_0751_NP = S.nothing_NP ; --mkiNP "nothing" ; 
fun ready_0752_AP : AP ;
fun bolt_0753_CN : CN ;
fun nut_0753_CN : CN ;
fun ocean_0754_CNP : CNP ;
fun office_0755_CNP : CNP ;
fun oh_no_0756_Interj : Interj ;
fun old_0757_AP : AP ;
fun on_0758_AdvP : AdvP ;
fun one_way_0759_CN : CN ;
fun open_folder_0760_VP : Det -> VP ;
fun open_0761_V2 : V2 ;
-- DERIVED 0762 VP open levare il coperchio ta av locket offen odpreti 
fun open_lid_0762_VP : Det -> VP ;
-- DERIVED 0763 VP open small tin aprire le scatole öppna en burk kleine Dose öffen odpri škatlico 
-- DERIVED 0764 VP open the door aprire la porta öppna dörren die Tür öffnen odpri vrata 
-- DERIVED 0765 VP open the window aprire la finestra öppna fönstret das Fenster öffnen odpri okno 
fun orange_0766_CN : CN ;
fun orange_juice_0767_CNM : CNM ;
fun mandarine_0768_CN : CN ;
fun organised_0769_AP : AP ;
-- DERIVED 0770 Quant our nostro vår unser naš 
fun oven_0771_CN : CN ;
fun pad_0772_CN : CN ;
fun painting_0773_CN : CN ;
fun pajamas_0774_CNPL : CNPL ;
fun panties_0775_CNPL : CNPL ;
-- DUPLICATE lin pants_0776_CN = mkiCN "pants" ; -- CN
fun paper_0777_CNM : CNM ;
fun pencil_0777_CN : CN ;
fun paper_0778_CN : CN ;
fun paper_towel_0779_CN : CN ;
fun park_0780_V : V ;
fun park_0780_V2 : V2 ;
fun park_0781_CNP : CNP ;
fun part_0782_CN : CN ;
fun party_bag_0783_CNM : CNM ;
fun party_0784_CN : CN ;
-- DERIVED 0785 VP pass napkin distribuire tovaglioli dela ut (servetter) Serviette geben podati prtiček 
-- DERIVED 0786 VP pass out cups distribuire bicchieri dela ut (glas) pass out Tassen podati skodelice 
-- DERIVED 0787 VP pass out papers distribuire fogli dela ut blad pass out Papiere podati dokumente 
fun pass_0788_V : V ;
fun passport_0789_CN : CN ;
fun past_0790_AP : AP ;
fun pasta_0791_CNM : CNM ;
fun pay_attention_0792_V : V ;
fun pay_attention_0792_V2 : V2 ;
fun peanut_butter_0793_CNM : CNM ;
-- DUPLICATE 0794 CNCONJ pen and paper carta e penna papper och penna Stift und Papier kuli in papir DUPLICATE 0777 
fun pen_0794_CN : CN ;
fun penicillin_0795_CNM : CNM ;
-- DUPLICATEMAYBE lin pen_0796_CN = mkiCN "pen" ; -- CN
-- DUPLICATE 0797 CN pen penna penna der Schreistift pero DUPLICATE 0796 
fun people_0798_CNPLH : CNPLH ;
-- DERIVED lin people_0799_NPH = mkiNPH "people" ; -- NPH
-- DERIVED 0800 CNPLH people persone personer Menschen osebje 
fun pepper_0801_CNM : CNM ;
fun pepper_0802_CN : CN ;
fun perfect_0803_AP : AP ;
fun perfume_0804_CNM : CNM ;
fun personal_care_0805_CNM : CNM ;
fun person_0806_CNH : CNH ;
fun pharmacy_0807_CNP : CNP ;
fun phone_number_0808_CN : CN ;
fun phone_0809_V : V ;
fun phone_0809_V2 : V2 ;
fun photo_book_0810_CN : CN ;
fun photo_0811_CN : CN ;
fun pick_up_0812_V2 : V2 ;
-- DUPLICATE lin pick_up_0813_V2 = mkiV2 "pick up" ; 
fun picture_0814_CN : CN ;
fun pie_0815_CN : CN ;
fun pie_0815_CNM : CNM ;
fun pita_bread_0816_CN : CN ;
fun pizza_0817_CN : CN ;
fun pizza_0817_CNM : CNM ;
fun place_0818_CNP : CNP ;
fun plant_0819_V2 : V2 ;
fun plant_0820_CN : CN ;
-- DUPLICATEMAYBE lin plant_0821_CN = mkiCN "plant" ; -- CN
fun plastic_bag_0822_CN : CN ;
fun plastic_container_0823_CN : CN ;
fun plastic_liner_0824_CN : CN ;
fun plastic_wrap_0825_CNM : CNM ;
fun plate_0826_CN : CN ;
fun play_comedy_0827_CN : CN ;
fun play_drama_0828_CN : CN ;
fun play_0829_CN : CN ;
-- DUPLICATEMAYBE lin play_0830_CN = mkiCN "play" ; -- CN
fun please_be_quiet_0831_Utt : Utt ;
fun I'm_sorry_0832_Interj : Interj ;
fun please_0833_Interj : Interj ;
-- DUPLICATEMAYBE lin please_0834_Interj = mkiInterj "please" ; -- Interj
-- DERIVED 0835 Utt please push me per favore spingimi var snäll och skjut på push mich bitte prosim potisnite me 
-- DERIVED 0836 Utt please repeat per favore ripeti var snäll och säg om det bitte wiederholen prosim ponovite 
-- DERIVED 0837 Utt please wait per favore aspetta var snäll och vänta Warten Sie mal prosim počakajte 
fun plug_0838_CN : CN ;
fun socket_0838_CN : CN ;
fun plug_in_0839_V2 : V2 ;
fun plumb_0840_V : V ;
fun point_0841_CN : CN ;
fun police_car_0842_CN : CN ;
fun police_officer_0843_CNH : CNH ;
fun police_0844_CNH : CNH ;
fun police_station_0845_CNP : CNP ;
fun political_party_0846_CN : CN ;
fun pond_0847_CN : CN ;
fun portiere_0848_CNH : CNH ;
fun postal_office_0849_CNP : CNP ;
fun postcard_0850_CN : CN ;
fun potatoes_salad_0851_CNM : CNM ;
fun potted_plant_0852_CN : CN ;
-- DERIVED 0853 VPSlash pour out into bowl versare nella ciotola häll i skålen ausgießen in Schale izliti v skledo 
fun pour_out_0854_V2 : V2 ;
fun practice_0855_CNM : CNM ;
fun prefer_0856_V2 : V2 ;
fun prefer_0856_V3 : V3 ;
fun pregnant_woman_0857_CNH : CNH ;
fun present_0858_AP : AP ;
fun price_ticket_0859_CN : CN ;
fun printer_0860_CN : CN ;
fun professor_0861_CNH : CNH ;
fun program_0862_V2 : V2 ;
fun microwave_0862_CN : CN ;
-- DERIVED 0862 VP programming the microwave programmare il microonde programmera micron Programmierung der Mikrowelle programirati mikrovalno pečico 
fun public_0863_AP : AP ;
fun pull_down_0864_V2 : V2 ;
fun pull_out_0865_V2 : V2 ;
-- DERIVED 0865 VP pull the plug out staccare la spina dra ur sladden Ziehen Sie den Stecker aus izvlecite vtikač iz 
fun tomato_pulp_0866_CNM : CNM ;
fun purchases_0867_CNPL : CNPL ;
-- DERIVE 0868 VP push the sensor premere il sensore tryck på kontakten drücken Sie den Sensor potisnite senzor 
fun put_after_shave_0869_VP : VP ;
fun put_cork_on_0870_VP : VP ;
fun put_coat_on_0871_VP : Det -> VP ;
fun put_in_0872_V2 : V2 ;
fun put_in_0873_VP : NP -> NP -> VP ;
-- DERIVED 0873 VPSlash put in the bag mettere nel sacchetto lägga i väskan setzen in der Tasche daj v vrečko (torbo) 
-- DERIVED 0874 VPSlash put in the bowl mettere nella ciotola lägga i skålen setzen in der Schüssel daj v skledo 
-- DERIVED 0875 VPSlash put in the box mettere nella scatola lägga i lådan setzen in der Box daj v škatlo 
-- DERIVED 0876 VP put in the head mettere dentro la testa stick in huvudet in den Kopf legen daj v glavo 
fun put_on_0877_V2 : V2 ;
fun put_on_0878_V2 : V2 ;
fun contact_lens_0879_CN : CN ;
-- DERIVED 0879 VP put on the eye lens mettere le lenti a contatto sätta in kontaktlinser setzen auf die Augenlinse daj si očesne leče
fun basket_0880_CN : CN ;
-- DERIVED 0880 VP put the clothes in the basket mettere i vestiti nella cesta lägga kläder i korgen die Kleider in den Korb setzen daj obleke v košaro 
fun put_together_0881_V2 : V2 ;
fun quarter_0882_CN : CN ;
fun radio_alarm_clock_0883_CN : CN ;
fun radio_announcer_0884_CNH : CNH ;
fun rail_0885_CN : CN ;
fun railroad_station_0886_CNP : CNP ;
fun raining_boot_0887_CN : CN ;
fun rain_0888_V0 : V0 ;
-- DERIVED 0889 VP raise arm alzare il braccio lyft armen der Arm erhöhen dvigniti roko 
-- DERIVED 0890 VP raise hand alzare la mano lyft handen die Hand heben dvigniti dlan 
-- DERIVED 0891 VP raise head alzare la testa lyft huvudet der Kopf heben dvigniti glavo 
-- DERIVED 0892 VP raise pants alzare i pantaloni dra upp byxorna die Hose erhöhen dvigniti hlače 
fun rap_music_0893_CNM : CNM ;
fun razor_0894_CN : CN ;
-- DERIVED 0895 Imp read again leggilo di nuovo läs igen erneut lesen preberite ponovno 
fun read_0896_V : V ;
fun read_0896_V2 : V2 ;
-- DERIVED 0897 Imp read this leggere questo läsa en fråga* lesen Sie dies preberi to 
fun really_0898_Adv : Adv ;
fun red_berry_0899_CN : CN ;
fun red_0900_AP : AP ;
fun remote_control_0901_CN : CN ;
fun reservation_0902_CN : CN ;
fun reserved_0903_AP : AP ;
fun restaurant_0904_CNP : CNP ;
fun retired_0905_AP : AP ;
fun retirement_0906_CNM : CNM ;
fun return_to_0907_V2 : V2 ;
fun have_fun_0908_VP : VP ;
fun rice_0909_CNM : CNM ;
fun ride_bike_0910_VP : Det -> VP ;
fun right_0911_AP : AP ;
fun right_0912_AP : AP ;
fun right_0913_AP : AP ;
fun right_0913_Adv : Adv ;
fun ring_0914_CN : CN ;
fun ring_bell_0915_CN : CN ;
fun ring_0916_V : V ;
fun rinse_ones_mouth_0917_VP : VP ;
fun rinse_mouth_0917_VP : Pron -> VP ;
fun roast_beef_sandwich_0918_CN : CN ;
fun robbery_0919_CN : CN ;
fun rocking_chair_0920_CN : CN ;
fun rock_music_0921_CNM : CNM ;
fun rock_0922_CN : CN ;
fun roll_of_paper_0923_CN : CN ;
fun roll_0924_V : V ;
fun roll_0924_V2 : V2 ;
fun romantic_story_0925_CN : CN ;
fun room_0926_CN : CN ;
fun room_0927_CN : CN ;
fun rub_out_0928_V2 : V2 ;
fun run_away_from_0929_V2 : V2 ;
fun run_away_0930_V : V ;
fun running_shoe_0931_CN : CN ;
fun sachet_of_sugar_0932_CN : CN ;
fun sad_tale_0933_CN : CN ;
fun sad_0934_AP : AP ;
fun salad_dressing_0935_CNM : CNM ;
fun salad_0936_CNM : CNM ;
fun salary_0937_CN : CN ;
-- DUPLICATEMAYBE lin salary_0938_CN = mkiCN "salary" ; --- stipendio -- CN
-- DERIVED 0939 CNCONJ salt and pepper sale e pepe salt och peppar Salz und Pfeffer sol in poper
fun salt_0940_CNM : CNM ;
fun sand_0941_CNM : CNM ;
-- DERIVED 0942 Weekday Saturday sabato lördag der Samstag sobota 
fun say_0943_V2 : V2 ;
fun say_0943_VS : VS ;
-- DERIVED 0944 VP say the truth testimoniare la verità vittna die Wahrheit sagen povedati resnico 
fun scarf__0945_CN : CN ;
fun scary_0946_AP : AP ;
-- DUPLICATEMAYBE lin scary_0947_AP = mkiAP "scary" ; --- spaventoso -- AP
fun scary_tale_0948_CN : CN ;
fun schedule_0949_CN : CN ;
fun school_0950_CNP : CNP ;
fun screen_0951_CN : CN ;
fun sculpture_0952_CN : CN ;
-- DERIVED 0953 VP seal an envelope chiudere una busta försluta ett kuvert einen Umschlag dichten zapečatiti kuverto 
fun sea_0954_CN : CN ;
fun secretary_0955_CNH : CNH ;
fun see_0956_V : V ;
fun see_0956_V2 : V2 ;
fun see_you_later_0957_Interj : Interj ;
-- DUPLICATE lin see_you_later_0958_Interj = mkiInterj "see you later" ; -- Interj
fun senior_0959_CNH : CNH ;
fun sentimental_tv_movie_0960_CN : CN ;
fun service_0961_CN : CN ;
fun set_table_0962_VP : Det -> VP ;
fun several_0963_Det : Det ;
fun sewing_machine_0964_CN : CN ;
-- DERIVED 0965 VP shake a carpet sbattere il tappeto skaka mattan einen Teppich schütteln stresati preprogo 
-- DERIVED 0966 VP shake a foot sbattere i piedi sparka med fötterna einen Fuss schütteln stresati nogo (stopalo) 
-- DERIVED 0967 VP shake one's hands scuoti le mani skaka händerna Hände schütteln rokovati se 
-- DERIVED 0968 VP shake one's head scuotere la testa skaka på huvudet mit dem Kopf schütteln tresti z glavo 
fun shame_0969_CNM : CNM ;
fun shampoo_ones_hair_0970_VP : VP ;
fun shampoo_hair_0970_VP : Pron -> VP ;
fun shave_0971_V : V ;
fun shave_0971_V2 : V2 ;
fun shaving_cream_0972_CNM : CNM ;
-- DERIVED 0973 Pron she lei hon sie ona 
fun shelf_0974_CN : CN ;
fun shirt_0975_CN : CN ;
fun shoe_0976_CN : CN ;
-- DUPLICATEMAYBE lin shoe_0977_CN = mkiCN "shoe" ; ---- scarpa -- CN
-- DERIVED lin shoes_0978_CN = mkiCN "shoes" ; -- CN
fun shoe_store_0979_CNP : CNP ;
fun shopping_bag_0980_CN : CN ;
fun shopping_center_0981_CNP : CNP ;
fun shopping_0982_CNM : CNM ;
fun short_0983_AP : AP ;
fun short_sleeve_0984_CN : CN ;
fun shower_cap_0985_CN : CN ;
fun shower_0986_CN : CN ;
fun shower_0987_VP : VP ;
fun sick_0988_AP : AP ;
fun sidewalk_border_0989_CNP : CNP ;
fun sidewalk_0990_CNP : CNP ;
fun signal_smoke_system_0991_CN : CN ;
fun silver_0992_CNM : CNM ;
fun sink_0993_CN : CN ;
fun sin_0994_CN : CN ;
fun sir_0995_CNH : CNH ;
fun sister_0996_CNH : CNH ;
-- DERIVED 0997 VP sit on floor sedersi per terra sitta på marken auf dem Boden sitzen sediti na tleh 
-- DERIVED 0998 VP sit on floor stare seduti sitta på golvet auf dem Boden sitzen usesti na tla 
fun skin_0999_CNM : CNM ;
fun skirt_1000_CN : CN ;
fun sky_1001_CN : CN ;
fun slow_1002_AP : AP ;
fun slowly_1003_Adv : Adv ;
fun small_form_for_biscuit_1004_CN : CN ;
fun small_1005_AP : AP ;
fun smoker_1006_CNH : CNH ;
fun snack_bar_1007_CNP : CNP ;
fun snack_time_1008_CNT : CNT ;
fun sneaker_1009_CN : CN ;
fun snow_clothes_1010_CNPL : CNPL ;
fun snow_crystal_1011_CN : CN ;
fun snowing_boot_1012_CN : CN ;
fun snow_1013_CNM : CNM ;
fun snow_1014_V0 : V0 ;
fun soap_opera_1015_CN : CN ;
fun soap_1016_CNM : CNM ;
fun soccer_1017_CNM : CNM ;
fun soccer_field_1018_CNP : CNP ;
fun soccer_game_1019_CN : CN ;
fun sofa_1020_CN : CN ;
fun someone_1021_NPH : NPH ;
fun some_time_ago_1022_AdvT : AdvT ;
fun son_1023_CNH : CNH ;
fun chili_soup_1024_CNM : CNM ;
fun soup_1025_CNM : CNM ;
fun bean_soup_1026_CNM : CNM ;
fun carrot_soup_1027_CNM : CNM ;
fun chicken_soup_1028_CNM : CNM ;
fun green_pea_soup_1029_CNM : CNM ;
fun lentil_soup_1030_CNM : CNM ;
fun onion_soup_1031_CNM : CNM ;
fun potato_soup_1032_CNM : CNM ;
fun tomato_soup_1033_CNM : CNM ;
fun soup_plate_1034_CN : CN ;
fun sour_1035_AP : AP ;
fun sour_cream_1036_CNM : CNM ;
fun spicy_1037_AP : AP ;
fun spoon_1038_CN : CN ;
fun sports_jacket_1039_CN : CN ;
fun sport_1040_CNM : CNM ;
-- DUPLICATE 1041 CNM sport sport sport der Sport iz čistega veselja DUPLICATE 1040 
fun stadium_1042_CNP : CNP ;
fun stair_1043_CNPL : CNPL ;
fun stamp_1044_CN : CN ;
fun stamp_1045_V2 : V2 ;
fun stamp_1046_CN : CN ;
fun star_1047_CN : CN ;
fun walk_1048_CN : CN ;
-- DERIVED 1048 VP start a walk iniziare una passeggiata påbörja en promenad starten Sie einen Spaziergang začeti s sprehodom (iti na sprehod) 
fun fuel_station_1049_CNP : CNP ;
fun stay_1050_VA : VA ;
fun stay_1050_V : V ;
fun steak_1051_CN : CN ;
fun stomach_1052_CN : CN ;
fun stop_1053_CNP : CNP ;
-- DUPLICATE lin stop_1054_V = mkiV "stop" ; -- V 1169
fun stormy_1055_AP : AP ;
fun story_1056_CN : CN ;
fun straight_1057_Adv : Adv ;
fun straight_1058_AP : AP ;
fun straw_hat_1059_CN : CN ;
fun street_1060_CNP : CNP ;
fun street_1061_CNP : CNP ;
fun strike_match_1062_VP : Det -> VP ;
fun strip_bed_1063_VP : Det -> VP ;
fun strong_1064_AP : AP ;
fun student_1065_CNH : CNH ;
fun study_1066_V : V ;
fun study_1066_V2 : V2 ;
fun substance_1067_CNM : CNM ;
fun subway_1068_CNP : CNP ;
fun such_1069_AP : AP ;
fun sugar_1070_CNM : CNM ;
-- DERIVED 1071 Weekday Sunday domenica söndag der Sonntag nedelja 
fun sunglasses_1072_CNPL : CNPL ;
fun sunny_1073_AP : AP ;
fun sure_1074_AP : AP ;
fun surprise_1075_CN : CN ;
fun sweat_shirt_1076_CN : CN ;
fun candy_sweet_1077_CN : CN ;
fun sweet_1078_AP : AP ;
fun sweet_potato_1079_CNM : CNM ;
fun swimming_pool_1080_CNP : CNP ;
fun swim_1081_V : V ;
fun switch_off_1082_V2 : V2 ;
fun off_1083_Adv : Adv ;
fun table_1084_CN : CN ;
fun table_1085_CN : CN ;
fun take_a_nap_1086_VP : VP ;
fun take_1087_V2 : V2 ;
-- DERIVED 1087 VP take another table prendere un'altra tabella hämta en annan karta nehmen Sie einen anderen Tisch uporabi drugo tabelo 
fun take_away_1088_V2 : V2 ;
fun take_off_1089_V2 : V2 ;
-- DERIVED 1089 VP take cap off togliere il tappo ta av sig mössan nehmen Kappe ab odstranite pokrov 
fun take_care_of_1090_V2 : V2 ;
-- DERIVED 1091 VP take cover off togliere la coperta ta av täcket In Deckung ab odstraniti pokrovček 
-- DERIVED 1092 VP take off the hat togliersi il cappello ta av hatten nehmen Sie den Hut ab sneti klobuk 
-- DERIVED 1093 VP take off the trousers levare i pantaloni ta av byxorna di Hoe ausziehen sleči hlače 
-- DERIVED 1094 VP take plug off togliere la spina dra ur kontakten nehmen ausstecken odstraniti zamašek 
-- DERIVED 1095 VP take the dog for a walk portare il cane a fare un giro rasta hunden nehmen Sie den Hund für einen Spaziergang vzeti psa na sprehod 
-- DERIVED 1096 VP take the toilet paper prendere la carta igienica ta toalettpapper nehmen Sie die WC-Papier vzeti toaletni papir 
-- DERIVED 1097 VP take trash out portare fuori l'immondizia ta ut soporna nehmen Sie Müll aus vrži smeti 
-- DERIVED 1098 VP take weed off togliere la gramigna rensa ogräs nehmen Unkraut aus odstraniti plevel 
fun talcum_powder_1099_CNM : CNM ;
fun talent_1100_CNH : CNH ;
fun talent_1100_CNM : CNM ;
fun taxi_1101_CNP : CNP ;
fun teacher_1102_CNH : CNH ;
fun teacher_1103_CNH : CNH ;
fun team_1104_CNH : CNH ;
fun tea_set_1105_CN : CN ;
fun tea_1106_CNM : CNM ;
fun telephone_1107_CN : CN ;
fun television_guide_1108_CN : CN ;
fun television_1109_CN : CN ;
fun tell_story_1110_VP : Det -> VP ;
fun tell_1111_V : V ;
fun tell_1111_V2 : V2 ;
fun tell_1111_V3 : V3 ;
fun television_news_1112_NP : NP ;
fun temperature_1113_CN : CN ;
-- DERIVED 1114 Numeral ten dieci tio zehn deset 
fun tennis_game_1115_CN : CN ;
fun tennis_1116_CNM : CNM ;
fun text_1117_CN : CN ;
fun thank_1118_V2 : V2 ;
fun thank_you_1119_Interj : Interj ;
-- DERIVED lin that_1120_Det = mkiDet "that" ; 
fun theater_1121_CNP : CNP ;
fun there_1122_AdvP : AdvP ;
-- DERIVED 1123 Utt there's something c'è qualcosa där är något da ist etwas je nekaj 
fun the_same_identical_1124_AP : AP ;
-- DERIVED 1125 Pron they loro de sie oni 
fun thin_1126_AP : AP ;
-- DERIVED 1127 Ord third terzo tredje dritte tretji 
fun thirst_1128_CNM : CNM ;
fun this_month_1129_AdvT : AdvT ;
-- DERIVED lin this_1130_Det = mkiDet "this" ; 
fun throw_away_1131_V2 : V2 ;
fun throw_out_1132_V2 : V2 ;
fun throw_the_dice_1133_VP : VP ;
fun throw_up_1134_V : V ;
fun throw_up_1134_V2 : V2 ;
fun thumb_1135_CN : CN ;
-- DERIVED 1136 Weekday Thursday giovedì torsdag der Donnestag četrtek 
fun ticket_1137_CN : CN ;
fun tidy_up_1138_V : V ;
fun tidy_up_1138_V2 : V2 ;
-- DUPLICATEMAYBE lin tidy_up_1139_V = partV (mkV "tidy") "up" ; --- mettere in ordine -- V
-- DUPLICATEMAYBE lin tidy_up_1139_V2 = mkiV2p "tidy" "up" ; -- V2
fun tie_1140_V2 : V2 ;
fun tie_1141_CN : CN ;
fun time_1142_CNM : CNM ;
fun tin_can_masher_1143_CN : CN ;
fun tender_chicken_1144_CNM : CNM ;
fun on_the_back_1145_Adv : Adv ;
-- DERIVED 1145 VP be lying down on the back essere sdraiati sulla schiena ligga på rygg auf dem Rücken liegen ležati na hrbtu
fun on_the_side_1146_Adv : Adv ;
-- DERIVED 1146 VP be lying down on the side essere sdraiati sul fianco ligga på sidan auf der Seite nach unten liegen ležati na strani 
fun celebrate_1147_V : V ;
fun celebrate_1147_V2 : V2 ;
-- DUPLICATE 1148 V2 V drive guidare köra fahren voziti DUPLICATE 0310 
fun toe_nail_1149_CN : CN ;
fun fix_1150_V2 : V2 ;
fun float_1151_V : V ;
fun gamble_1152_V : V ;
fun hurt_1153_V : V ;
fun hurt_1153_V2 : V2 ;
fun toilet_1154_CNP : CNP ;
fun toilet_paper_1155_CNM : CNM ;
fun toilet_1156_CNP : CNP ;
fun look_1157_V : V ;
fun look_1157_V2 : V2 ;
fun look_1157_VA : VA ;
fun tomato_in_box_1158_CNM : CNM ;
fun tomato_juice_1159_CNM : CNM ;
fun tomato_1160_CN : CN ;
fun tomato_sauce_1161_CNM : CNM ;
-- DUPLICATEMAYBE lin tongue_1162_CN = mkiCN "tongue" ; -- CN
fun too_big_1163_AP : AP ;
fun too_expensive_1164_AP : AP ;
fun too_small_1165_AP : AP ;
fun tooth_1166_CN : CN ;
fun toothpaste_1167_CNM : CNM ;
fun register_1168_V : V ;
fun stop_1169_V : V ;
fun stop_1169_V2 : V2 ;
-- DUPLICATE 1170 V V2 stop fermare stanna anhalten prekiniti DUPLICATE 1169
fun swear_1171_V : V ;
fun turn_round_1172_V : V ;
fun turn_1173_V : V ;
fun tour_1174_CN : CN ;
fun tourist_1175_CNH : CNH ;
fun watch_1176_V2 : V2 ;
fun whip_1177_V2 : V2 ;
fun town_1178_CNP : CNP ;
fun traffic_lights_1179_CN : CN ;
fun trainer_1180_CNH : CNH ;
fun train_1181_CNP : CNP ;
-- DUPLICATE 1182 CNP train treno tåg der Zug trenirati DUPLICATE 1181 
fun trash_bag_1183_CN : CN ;
fun trash_can_1184_CN : CN ;
fun treat_bag_1185_CN : CN ;
fun tree_1186_CN : CN ;
fun travel_1187_V : V ;
fun trip_1188_CN : CN ;
fun true_1189_AP : AP ;
fun try_1190_V2 : V2 ;
-- DERIVED 1190 VP try another page prova un'altra pagina försök med en annan sida eine andere Seite versuchen poskusite na drugi strani 
-- DERIVED 1191 Weekday Tuesday martedì tisdag der Dienstag torek 
fun tuna_fish_1192_CNM : CNM ;
-- DERIVED 1193 VP turn blanket on mettere la coperta lägga på filten drehen Decke auf daj odejo čez 
-- DERIVED 1194 VP turn off the tap chiudere il rubinetto stänga kranen abschalten ugasniti … 
-- DERIVED 1195 VP turn off small tin chiudere il barattolo stänga burken kleine Dose abdrehen zapreti malo pločevinko 
-- DERIVED 1196 VP turn on aprire il rubinetto öppna kranen anmachen prižgati 
-- DERIVED 1197 VP turn on can aprire il barattolo öppna burken die Dose andrehen odpreti pločevinko 
-- DERIVED 1198 Utt turns for me gira per me det är min tur stellt sich für mich obrnejo zame 
-- DERIVED 1199 Imp turn the page gira la pagina bläddra dreht die Seite obrnejo stran 
fun turn_1200_CN : CN ;
-- DERIVED 1201 VP turn the temperature down abbassare la temperatura sänka värmen drehen Temperatur nach unten zmanjšaj temperaturo 
-- DERIVED 1202 VP turn the temperature up alzare la temperatura höja värmen drehen Temperatur bis povišaj temperaturo 
-- DERIVED 1203 VP turn the page cambiare pagina vända blad umblättern obrni stran 
-- DUPLICATEMAYBE lin turn_1204_V = mkiV "turn" ; -- V
-- DUPLICATEMAYBE lin turn_1204_V2 = mkiV2 "turn" ; -- V2
fun turn_off_1205_V2 : V2 ;
-- DERIVED 1205 VP turn the TV off spegni la tv stänga av TV:n der Fernseher ausschalten ugasni televizor 
fun turn_on_1206_V2 : V2 ;
-- DERIVED 1206 VP turn the TV on accendi la tv sätta på TV:n der Fernseher einschalten prižgi televizor 
fun TV_1207_CN : CN ;
fun ugh_1208_Interj : Interj ;
fun ugly_1209_AP : AP ;
fun ugly_show_1210_CN : CN ;
fun umbrella_1211_CN : CN ;
fun undershirt_1212_CN : CN ;
fun under_1213_PrepP : PrepP ;
fun understand_1214_V : V ;
fun understand_1214_V2 : V2 ;
fun underwear_1215_CNM : CNM ;
fun unemployed_1216_AP : AP ;
fun united_1217_AP : AP ;
fun university_1218_CNP : CNP ;
fun unpleasant_1219_AP : AP ;
fun until_1220_PrepT : PrepT ;
fun present_1221_CN : CN ;
-- DERIVED 1221 VP unwrap a present scartare un regalo öppna en present ein Geschenk auspacken odvij darilo 
fun use_1222_V2 : V2 ;
fun wagon_1223_CN : CN ;
-- DERIVED 1224 Imp wait a minute aspetta un attimo vänta lite warte eine Minute počakaj minuto 
fun wait_1225_V : V ;
fun wait_1225_V2 : V2 ;
fun wallet_1226_CN : CN ;
fun wall_1227_CN : CN ;
fun wall_1228_CN : CN ;
-- DERIVED 1229 Cl I want to be alone voglio restare solo jag vill vara ifred will allein sein želim biti sam 
---fun want_1230_V : V ;
fun want_1230_V2 : V2 ;
fun want_1230_VV : VV ;
fun wash_dishes_1231_VP : VP ;
fun wash_ones_hands_1232_VP : VP ;
fun wash_hands_1232_VP : Pron -> VP ;
fun washing_line_1233_CN : CN ;
fun washing_machine_1234_CN : CN ;
fun wash_1235_V : V ;
fun wash_1235_V2 : V2 ;
-- DERIVED 1236 VP wash windows lavare le finestre tvätta fönster Wasch Fenster umiti okna 
fun watch_1237_CN : CN ;
-- DERIVED 1238 VP watch TV se på TV die Uhr gledati 
fun water_1239_CNM : CNM ;
fun flowing_1240_CNM : CNM ;
fun watering_can_1241_CN : CN ;
fun way_1242_CN : CN ;
fun weak_1243_AP : AP ;
fun veal_1244_CNM : CNM ;
-- DERIVED 1245 Weekday Wednesday mercoledì onsdag der Mittwoch sreda 
fun week_1246_CN : CN ;
fun vegetable_garden_1247_CNP : CNP ;
fun vegetable_1248_CN : CN ;
-- DUPLICATEMAYBE lin vegetable_1249_CN = mkiCN "vegetable" ; --- verdura -- CN
fun vegetarian_1250_CN : CN ;
fun well_done_1251_Utt : Utt ;
-- DERIVED 1252 Pron we noi vi wir mi 
fun veterinary_1253_CNH : CNH ;
fun wet_pants_1254_CNPL : CNPL ;
-- DERIVED 1255 IP what che cosa vad Was kaj 
-- DERIVED 1256 QCl what color game piece? che colore vuoi? vilken färg vill du ha? welche Farbe Spielfigur ? kakšne barve je igralna figura 
-- DERIVED 1257 QCl what do you prefer? cosa preferisci? vad föredrar du? Was bevorzugen Sie? kaj imaš rajši? 
-- DERIVED 1258 QCl what's have you been up to? cosa ti è successo? vad har hänt? Wie läuft es bei dir so? kaj nameravaš? 
-- DERIVED 1259 QCl what's your name? come ti chiami? vad heter du? Wie heisst du? kako vam je ime? 
-- DERIVED 1260 QCl what TV show do you want to watch? quale programma vuoi guardare? vilket program vill du se? Welche Show möchtest u schauen? katero oddajo želite gledati? 
-- DERIVED 1261 IAdv when quando när wann kdaj 
-- DERIVED 1262 IAdv where dove var wo kje 
-- DERIVED 1263 QCl where is dov'è var är wo ist kje je
fun first_1264_Adv : Adv ;
-- DERIVED 1264 QCl who goes first? chi comincia? vem börjar? wer geht zuerst? kdo bo prvi? 
-- DERIVED 1265 QCl who goes first? chi va per primo? vem är först? wer geht zuerst? Kdo gre prvi? 
-- DERIVED 1266 QCl who am I? chi sono? vem är jag? Wer bin ich? Kdo sem jaz? 
fun window_1267_CN : CN ;
fun windy_and_stormy_1268_AP : AP ;
fun windy_1269_AP : AP ;
fun wine_1270_CNM : CNM ;
-- DERIVED 1271 VP win the lottery vincere la lotteria vinna på lotteri im Lotto gewinnen zmagal na loteriji 
-- DERIVED 1272 VP wipe face lavare il viso tvätta ansiktet das Gesicht abwischen obristi obraz 
-- DERIVED 1273 VP wipe table strofinare il tavolo torka bordet den Tisch wischen obriati tablo 
fun visit_1274_V : V ;
fun visit_1274_V2 : V2 ;
-- DERIVED lin with_1275_Prep = mkiPrep "with" ; 
fun without_1276_Prep : Prep ;
fun volume_down_1277_Utt : Utt ;
fun volume_up_1278_Utt : Utt ;
fun woman_1279_CNH : CNH ;
fun wood_1280_CNM : CNM ;
fun wool_hat_1281_CN : CN ;
fun word_1282_CN : CN ;
fun vote_1283_CN : CN ;
-- DERIVED 1284 VV* would not non potere inte kunna würde nicht ne bi 
fun wrist_1285_CN : CN ;
-- DERIVED 1286 VP write a letter scrivere una lettera skriva ett brev einen Brief schreiben napiati pismo 
fun write_1287_V : V ;
fun write_1287_V2 : V2 ;
-- DERIVED 1288 VP write this scrivere questo skriv det här schreibe dies napisati to 
fun wrong_1289_AP : AP ;
fun yard_work_1290_CNM : CNM ;
fun year_1291_CN : CN ;
fun yellow_1292_AP : AP ;
fun yes_1293_Interj : Interj ;
-- DUPLICATE lin yes_1294_Interj = mkiInterj "yes" ; -- Interj
-- DERIVED 1295 Cl you are close sei vicino du är nära du bist nah dran blizu ste 
-- DERIVED 1296 Cl you are getting close ti stai avvicinando du kommer närmare Sie sind immer in der Nähe približujete se 
-- DERIVED 1297 Cl you are right hai ragione du har rätt Du hast recht prav imate 
-- DERIVED 1298 Cl you are way off sei lontano du är långt ifrån Sie sind weg ste daleč od
fun misunderstand_1299_V : V ;
-- DERIVED 1299 Cl you have misunderstood hai frainteso du har missförstått Sie haben missverstanden narobe ste razumeli 
fun young_1300_AP : AP ;
fun young_man_1301_CNH : CNH ;
fun young_woman_1302_CNH : CNH ;
-- DERIVED 1303 Quant your tuo din dein,euer,Ihr tvoj/vaš 
fun your_turn_1304_Interj : Interj ;
-- DERIVED 1305 Pron you tu du Sie ti 
-- DERIVED 1306 Pron you voi ni du vi 
fun zucchino_1307_CN : CN ;
fun English_1308_AP : AP ;
fun be_in_a_hurry_1309_VP : VP ;
-- DERIVED 1310 Cl I'm not in a hurry non ho fretta jag har inte bråttom ich habe es nicht eilig se mi ne mudi
fun not_so_fast_1311_Utt : Utt ;
fun slower_1312_Utt : Utt ;
fun no_hurry_1313_Utt : Utt ;
fun airplane_1314_CNP : CNP ;
-- DUPLICATE lin airport__1315_CNP = mkiCNP "airport " "at" ; -- CNP
fun apartment_building_1316_CNP : CNP ;
fun bakery_1317_CNP : CNP ;
fun bank__1318_CNP : CNP ;
fun bookstore_1319_CNP : CNP ;
-- DUPLICATEMAYBE lin building_1320_CNP = mkiCNP "building" ; -- CNP
-- DUPLICATEMAYBE lin bus_1321_CNP = mkiCNP "bus" ; -- CNP
fun butcher_shop_1322_CNP : CNP ;
fun café_1323_CNP : CNP ;
-- DUPLICATEMAYBE lin car_1324_CNP = mkiCNP "car" ; -- CNP
-- DUPLICATEMAYBE lin church_1325_CNP = mkiCNP "church" ; -- CNP
-- DUPLICATEMAYBE lin city_1326_CNP = mkiCNP "city" ; -- CNP
fun city_hall_1327_CNP : CNP ;
-- DUPLICATEMAYBE lin clothing_store_1328_CNP = mkiCNP "clothing store" ; -- CNP
fun coffee_shop_1329_CNP : CNP ;
-- DUPLICATEMAYBE lin department_store_1330_CNP = mkiCNP "department store" ; -- CNP
-- DUPLICATEMAYBE lin pharmacy_1331_CNP = mkiCNP "pharmacy" ; -- CNP
fun electronics_store_1332_CNP : CNP ;
fun intersection_1333_CNP : CNP ;
fun lamppost_1334_CN : CN ;
-- DUPLICATEMAYBE lin library_1335_CNP = mkiCNP "library" ; -- CNP
fun market_1336_CNP : CNP ;
fun mayor_1337_CNH : CNH ;
fun mosque_1338_CNP : CNP ;
-- DUPLICATEMAYBE lin park_1339_CNP = mkiCNP "park" ; -- CNP
-- DUPLICATEMAYBE lin restaurant_1340_CNP = mkiCNP "restaurant" ; -- CNP
-- DUPLICATEMAYBE lin shoe_store_1341_CNP = mkiCNP "shoe store" ; -- CNP
fun shopping_mall_1342_CNP : CNP ;
-- DUPLICATEMAYBE lin sidewalk_1343_CNP = mkiCNP "sidewalk" "on" ; -- CNP
fun store_1344_CNP : CNP ;
-- DUPLICATEMAYBE lin street_1345_CNP = mkiCNP "street" ; -- CNP
fun streetlight_1346_CN : CN ;
fun suburban_1347_CN : CN ;
fun subway_metro_1348_CNP : CNP ;
fun supermarket_1349_CNP : CNP ;
fun synagogue_1350_CNP : CNP ;
-- DUPLICATEMAYBE lin taxi_1351_CNP = mkiCNP "taxi" ; -- CNP
fun temple_1352_CNP : CNP ;
-- DUPLICATE 1353 V2 buy comprare köpa kaufen kupiti DUPLICATE 0145 
fun go_shopping_1354_V : V ;
-- DUPLICATEMAYBE lin town_1355_CNP = mkiCNP "town" "at" ; -- CNP
fun traffic_1356_CNP : CNP ;
-- DUPLICATEMAYBE lin train_1357_CNP = mkiCNP "train" ; -- CNP
fun train_station_1358_CNP : CNP ;
fun village_1359_CNP : CNP ;
-- DERIVED 1360 QCl what are you drinking? che cosa bevi? vad vill du ha att dricka? Was trinkst du? kaj piješ? 
-- DERIVED 1361 QCl who is that? chi è quello? vem är det? Wer ist das? kdo je to? 
-- DUPLICATE lin apartment_1362_CNP = mkiCNP "apartment" ; -- CNP
-- DUPLICATEMAYBE lin bathroom_1363_CNP = mkiCNP "bathroom" ; -- CNP
-- DUPLICATEMAYBE lin bedroom_1364_CNP = mkiCNP "bedroom" ; -- CNP
fun carpet_rug_1365_CN : CN ;
fun CD_player_1366_CN : CN ;
-- DUPLICATEMAYBE lin ceiling_1367_CN = mkiCN "ceiling" ; -- CN
-- DUPLICATEMAYBE lin chair_1368_CN = mkiCN "chair" ; -- CN
-- DUPLICATEMAYBE lin closet_1369_CNP = mkiCNP "closet" ; -- CNP
fun couch_1370_CN : CN ;
fun curtain_1371_CN : CN ;
fun dining_room_1372_CNP : CNP ;
fun door_1373_CN : CN ;
fun DVD_player_1374_CN : CN ;
-- DUPLICATEMAYBE lin floor_1375_CNP = mkiCNP "floor" "on" ; -- CNP
fun hall_1376_CNP : CNP ;
-- DUPLICATEMAYBE lin house_1377_CNP = mkiCNP "house" ; -- CNP
-- DUPLICATEMAYBE lin kitchen_1378_CNP = mkiCNP "kitchen" ; -- CNP
-- DUPLICATEMAYBE lin lamp_1379_CN = mkiCN "lamp" ; -- CN
-- DUPLICATEMAYBE lin living_room_1380_CNP = mkiCNP "living room" ; -- CNP
fun painting_picture_1381_CN : CN ;
fun room_1382_CNP : CNP ;
-- DUPLICATEMAYBE lin shelf_1383_CN = mkiCN "shelf" ; -- CN
-- DUPLICATEMAYBE lin sofa_1384_CN = mkiCN "sofa" ; -- CN
fun sound_system_1385_CN : CN ;
fun stairs_1386_CNP : CNP ;
-- DUPLICATEMAYBE lin table_1387_CN = mkiCN "table" ; -- CN
-- DUPLICATEMAYBE lin television_1388_CN = mkiCN "television" ; -- CN
-- DUPLICATEMAYBE lin wall_1389_CN = mkiCN "wall" ; -- CN
-- DUPLICATEMAYBE lin carpet_1390_CN = mkiCN "carpet" ; -- CN
-- DUPLICATEMAYBE lin window_1391_CN = mkiCN "window" ; -- CN
-- DUPLICATEMAYBE lin wood_1392_CNM = mkiCNM "wood" ; -- CNM
fun wooden_1393_AP : AP ;
fun appetizer_1394_CN : CN ;
fun main_course_1395_CN : CN ;
fun dessert_1396_CN : CN ;
-- DERIVED 1397 Cl I would like something to drink vorrei qualcosa da bere jag vill ha något att dricka ich hätte gerne etwas zu trinken rad bi nekaj spil(a) 
-- DERIVED 1398 Utt a bottle of water, please una bottiglia d'acqua, per favore en flaska vatten, tack eine Flasche Wasser, bitte steklenico vode, prosim 
-- DERIVED 1399 Utt a cup of tea, please una tazza di tè, per favore en kopp te, tack eine Tasse Tee bitte skodelico čaja, prosim 
fun coffee_with_milk_1400_NP : NP ;
fun beer_1401_CN : CN ;
-- DERIVED 1402 QCl do you have vegetarian dishes? avete dei piatti vegetariani? har ni vegetarisk mat? Haben Sie vegetarische Geriche? Imate vegetarijanske jedi? 
-- DERIVED 1403 QCl where is the bathroom? dov'è la toilette? var är toaletten? Wo ist die Toilette? Kje je kopalnica? 
-- DUPLICATEMAYBE lin breakfast_1404_CN = mkiCN "breakfast" ; -- CN
-- DUPLICATEMAYBE lin lunch_1405_CN = mkiCN "lunch" ; -- CN
-- DUPLICATEMAYBE lin dinner_1406_CN = mkiCN "dinner" ; -- CN
-- DUPLICATEMAYBE lin plate_1407_CN = mkiCN "plate" ; -- CN
-- DUPLICATEMAYBE lin fork_1408_CN = mkiCN "fork" ; -- CN
-- DUPLICATEMAYBE lin knife_1409_CN = mkiCN "knife" ; -- CN
-- DUPLICATEMAYBE lin spoon_1410_CN = mkiCN "spoon" ; -- CN
fun chopstick_1411_CN : CN ;
-- DUPLICATEMAYBE lin napkin_1412_CN = mkiCN "napkin" ; -- CN
-- DUPLICATEMAYBE lin cup_1413_CN = mkiCN "cup" ; -- CN
-- DUPLICATEMAYBE lin glass_1414_CN = mkiCN "glass" ; -- CN
fun bottle_of_wine_1415_CN : CN ;
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
fun chicken_1427_CNM : CNM ;
fun pork_1428_CNM : CNM ;
-- DUPLICATEMAYBE lin beef_1429_CNM = mkiCNM "beef" ; -- CNM
-- DUPLICATEMAYBE lin juice_1430_CNM = mkiCNM "juice" ; -- CNM
-- DUPLICATE lin pie_1431_CN = mkiCN "pie" ; -- CN
-- DUPLICATEMAYBE lin ice_cream_1432_CNM = mkiCNM "ice cream" ; -- CNM
-- DERIVED 1433 Utt another one, please un altro, per favore en till, tack eine andere, bitte drugo, prosim 
-- DERIVED 1434 Utt more, please ancora un po', per favore lite till, tack mehr Bitte Še več, prosim 
-- DERIVED 1435 Utt? please pass mi passi var snäll och ge mig bitte übergeben prosim dodaj 
fun spicy_1436_AP : AP ;
-- DUPLICATE 1437 AP sweet dolce söt süß sladko DUPLICATE 1078 
-- DUPLICATE 1438 AP sour aspro sur sauer kislo DUPLICATE 1035 
-- DERIVED 1439 Utt speak slowly, please parli piano, per favore tala långsamt, tack Sprechen Sie bitte langsam govori počasi, prosim 
-- DERIVED 1440 Utt repeat, please ripeta, per favore. var snäll och repetera. bitte wiederholen ponovite prosim 
-- DUPLICATEMAYBE lin bathing_suit_1441_CN = mkiCN "bathing suit" ; -- CN
fun bathing_trunks_1442_CNPL : CNPL ;
-- DUPLICATEMAYBE lin belt_1443_CN = mkiCN "belt" ; -- CN
fun bikini_1444_CN : CN ;
fun blouse_1445_CN : CN ;
fun boxers_1446_CNPL : CNPL ;
fun bra_1447_CN : CN ;
-- DUPLICATEMAYBE lin bracelet_1448_CN = mkiCN "bracelet" ; -- CN
-- DUPLICATEMAYBE lin jacket_1449_CN = mkiCN "jacket" ; -- CN
-- DUPLICATEMAYBE lin coat_1450_CN = mkiCN "coat" ; -- CN
fun cotton_1451_CNM : CNM ;
-- DUPLICATEMAYBE lin dress_1452_CN = mkiCN "dress" ; -- CN
fun earring_1453_CN : CN ;
fun eyeglasses_1454_CNPL : CNPL ;
fun glove_1455_CN : CN ;
-- DUPLICATEMAYBE lin hat_1456_CN = mkiCN "hat" ; -- CN
-- DUPLICATE lin jacket_1457_CN = mkiCN "jacket" ; -- CN
fun jeans_1458_CNPL : CNPL ;
fun leather_1459_CN : CN ;
fun suit_1460_CN : CN ;
-- DUPLICATEMAYBE lin necklace_1461_CN = mkiCN "necklace" ; -- CN
-- DUPLICATE lin pajamas_1462_CNPL = mkiCNPL "pajama" ; -- CNPL
fun pants_1463_CNPL : CNPL ;
-- DUPLICATE lin ring_1464_CN = mkiCN "ring" ; -- CN
fun scarf_1465_CN : CN ;
-- DUPLICATE lin shirt_1466_CN = mkiCN "shirt" ; -- CN
-- DUPLICATE lin shoe_1467_CN = mkiCN "shoe" ; -- CN
fun silk_1468_CNM : CNM ;
fun size__clothes__1469_CN : CN ;
fun size__shoes__1470_CN : CN ;
-- DUPLICATEMAYBE lin skirt_1471_CN = mkiCN "skirt" ; -- CN
-- DUPLICATEMAYBE lin sneaker_1472_CN = mkiCN "sneaker" ; -- CN
fun sock_1473_CN : CN ;
-- DUPLICATEMAYBE lin sunglasses_1474_CNPL = mkiCNPL "sunglass" ; -- CNPL
fun wear_1475_V2 : V2 ;
fun T_shirt_1476_CN : CN ;
fun underpants__male_female__1477_CNPL : CNPL ;
-- DUPLICATEMAYBE lin undershirt_1478_CN = mkiCN "undershirt" ; -- CN
-- DUPLICATEMAYBE lin watch_1479_CN = mkiCN "watch" ; -- CN
fun women's_suit_1480_CN : CN ;
fun wool_1481_CN : CN ;
fun attachment_1482_CN : CN ;
fun blog_1483_CN : CN ;
fun DSL_cable_1484_CN : CN ;
fun CD_ROM_1485_CN : CN ;
fun CD_ROM_drive_1486_CN : CN ;
fun chat_room_1487_CNP : CNP ;
-- DUPLICATEMAYBE lin computer_1488_CN = mkiCN "computer" ; -- CN
fun document_1489_CN : CN ;
-- DUPLICATEMAYBE lin email_1490_CN = mkiCN "email" ; -- CN
-- DUPLICATEMAYBE lin file_1491_CN = mkiCN "file" ; -- CN
fun instant_message_1492_CN : CN ;
fun internet_1493_NP : NP ;
-- DUPLICATEMAYBE lin keyboard_1494_CN = mkiCN "keyboard" ; -- CN
-- DUPLICATEMAYBE lin memory_1495_CN = mkiCN "memory" ; -- CN
fun modem_1496_CN : CN ;
fun monitor_screen_1497_CN : CN ;
fun mouse_1498_CN : CN ;
fun mouse_pad_1499_CN : CN ;
-- DUPLICATEMAYBE lin printer_1500_CN = mkiCN "printer" ; -- CN
fun attach_file_1501_VP : Det -> VP ;
fun close_file_1502_VP : Det -> VP ;
fun delete_1503_V2 : V2 ;
fun forward_1504_V2 : V2 ;
fun open_file_1505_VP : Det -> VP ;
fun reply_1506_V : V ;
fun save_1507_V2 : V2 ;
-- DUPLICATEMAYBE lin save_1508_V2 = mkV2 I.send_V ; --- send a file -- V2
-- DUPLICATEMAYBE -- DERIVED 1508 VP send a file inviare un file, inviare un documento att skicka en fil eine Datei senden poslati datoteko
fun send_email_1509_VP : Det -> VP ;
fun webpage_1510_CN : CN ;
fun website_1511_CN : CN ;
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
fun last_week_1532_AdvT : AdvT ;
-- DUPLICATEMAYBE lin next_month_1533_AdvT = mkiAdvT "next month" ; -- AdvT
fun what_is_the_date_today_1534_Utt : Utt ;
-- DUPLICATE 1535 AP red rosso röd rot rdeča DUPLICATE 0900 
-- DUPLICATE 1536 AP blue blu blå blau modra DUPLICATE 0098 
-- DUPLICATE 1537 AP yellow giallo gul gelb rumena DUPLICATE 1292 
-- DUPLICATE 1538 AP green verde grön grün zelena DUPLICATE 0443 
fun orange_1539_AP : AP ;
fun purple_1540_AP : AP ;
fun black_1541_AP : AP ;
fun white_1542_AP : AP ;
fun brown_1543_AP : AP ;
-- lin need_1544_V2 = mkiV2 "need" ; -- DUPLICATE 
-- DUPLICATE lin money_1545_CNM = mkiCNM "money" ; -- CNM
-- DUPLICATE lin paper_1546_CNM = mkiCNM "paper" ; -- CNM
-- DUPLICATE lin pencil_1547_CN = mkiCN "pencil" ; -- CN
-- DUPLICATE lin pen_1548_CN = mkiCN "pen" ; -- CN
-- DUPLICATE lin stamp_1549_CN = mkiCN "stamp" ; -- CN
-- DUPLICATEMAYBE lin toothpaste_1550_CNM = mkiCNM "toothpaste" ; -- CNM
fun towel_1551_CN : CN ;
-- DUPLICATEMAYBE lin soap_1552_CNM = mkiCNM "soap" ; -- CNM
-- DUPLICATE lin clothes_1553_CNPL = mkiCNPL "cloth" "clothes" ; 
-- DUPLICATEMAYBE lin band_1554_CNH = mkiCNH "band" ; -- CNH
-- DUPLICATEMAYBE lin book_1555_CN = mkiCN "book" ; -- CN
-- DUPLICATE lin circus_1556_CNP = mkiCNP "circus" ; -- CNP
fun club_1557_CNP : CNP ;
fun comedy_1558_CN : CN ;
fun concert_1559_CN : CN ;
fun documentary_1560_CN : CN ;
fun drama_1561_CN : CN ;
fun exciting_1562_AP : AP ;
-- DUPLICATE 1563 AP funny divertente rolig komisch smešno DUPLICATE 0407 
fun gallery_1564_CNP : CNP ;
fun interesting_1565_AP : AP ;
-- DUPLICATEMAYBE lin magazine_1566_CN = mkiCN "magazine" ; -- CN
fun movie_theater_1567_CNP : CNP ;
-- DUPLICATEMAYBE lin movie_1568_CN = mkiCN "movie" | mkiCN "film" ; -- CN
-- DUPLICATEMAYBE lin museum_1569_CNP = mkiCNP "museum" ; -- CNP
fun opera_1570_CNP : CNP ;
-- DUPLICATEMAYBE lin painting_1571_CN = mkiCN "painting" ; -- CN
fun party_1572_CNP : CNP ;
-- DUPLICATE 1573 CNP restaurant il ristorante restaurant das Restaurant restavracija DUPLICATE 1340 
-- DUPLICATEMAYBE lin sculpture_1574_CN = mkiCN "sculpture" ; -- CN
fun song_1575_CN : CN ;
fun television_program_1576_CN : CN ;
fun the_news_1577_NP : NP ;
fun the_radio_news_1578_NP : NP ;
fun the_TV_news_1579_NP : NP ;
-- DUPLICATEMAYBE lin theater_1580_CNP = mkiCNP "theater" "at" ; -- CNP
-- DUPLICATEMAYBE lin ticket_1581_CN = mkiCN "ticket" ; -- CN
fun be_bored_1582_VP : VP ;
fun dance_1583_V : V ;
fun flip_channels_1584_VP : VP ;
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
fun aunt_1595_CNH : CNH ;
-- DUPLICATE lin baby_1596_CNH = mkiCNH "baby" ; -- CNH
-- DUPLICATEMAYBE lin brother_1597_CNH = mkiCNH "brother" ; -- CNH
fun female_cousin_1598_CNH : CNH ;
fun male_cousin_1599_CNH : CNH ;
-- DUPLICATEMAYBE lin daughter_1600_CNH = mkiCNH "daughter" ; -- CNH
-- DUPLICATEMAYBE lin father_1601_CNH = mkiCNH "father" ; -- CNH
fun father_in_law_1602_CNH : CNH ;
fun fiancé_1603_CNH : CNH ;
fun fiancée_1603_CNH : CNH ;
-- DUPLICATEMAYBE lin grandfather_1604_CNH = mkiCNH "grandfather" ; -- CNH
fun grandmother_1605_CNH : CNH ;
fun husband_1606_CNH : CNH ;
-- DUPLICATEMAYBE lin mother_1607_CNH = mkiCNH "mother" ; -- CNH
fun mother_in_law_1608_CNH : CNH ;
fun relative_1609_CNH : CNH ;
-- DUPLICATEMAYBE lin sister_1610_CNH = mkiCNH "sister" ; -- CNH
-- DUPLICATEMAYBE lin son_1611_CNH = mkiCNH "son" ; -- CNH
fun stepdaughter_1612_CNH : CNH ;
fun stepfather_1613_CNH : CNH ;
fun stepmother_1614_CNH : CNH ;
fun stepson_1615_CNH : CNH ;
fun divorce_1616_V : V ;
fun inherit_1617_V2 : V2 ;
fun meet_1618_V2 : V2 ;
-- DERIVED 1619 VP to love amare att älska lieben ljubiti 
fun marry_1620_V : V ;
fun marry_1620_V2 : V2 ;
fun meet_casually_1621_V2 : V2 ;
fun uncle_1622_CNH : CNH ;
fun wife_1623_CNH : CNH ;
-- DUPLICATE lin apple_1624_CN = mkiCN "apple" ; -- CN
-- DUPLICATE lin apricot_1625_CN = mkiCN "apricot" ; -- CN
-- DUPLICATEMAYBE lin banana_1626_CN = mkiCN "banana" ; -- CN
-- DUPLICATEMAYBE lin beef_1627_CNM = mkiCNM "beef" ; -- CNM
-- DUPLICATEMAYBE lin carrot_1628_CN = mkiCN "carrot" ; -- CN
-- lin coffee_1629_CNM = mkiCNM "coffee" ; DUPLICATE 
-- DUPLICATEMAYBE lin cucumber_1630_CN = mkiCN "cucumber" ; -- CN
-- DUPLICATEMAYBE lin drink_1631_CN = mkiCN "drink" ; -- CN
fun egg_1632_CN : CN ;
fun eggplant_1633_CN : CN ;
fun fish_1634_CNM : CNM ;
fun fruit_1635_CNM : CNM ;
-- DUPLICATEMAYBE lin grape_1636_CN = mkiCN "grape" ; -- CN
-- DUPLICATEMAYBE lin honey_1637_CNM = mkiCNM "honey" ; -- CNM
-- DUPLICATEMAYBE lin lettuce_1638_CNM = mkiCNM "lettuce" ; -- CNM
fun lobster_1639_CN : CN ;
-- DUPLICATEMAYBE lin meat_1640_CNM = mkiCNM "meat" ; -- CNM
-- DUPLICATEMAYBE lin milk_1641_CNM = mkiCNM "milk" ; -- CNM
-- DUPLICATEMAYBE lin orange_1642_CN = mkiCN "orange" ; -- CN
fun peach_1643_CN : CN ;
fun pear_1644_CN : CN ;
-- DUPLICATE lin pepper__condiment__1645_CN = mkiCN "pepper" ; --
-- DUPLICATE lin pepper__vegetable__1646_CN = mkiCN "pepper" ; --
fun shrimp_1647_CN : CN ;
fun soft_drink_1648_CN : CN ;
-- DUPLICATE lin tea_1649_CNM = mkiCNM "tea" ; -- CNM
-- DUPLICATEMAYBE lin tomato_1650_CN = mkiCN "tomato" ; -- CN
-- DUPLICATEMAYBE lin veal_1651_CNM = mkiCNM "veal" ; -- CNM
-- DUPLICATEMAYBE lin water_1652_CNM = mkiCNM "water" ; -- CNM
-- DUPLICATEMAYBE lin wine_1653_CNM = mkiCNM "wine" ; -- CNM
-- DUPLICATE lin zucchini_1654_CN = mkiCN "zucchini" ; --
-- DERIVED 1655 QCl can you help me? mi può aiutare? kan du hjälpa mig? Kannst du mir helfen? mi lahko pomagaš? 
-- DERIVED 1656 Cl I'm lost mi sono perso jag har gått vilse ich bin verloren Zgubljen sem
fun know_1657_VQ : VQ ;
-- DERIVED 1657 Cl I don't know where my wife is non riesco a trovare mia moglie jag vet inte var min fru är ich weiss nicht,wo meine Frau ist Ne vem, kje je moja žena 
-- DERIVED 1658 Cl I don't know where my husband is non riesco a trovare mio marito jag vet inte var min man är ich weiss nicht ,wo mein Mann ist Ne vem, kje je moj mož 
-- DERIVED 1659 Cl I'm hurt mi sono ferito jag har skadat mig ich bin verletzt Poškodovan sem 
-- DERIVED lin I_need_a_doctor_1660_Cl = mkiCN "I need a doctor" ; -- Cl
fun allergic_to_1661_AP : NP -> AP ;
-- DERIVED I'm_allergic_to_penicillin_1661_CN = mkiCN "I'm allergic to penicillin" ; -- CN
fun i_am_dizzy_1662_Cl : NPH -> Cl ;
-- DERIVED 1662 Cl I'm dizzy mi gira la testa jag är yr mir ist schwindelig Sem omotična
fun i_have_nausea_1663_Cl : NPH -> Cl ;
-- DERIVED lin I_have_nausea_1663_CN = mkiCN "I have nausea" ; -- CN
fun my_x_hurts_1664_Cl : Pron -> CN -> Cl ;
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
fun as_far_as_there_1674_AdvP : AdvP ;
-- DERIVED 1675 QCl where does he live? dove abita lui? var bor han? Wo wohnt er? kje živi? 
-- DERIVED 1676 Cl he lives there lui abita lì han bor där er lebt dort živi tam
fun expect_1677_VV : VV ;
-- DERIVED 1677 Cl I expect to see him there io spero di vederlo lì jag hoppas på att se honom där ich erwarte ihn dort zu sehen Pričakujem, da ga vidim tam 
-- DERIVED 1678 Cl it's not here non è qui det är inte här es ist nicht hier to ni tukaj 
-- DERIVED 1679 QCl what do you have there? cosa hai lì? vad har du där? was hast du da? kaj imaš tam? 
-- DERIVED 1680 Cl I like mi piace jag tycker om det ich mag všeč mi je 
-- DERIVED 1681 Cl I like it a lot mi piace molto jag tycker mycket om det ich mag es sehr zelo mi je všeč 
-- DERIVED 1682 Cl I love music la musica mi piace molto jag älskar musik ich mag Musik Obožujem glasbo 
-- DERIVED 1683 QCl do you like fruit? ti piace la frutta? tycker du om frukt? Magst du Obst? Vam je všeč sadje?
fun yes_s_1684_Utt : S -> Utt ;
-- DERIVED 1684 Utt yes, I like fruit si, la frutta mi piace ja, jag tycker om frukt ja,ich mag Obst ja,imam rada sadje 
-- DERIVED 1685 Cl I don't like it non mi piace jag tycker inte om det ich mag es nicht Ni mi všeč 
-- DERIVED 1686 Cl I don't like it very much non mi piace molto jag tycker inte så mycket om det ich mag es nicht so sehr tega ne maram preveč
-- DUPLICATEMAYBE lin yes_s_1687_Utt s = mkiUtt ("no" ++ (mkUtt s).s) ; -- S -> Utt
-- DERIVED 1687 Utt no, I don't like fruit no, la frutta non mi piace nej, jag tycker inte om frukt nein,ich mag kein Obst ne, ne maram sadja 
-- DERIVED 1688 QCl do you like chocolate? ti piace il cioccolato? tycker du om choklad? Magst du Schokolade? Vam je všeč čokolada?
-- DUPLICATEMAYBE lin bandage_1689_CN = mkiCN "bandage" ; -- CN
fun bath_gel_1690_CNM : CNM ;
fun bathtub_1691_CNP : CNP ;
fun cologne_1692_CNM : CNM ;
-- DUPLICATEMAYBE lin deodorant_1693_CNM = mkiCNM "deodorant" ; -- CNM
fun medicine_cabinet_1694_CN : CN ;
-- DUPLICATEMAYBE lin mirror_1695_CN = mkiCN "mirror" ; -- CN
-- DUPLICATEMAYBE lin perfume_1696_CNM = mkiCNM "perfume" ; -- CNM
fun powder_1697_CNM : CNM ;
-- DUPLICATEMAYBE lin razor_1698_CN = mkiCN "razor" ; -- CN
fun shampoo_1699_CN : CN ;
-- DUPLICATEMAYBE lin shaving_cream_1700_CNM = mkiCNM "shaving cream" ; -- CNM
-- DUPLICATE lin shower_1701_CN = mkiCN "shower" ; -- CN
fun shower_gel_1702_CNM : CNM ;
fun sink__wash_basin__1703_CN : CN ;
-- DUPLICATE lin soap_1704_CNM = mkiCNM "soap" ; -- CNM
-- DUPLICATE 1705 VP shave farsi la barba, radersi att raka sig rasieren britje
fun take_a_bath_1706_VP : VP ;
fun take_a_shower_1707_VP : VP ;
-- DUPLICATE 1708 VP wash oneself lavarsi att tvätta sig sich waschen stuširati se 
-- DUPLICATE lin toilet_1709_CNP = mkiCNP "toilet" ; -- CNP
-- DUPLICATE lin toilet_paper_1710_CNM = mkiCNM "toilet paper" ; -- CNM
-- DUPLICATEMAYBE lin towel_1711_CN = mkiCN "towel" ; -- CN
-- DUPLICATEMAYBE lin blender_1712_CN = mkiCN "blender" ; -- CN
-- DUPLICATEMAYBE lin bottle_1713_CN = mkiCN "bottle" ; -- CN
-- DUPLICATE lin bowl_1714_CN = mkiCN "bowl" ; -- CN
-- DUPLICATEMAYBE lin box_1715_CN = mkiCN "box" ; -- CN
-- DUPLICATEMAYBE lin broom_1716_CN = mkiCN "broom" ; -- CN
fun can_1717_CN : CN ;
-- DUPLICATEMAYBE lin carton_1718_CN = mkiCN "carton" ; -- CN
fun coffeemaker_espresso_machine_1719_CN : CN ;
fun counter_1720_CN : CN ;
-- DUPLICATE 1721 CN cup la tazza kopp die Tasse skodelica DUPLICATE 1413 
fun cupboard_1722_CN : CN ;
-- DUPLICATEMAYBE lin dishwasher_1723_CN = mkiCN "dishwasher" ; -- CN
fun dishwashing_detergent_1724_CN : CN ;
-- DUPLICATEMAYBE lin drawer_1725_CN = mkiCN "drawer" ; -- CN
-- DUPLICATEMAYBE lin dryer_1726_CN = mkiCN "dryer" ; -- CN
-- DUPLICATEMAYBE lin iron_1727_CN = mkiCN "iron" ; -- CN
-- DUPLICATEMAYBE lin ironing_board_1728_CN = mkiCN "ironing board" ; -- CN
fun kitchen_sink_1729_CN : CN ;
fun laundry_detergent_1730_CNM : CNM ;
-- DUPLICATE lin microwave_1731_CN = mkiCN "microwave" ; -- CN
-- DUPLICATEMAYBE lin oven_1732_CN = mkiCN "oven" ; -- CN
fun refrigerator_1733_CN : CN ;
fun stove_1734_CN : CN ;
fun tea_kettle_1735_CN : CN ;
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
fun may_1759_VV : VV ;
-- DERIVED 1759 QCl may I sit here? posso sedermi qui? kan jag sitta här? Darf ich hier sitzen? ali se lahko vsedem tukaj 
-- DERIVED 1760 QCl where do you live? dove abiti? var bor du? Wo wohnen Sie? kje živiš? 
-- DERIVED 1761 Cl this is my wife questa è mia moglie det här är min fru das ist meine Frau to je moja žena 
-- DERIVED 1762 Cl this is my husband questo è mio marito det här är min man das ist mein Ehemann 
-- DUPLICATE lin money_1763_CNM = mkiCNM "money" ; -- CNM
-- DUPLICATE lin bank_1764_CNP = mkiCNP "bank" ; -- CNP
fun more_slowly_1765_Adv : Adv ;
fun more_difficult_1766_AP : AP ;
fun easier_1767_AP : AP ;
fun farther_1768_AdvP : AdvP ;
fun nearer_1769_AdvP : AdvP ;
fun more_than_that_1770_Adv : Adv ;
fun more_than_a_year_1771_Adv : Adv ;
fun less_slowly_1772_Adv : Adv ;
fun less_difficult_1773_AP : AP ;
fun less_easy_1774_AP : AP ;
fun less_far_1775_AdvP : AdvP ;
fun less_near_1776_AdvP : AdvP ;
fun less_than_that_1777_Adv : Adv ;
fun less_than_a_year_1778_Adv : Adv ;
-- DERIVED 1779 Cl I've hurt my hand mi sono fatta male alla mano jag har skadat min hand ich habe meine Hand verletzt Sem si poškodoval roko 
-- DERIVED 1780 Cl I have a headache ho mal di testa jag har huvudvärk ich habe Kopfschmerzen imam glavobol 
-- DERIVED 1781 Cl my stomach hurts mi fa male lo stomaco jag har ont i magen mein Bauch tut weh me boli želodec 
-- DUPLICATEMAYBE lin beach_1782_CNP = mkiCNP "beach" "on" ; -- CNP
fun desert_1783_CNP : CNP ;
fun field_1784_CNP : CNP ;
fun flower_1785_CN : CN ;
fun forest_1786_CNP : CNP ;
-- DUPLICATEMAYBE lin hill_1787_CNP = mkiCNP "hill" "on" ; -- CNP
-- DUPLICATEMAYBE lin lake_1788_CNP = mkiCNP "lake" "at" ; -- CNP
fun land_1789_CNP : CNP ;
fun moon_1790_CNP : CNP ;
fun mountain_1791_CNP : CNP ;
-- DUPLICATEMAYBE lin ocean_1792_CNP = mkiCNP "ocean" ; -- CNP
-- DUPLICATEMAYBE lin plant_1793_CN = mkiCN "plant" ; -- CN
fun pond_1794_CNP : CNP ;
fun river_1795_CNP : CNP ;
-- DUPLICATEMAYBE lin rock_1796_CN = mkiCN "rock" ; -- CN
fun sand_1797_CN : CN ;
fun sea_1798_CNP : CNP ;
-- DUPLICATEMAYBE lin sky_1799_CN = mkiCN "sky" ; -- CN
-- DUPLICATEMAYBE lin star_1800_CN = mkiCN "star" ; -- CN
fun sun_1801_CN : CN ;
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
fun businessman_1816_CNH : CNH ;
fun businesswoman_1817_CNH : CNH ;
-- DUPLICATEMAYBE lin carpenter_1818_CNH = mkiCNH "carpenter" ; -- CNH
fun construction_worker_1819_CNH : CNH ;
fun dentist_1820_CNH : CNH ;
-- DUPLICATEMAYBE lin doctor_1821_CNH = mkiCNH "doctor" ; -- CNH
fun electrician_1822_CNH : CNH ;
fun engineer_1823_CNH : CNH ;
-- DUPLICATEMAYBE lin farmer_1824_CNH = mkiCNH "farmer" ; -- CNH
fun full_time_1825_NPH : Det -> CNH -> NPH ;
fun journalist_1826_CNH : CNH ;
-- DUPLICATEMAYBE lin lawyer_1827_CNH = mkiCNH "lawyer" ; -- CNH
fun musician_1828_CNH : CNH ;
fun part_time_1829_NPH : Det -> CNH -> NPH ;
fun policeman_1830_CNH : CNH ;
-- DUPLICATEMAYBE lin professor_1831_CNH = mkiCNH "professor" ; -- CNH
fun retired_1832_CNH : CNH ;
fun salesman_1833_CNH : CNH ;
-- DUPLICATEMAYBE lin secretary_1834_CNH = mkiCNH "secretary" ; -- CNH
fun stay_at_home_dad_1835_CNH : CNH ;
fun stay_at_home_mom_1835_CNH : CNH ;
fun steady_job_1836_CN : CN ;
fun taxi_driver_1837_CNH : CNH ;
-- DUPLICATE lin teacher_1838_CNH = mkiCNH "teacher" ; -- CNH
fun unemployed_1839_CNH : CNH ;
fun veterinarian_1840_CNH : CNH ;
fun writer_1841_CNH : CNH ;
-- DUPLICATE lin adult_1842_CNH = mkiCNH "adult" ; -- CNH
-- DUPLICATEMAYBE lin boy_1843_CNH = mkiCNH "boy" ; -- CNH
fun child__1844_CNH : CNH ;
fun famous_1845_AP : AP ;
-- DUPLICATEMAYBE lin girl_1846_CNH = mkiCNH "girl" ; -- CNH
fun intelligent_1847_AP : AP ;
-- DUPLICATE lin man_1848_CNH = mkiCNH "man" ; -- CNH
-- DUPLICATEMAYBE lin person_1849_CNH = mkiCNH "person" ; -- CNH
fun teenager_1850_CNH : CNH ;
-- DUPLICATE lin woman_1851_CNH = mkiCNH "woman" ; -- CNH
-- DERIVED 1852 Utt please write that for me per favore, me lo scrive var snäll och skriv ner det åt mig Schreiben Sie das für mich,bitte prosim, napišite zame
fun at_what_time_1853_IAdv : IAdv ;
-- DERIVED 1853 QCl at what time does the store open? a che ora apre il negozio? när öppnar affären? Wann öfnet der Laden? kdaj se trgovina odpre? 
-- DERIVED 1854 QCl at what time does the store close? a che ora chiude il negozio? när stänger affären? Wann schliest der aden? kdaj se trgovina zapre? 
-- DUPLICATE 1855 CNM cash contanti kontanter das Bargeld gotovina DUPLICATE 0159 
-- DUPLICATE 1856 CN credit card carta di credito kreditkort die Bankkarte kreditne kartice DUPLICATE 0261
fun online_1857_AdvP : AdvP ;
-- DERIVED 1857 QCl can I order this online? posso ordinarlo su internet? kan jag beställa det på nätet? Kann ich diese online bestellen? ali lahko naročim prek spleta? 
fun women's_clothing_1858_CN : CN ;
fun men's_clothing_1859_CN : CN ;
-- DUPLICATE lin tie_1860_CN = mkiCN "tie" ; -- CN
-- DUPLICATE 1861 CNP bookstore la libreria bokhandel die Buchhandlung knjigarna DUPLICATE 1319 
-- DUPLICATEMAYBE lin bakery_1862_CNP = mkiCNP "bakery" ; -- CNP
fun American_football_1863_CNM : CNM ;
-- DUPLICATEMAYBE lin ball_1864_CN = mkiCN "ball" ; -- CN
fun baseball_1865_CNM : CNM ;
fun basketball_1866_CNM : CNM ;
fun biking_1867_CNM : CNM ;
-- DUPLICATEMAYBE lin champion_1868_CNH = mkiCNH "champion" ; -- CNH
fun game_1869_CN : CN ;
fun player_1870_CNH : CNH ;
fun soccer_football_1871_CNM : CNM ;
-- DUPLICATEMAYBE lin stadium_1872_CNP = mkiCNP "stadium" "at" ; -- CNP
fun swimming_1873_CNM : CNM ;
-- DUPLICATEMAYBE lin team_1874_CNH = mkiCNH "team" ; -- CNH
-- DUPLICATEMAYBE lin tennis_1875_CNM = mkiCNM "tennis" ; -- CNM
-- DUPLICATE 1876 VP draw,tie pareggiare oavgjort anbinden pripraviti / kravato
fun go_camping_1877_V : V ;
fun go_hiking_1878_V : V ;
fun lose_1879_V : V ;
fun play_1880_V : V ;
fun play_1880_V2 : V2 ;
fun play_sport_1881_VP : CNM -> VP ;
fun play_cards_1882_VP : VP ;
fun play_billiards_1883_VP : VP ;
fun win_1884_V : V ;
fun win_1884_V2 : V2 ;
-- DUPLICATE lin telephone_1885_CN = mkiCN "telephone" ; -- CN
-- DERIVED 1886 Cl I have to make a phone call devo fare una telefonata jag måste ringa ett samtal ich muss einen Anruf machen Moram opraviti telefonski klic 
-- DERIVED 1887 QCl may I use your cell phone? posso usare il tuo telefonino? kan jag låna din mobiltelefon? Kann ich Ihr Handy beutzen? ali lahko uporabljate svoj mobilni telefon? 
-- DERIVED 1888 Utt what number, please? che numero, per favore? vilket nummer? Welche Nummer,bitte? katera številka, prosim?
fun busy_1889_AP : AP ;
-- DERIVED 1889 Cl the line is busy la linea è occupata det är upptaget die Leitung ist besetzt je linija zasedena 
-- DERIVED 1890 QCl where is the computer? dov'è il computer? var är datorn? Wo ist der Computer? kjer je računalnik? 
-- DERIVED 1891 Cl I need to send an email devo mandare un messaggio di posta elettronica jag behöver skicka ett mejl ich muss eine email senden Moram poslati e-pošto
fun connect_to_internet_1892_VP : VP ;
-- DERIVED 1892 QCl can I connect to the internet? posso collegarmi con internet? kan jag gå ut på nätet? Kann ich mich ins Internet einwählen? ali se lahko povežem z internetom? 
-- DERIVED 1893 QCl do you have a website? avete un sito web? har ni en webbsida? Hast du eine Website? Imaš spletno stran?
fun what_time_is_it_1894_Utt : Utt ;
-- DERIVED 1894 QCl what time is it? che ore sono? vad är klockan? Wie spät ist es? koliko je ura?
-- DERIVED 1895 Cl it's 1:00 pm sono le tredici den är 13:00 es ist 13:00Uhr ura je 13:00 
-- DERIVED 1896 Cl it's 2:00 pm sono le quattordici den är 14:00 es ist 14:00Uhr ura je 14:00 
-- DERIVED 1897 Cl it's 2:00 am sono le due den är 2:00 es ist 02.00 Uhr ura je 2:00 
fun today_1898_AdvT : AdvT ;
fun tomorrow_1899_AdvT : AdvT ;
fun yesterday_1900_AdvT : AdvT ;
fun now_1901_AdvT : AdvT ;
fun later_1902_AdvT : AdvT ;
fun right_away_1903_AdvT : AdvT ;
fun abdomen_1904_CN : CN ;
-- DUPLICATEMAYBE lin belly_1905_CN = mkiCN "belly" ; -- CN
fun ankle_1906_CN : CN ;
-- DUPLICATE lin arm_1907_CN = mkiCN "arm" ; -- CN
fun behind_1908_CN : CN ;
-- DUPLICATEMAYBE lin blood_1909_CNM = mkiCNM "blood" ; -- CNM
fun bone_1910_CN : CN ;
-- DUPLICATEMAYBE lin brain_1911_CN = mkiCN "brain" ; -- CN
-- DUPLICATEMAYBE lin breast_1912_CN = mkiCN "breast" ; -- CN
-- DUPLICATEMAYBE lin cheek_1913_CN = mkiCN "cheek" ; -- CN
-- DUPLICATEMAYBE lin chest_1914_CN = mkiCN "chest" ; -- CN
-- DUPLICATEMAYBE lin chin_1915_CN = mkiCN "chin" ; -- CN
fun ear_1916_CN : CN ;
-- DUPLICATEMAYBE lin elbow_1917_CN = mkiCN "elbow" ; -- CN
-- DUPLICATEMAYBE lin eye_1918_CN = mkiCN "eye" ; -- CN
fun eyebrow_1919_CN : CN ;
fun eyelash_1920_CN : CN ;
-- DUPLICATEMAYBE lin face_1921_CN = mkiCN "face" ; -- CN
-- DUPLICATEMAYBE lin finger_1922_CN = mkiCN "finger" ; -- CN
-- DUPLICATEMAYBE lin foot_1923_CN = mkiCN "foot" ; -- CN
fun forehead_1924_CN : CN ;
fun hair_1925_CN : CN ;
fun hair_1925_CNM : CNM ;
-- DUPLICATE lin hand_1926_CN = mkiCN "hand" ; -- CN
-- DUPLICATE lin head_1927_CN = mkiCN "head" ; -- CN
-- DUPLICATE lin heart_1928_CN = mkiCN "heart" ; -- CN
fun hips_1929_CN : CN ;
fun knee_1930_CN : CN ;
-- DUPLICATE lin leg_1931_CN = mkiCN "leg" ; -- CN
fun lung_1932_CN : CN ;
-- DUPLICATEMAYBE lin mouth_1933_CN = mkiCN "mouth" ; -- CN
-- DUPLICATEMAYBE lin muscle_1934_CN = mkiCN "muscle" ; -- CN
-- DUPLICATEMAYBE lin neck_1935_CN = mkiCN "neck" ; -- CN
-- DUPLICATEMAYBE lin nose_1936_CN = mkiCN "nose" ; -- CN
fun shoulder_1937_CN : CN ;
-- DUPLICATEMAYBE lin skin_1938_CNM = mkiCNM "skin" ; -- CN
-- DUPLICATEMAYBE lin stomach_1939_CN = mkiCN "stomach" ; -- CN
fun tendon_1940_CN : CN ;
-- DUPLICATEMAYBE lin thumb_1941_CN = mkiCN "thumb" ; -- CN
fun toe_1942_CN : CN ;
-- DUPLICATEMAYBE lin tongue_1943_CN = mkiCN "tongue" ; -- CN
-- DUPLICATEMAYBE lin tooth_1944_CN = mkiCN "tooth" ; -- CN
fun waist_1945_CN : CN ;
-- DUPLICATEMAYBE lin wrist_1946_CN = mkiCN "wrist" ; -- CN
-- DUPLICATE 1947 AdvT last week la settimana scorsa förra veckan letzte Woche prejšnji teden DUPLICATE 1532 
fun next_week_1948_AdvT : AdvT ;
fun in_n_weeks_1949_AdvT : Card -> AdvT ;
fun n_weeks_ago_1950_AdvT : Card -> AdvT ;
-- DUPLICATEMAYBE lin this_month_1951_AdvT = mkiAdvT "this month" ; -- AdvT
-- DUPLICATEMAYBE lin last_month_1952_AdvT = mkiAdvT "last month" ; -- AdvT
-- DUPLICATEMAYBE lin next_month_1953_AdvT = mkiAdvT "next month" ; -- AdvT
fun the_coming_month_1954_AdvT : AdvT ;
fun in_n_months_1955_AdvT : Card -> AdvT ;
fun n_months_ago_1956_AdvT : Card -> AdvT ;
fun this_year_1956_AdvT : AdvT ;
fun last_year_1957_AdvT : AdvT ;
fun next_year_1958_AdvT : AdvT ;
fun the_coming_year_1959_AdvT : AdvT ;
fun in_n_years_1960_AdvT : Card -> AdvT ;
fun n_years_ago_1960_AdvT : Card -> AdvT ;
fun how_long_ago_1962_IAdv : IAdv ;
-- DERIVED 1963 Cl I have time. io ho tempo jag har tid Ich habe Zeit. Imam čas. 
-- DERIVED 1964 Cl I don't have any time io non ho tempo jag har inte tid Ich habe keine Zeit Nimam časa 
-- DERIVED 1965 Cl I'm hungry io ho fame jag är hungrig ich habe Hunger Lačen sem 
-- DERIVED 1966 Cl I'm thirsty ho sete jag är törstig ich habe Durst žejen sem 
-- DERIVED 1967 Cl I'm cold ho freddo jag fryser es ist mir kalt zebe me 
-- DERIVED 1968 Cl I'm hot ho caldo jag är varm Ich bin heiß mi je vroče 
-- DERIVED 1969 Cl it's cold fa freddo det är kallt es ist kalt je hladno 
-- DERIVED 1970 Cl it's hot fa caldo det är varmt es ist heiß je vroče 
-- DERIVED 1971 Cl it's windy tira vento det blåser es ist windig vetrovno je 
fun cloud_1972_CN : CN ;
fun degree_1973_CN : CN ;
fun fog_1974_CNM : CNM ;
fun hurricane_1975_CN : CN ;
fun it_is_sunny_1976_Cl : Cl ;
-- DUPLICATEMAYBE lin lightning_1977_CN = mkiCN "lightning" ; -- CN
fun rain_1978_CNM : CNM ;
-- DUPLICATEMAYBE lin snow_1979_CNM = mkiCNM "snow" ; -- CNM
fun storm_1980_CN : CN ;
-- DUPLICATE 1981 CN sun il sole sol die Sonne sonce DUPLICATE 1801 
-- DUPLICATEMAYBE lin temperature_1982_CN = mkiCN "temperature" ; -- CN
fun thunder_1983_CNM : CNM ;
-- DUPLICATEMAYBE lin umbrella_1984_CN = mkiCN "umbrella" ; -- CN
fun wind_1985_CNM : CNM ;

-- auxiliary words; some may be superfluous

fun a_lot__Adv : Adv ;
fun about__Prep : Prep ;
fun adjust__V2 : V2 ;
fun afraid__Adv : Adv ;
fun again__AdvT : AdvT ;
fun agree__V : V ;
fun alive__Adv : Adv ;
fun alone__Adv : Adv ;
fun another__Det : Det ;
fun any__Quant : Quant ;
fun anything__NP : NP ;
fun ask__V2 : V2 ;
---fun at__PrepP : PrepP ; -- at, on, in are inherent features of CNP
fun attach__V3 : V3 ;
fun be_fine__VP : VP ;
fun be_lost__VP : VP ;
fun bed__CNP : CNP ;
fun beg_pardon__V2 : V2 ;
fun bike__CN : CN ;
fun billiards__CNPL : CNPL ;
fun biscuit__CN : CN ;
fun blanket__CN : CN ;
fun blow__V2 : V2 ;
fun bored__AP : AP ;
fun bring__V3 : V3 ;
fun camping__CNP : CNP ;
fun candle__CN : CN ;
fun candy__CN : CN ;
fun care__S : NPH -> S ;
fun cell__CN : CN ;
fun change__V2 : V2 ;
fun channel__CN : CN ;
fun clear__V2 : V2 ;
fun coffeemaker__CN : CN ;
fun color__CN : CN ;
fun communicate__V : V ;
fun connect__V2 : V2 ;
fun correct__AP : AP ;
fun cover__CN : CN ;
fun cover__V2 : V2 ;
fun cross__V : V ;
fun dad__CNH : CNH ;
fun decorate__V2 : V2 ;
fun diaper__CN : CN ;
fun dice__CN : CN ;
fun different__AP : AP ;
fun dizzy__AP : AP ;
fun draw__V : V ;
fun dressed__AP : AP ;
fun empty__AP : AP ;
fun envelope__CN : CN ;
fun espresso__CN : CN ;
fun expect__VV : VV ;
fun fiancé__CNH : CNH ;
fun fiancée__CNH : CNH ;
fun film__CN : CN ;
fun fine__AP : AP ;
fun flip__V2 : V2 ;
fun flush__V2 : V2 ;
fun fold__V2 : V2 ;
fun folder__CN : CN ;
fun glue__V2 : V2 ;
fun happen__V : V ;
fun hate__V2 : V2 ;
fun hear__V : V ;
fun hike__V : V ;
fun hold__V2 : V2 ;
fun home__Adv : Adv ;
---fun in__PrepP : PrepP ;
fun into__Prep : Prep ;
fun lead__CNM : CNM ;
fun leave__V2 : V2 ;
fun lens__CN : CN ;
fun lexicon__CN : CN ;
fun lie__V : V ;
fun like__V2 : V2 ;
fun live__V : V ;
fun lose__V2 : V2 ;
fun lost__AP : AP ;
fun lottery__CN : CN ;
fun lower__V2 : V2 ;
fun make__V2 : V2 ;
fun match__CN : CN ;
fun matter__V : V ;
fun meadow__CNP : CNP ;
fun metro__CNP : CNP ;
---fun mind__CN : CN ; -- only in "change one's mind"
fun minute__CN : CN ;
fun mom__CNH : CNH ;
fun mow__V2 : V2 ;
fun nail__CN : CN ;
fun nap__CN : CN ;
---fun on__PrepP : PrepP ;
fun online__Adv : Adv ;
fun order__V2 : V2 ;
fun over_there__AdvP : AdvP ;
fun page__CN : CN ;
fun pass__V2 : V2 ;
fun peace__CNP : CNP ;
fun piece__CN : CN ;
fun please__Utt : Imp -> Utt ;
fun plumb__V2 : V2 ;
fun programming__CNM : CNM ;
fun push__V2 : V2 ;
fun question__CN : CN ;
fun quiet__AP : AP ;
fun raise__V2 : V2 ;
fun receipt__CN : CN ;
fun repeat__V : V ;
fun repeat__V2 : V2 ;
fun respond__V2 : V2 ;
fun revel__V : V ;
fun ride__V2 : V2 ;
fun rinse__V2 : V2 ;
fun rug__CN : CN ;
fun save__V2 : V2 ;
fun seal__V2 : V2 ;
fun send__V2 : V2 ;
fun sensor__CN : CN ;
fun shake__V : V ;
fun shake__V2 : V2 ;
fun show__V3 : V3 ;
fun side__CN : CN ;
fun sit__V : V ;
fun slower__Interj : Interj ;
fun so__Adv : Adv ;
fun somewhere__AdvP : AdvP ;
fun speak__V : V ;
fun spell__V2 : V2 ;
fun start__V2 : V2 ;
fun strike__V2 : V2 ;
fun strip__V2 : V2 ;
fun swear__V : V ;
fun symbol__CN : CN ;
fun talk__V : V ;
fun tap__CN : CN ;
fun time__CNM : CNM ;
fun trendy__AP : AP ;
fun trousers__CNPL : CNPL ;
fun truth__CNM : CNM ;
fun try__VV : VV ;
fun turn_round__V : V ;
fun unwrap__V2 : V2 ;
fun volume__CN : CN ;
fun walk__V : V ;
fun weather__CNM : CNM ;
fun weed__CNM : CNM ;
fun wipe__V2 : V2 ;
fun worthless__AP : AP ;

fun timeAdvT : Time -> AdvT ;
fun it_is_time_Cl : Time -> Cl ;

---
fun am1_Time : Time ;
fun am2_Time : Time ;
fun pm1_Time : Time ;
fun pm2_Time : Time ;

}
