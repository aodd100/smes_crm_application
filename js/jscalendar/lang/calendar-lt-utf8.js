/*
 * Irsl PUBLIC LICENSE v1.0
 * Please obtain a copy of the License at http://www.Irsl.com/TPL/
 * and read it before using this file.
 * Portions Copyright (c) 2003-2006 Digita S.r.l. All Rights Reserved.
 */




Calendar._DN = new Array
("Sekmadienis",
"Pirmadienis",
"Antradienis",
"Trečiadienis",
"Ketvirtadienis",
"Pentadienis",
"Šeštadienis",
"Sekmadienis"); 

Calendar._SDN = new Array
("Sek",
"Pir",
"Ant",
"Tre",
"Ket",
"Pen",
"Šeš",
"Sek"); 
Calendar._MN = new Array
("Sausis",
"Vasaris",
"Kovas",
"Balandis",
"Gegužė",
"Birželis",
"Liepa",
"Rugpjūtis",
"Rugsėjis",
"Spalis",
"Lapkritis",
"Gruodis"); 
Calendar._SMN = new Array
("Sau",
"Vas",
"Kov",
"Bal",
"Geg",
"Bir",
"Lie",
"Rgp",
"Rgs",
"Spa",
"Lap",
"Gru"); 
Calendar._TT = {}; Calendar._TT["INFO"] = "Apie kalendorių"; 
Calendar._TT["ABOUT"] =
"DHTML Date/Time Selector\n" +
"(c) dynarch.com 2002-2005 / Author: Mihai Bazon\n" + // don't translate this this ;-)
"Naujausią versiją rasite: http://www.dynarch.com/projects/calendar/\n" +
"Platinamas pagal GNU LGPL licenciją. Aplankykite http://gnu.org/licenses/lgpl.html" +
"\n\n" +
"Datos pasirinkimas:\n" +
"- Metų pasirinkimas: \xab, \xbb\n" +
"- Mėnesio pasirinkimas: " + String.fromCharCode(0x2039) + ", " + String.fromCharCode(0x203a) + "\n" +
"- Nuspauskite ir laikykite pelės klavišą greitesniam pasirinkimui."; Calendar._TT["ABOUT_TIME"] = "\n\n" +
"Laiko pasirinkimas:\n" +
"- Spustelkite ant valandų arba minučių - skaičius padidės vienetu.\n" +
"- Jei spausite kartu su Shift, skaičius sumažės.\n" +
"- Greitam pasirinkimui spustelkite ir pajudinkite pelę."; 
Calendar._TT["PREV_YEAR"] = "Ankstesni metai (laikykite, jei norite meniu)"; Calendar._TT["PREV_MONTH"] = "Ankstesnis mėnuo (laikykite, jei norite meniu)"; Calendar._TT["GO_TODAY"] = "Pasirinkti šiandieną"; Calendar._TT["NEXT_MONTH"] = "Kitas mėnuo (laikykite, jei norite meniu)"; Calendar._TT["NEXT_YEAR"] = "Kiti metai (laikykite, jei norite meniu)"; Calendar._TT["SEL_DATE"] = "Pasirinkite datą"; Calendar._TT["DRAG_TO_MOVE"] = "Tempkite"; Calendar._TT["PART_TODAY"] = " (šiandien)"; Calendar._TT["MON_FIRST"] = "Pirma savaitės diena - pirmadienis"; Calendar._TT["SUN_FIRST"] = "Pirma savaitės diena - sekmadienis"; Calendar._TT["CLOSE"] = "Uždaryti"; Calendar._TT["TODAY"] = "Šiandien"; Calendar._TT["TIME_PART"] = "Spustelkite arba tempkite jei norite pakeisti"; 
Calendar._TT["DEF_DATE_FORMAT"] = "%Y-%m-%d"; Calendar._TT["TT_DATE_FORMAT"] = "%A, %Y-%m-%d"; 
Calendar._TT["WK"] = "sav"; 