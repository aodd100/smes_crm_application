/*
 * Irsl PUBLIC LICENSE v1.0
 * Please obtain a copy of the License at http://www.Irsl.com/TPL/
 * and read it before using this file.
 * Portions Copyright (c) 2003-2006 Digita S.r.l. All Rights Reserved.
 */

var phoneprefix = null; var isonation = null;
var isoarray = new Array('AF', 'AX', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU', 'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IL', 'IT', 'JM', 'JP', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MK', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'AN', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'RE', 'RO', 'RU', 'RW', 'SH', 'KN', 'LC', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'CS', 'SC', 'SL', 'SG', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UM', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW'); var statenamearray = new Array('AFGHANISTAN', 'LAND ISLANDS', 'ALBANIA', 'ALGERIA', 'AMERICAN SAMOA', 'ANDORRA', 'ANGOLA', 'ANGUILLA', 'ANTARCTICA', 'ANTIGUA AND BARBUDA', 'ARGENTINA', 'ARMENIA', 'ARUBA', 'AUSTRALIA', 'AUSTRIA', 'AZERBAIJAN', 'BAHAMAS', 'BAHRAIN', 'BANGLADESH', 'BARBADOS', 'BELARUS', 'BELGIUM', 'BELIZE', 'BENIN', 'BERMUDA', 'BHUTAN', 'BOLIVIA', 'BOSNIA AND HERZEGOVINA', 'BOTSWANA', 'BOUVET ISLAND', 'BRAZIL', 'BRITISH INDIAN OCEAN TERRITORY', 'BRUNEI DARUSSALAM', 'BULGARIA', 'BURKINA FASO', 'BURUNDI', 'CAMBODIA', 'CAMEROON', 'CANADA', 'CAPE VERDE', 'CAYMAN ISLANDS', 'CENTRAL AFRICAN REPUBLIC', 'CHAD', 'CHILE', 'CHINA', 'CHRISTMAS ISLAND', 'COCOS (KEELING) ISLANDS', 'COLOMBIA', 'COMOROS', 'CONGO', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COOK ISLANDS', 'COSTA RICA', 'COTE D\'IVOIRE', 'CROATIA', 'CUBA', 'CYPRUS', 'CZECH REPUBLIC', 'DENMARK', 'DJIBOUTI', 'DOMINICA', 'DOMINICAN REPUBLIC', 'ECUADOR', 'EGYPT', 'EL SALVADOR', 'EQUATORIAL GUINEA', 'ERITREA', 'ESTONIA', 'ETHIOPIA', 'FALKLAND ISLANDS (MALVINAS)', 'FAROE ISLANDS', 'FIJI', 'FINLAND', 'FRANCE', 'FRENCH GUIANA', 'FRENCH POLYNESIA', 'FRENCH SOUTHERN TERRITORIES', 'GABON', 'GAMBIA', 'GEORGIA', 'GERMANY', 'GHANA', 'GIBRALTAR', 'GREECE', 'GREENLAND', 'GRENADA', 'GUADELOUPE', 'GUAM', 'GUATEMALA', 'GUINEA', 'GUINEA-BISSAU', 'GUYANA', 'HAITI', 'HEARD ISLAND AND MCDONALD ISLANDS', 'HOLY SEE (VATICAN CITY STATE)', 'HONDURAS', 'HONG KONG', 'HUNGARY', 'ICELAND', 'INDIA', 'INDONESIA', 'IRAN, ISLAMIC REPUBLIC OF', 'IRAQ', 'IRELAND', 'ISRAEL', 'ITALY', 'JAMAICA', 'JAPAN', 'JORDAN', 'KAZAKHSTAN', 'KENYA', 'KIRIBATI', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KOREA, REPUBLIC OF', 'KUWAIT', 'KYRGYZSTAN', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LATVIA', 'LEBANON', 'LESOTHO', 'LIBERIA', 'LIBYAN ARAB JAMAHIRIYA', 'LIECHTENSTEIN', 'LITHUANIA', 'LUXEMBOURG', 'MACAO', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MADAGASCAR', 'MALAWI', 'MALAYSIA', 'MALDIVES', 'MALI', 'MALTA', 'MARSHALL ISLANDS', 'MARTINIQUE', 'MAURITANIA', 'MAURITIUS', 'MAYOTTE', 'MEXICO', 'MICRONESIA, FEDERATED STATES OF', 'MOLDOVA, REPUBLIC OF', 'MONACO', 'MONGOLIA', 'MONTSERRAT', 'MOROCCO', 'MOZAMBIQUE', 'MYANMAR', 'NAMIBIA', 'NAURU', 'NEPAL', 'NETHERLANDS', 'NETHERLANDS ANTILLES', 'NEW CALEDONIA', 'NEW ZEALAND', 'NICARAGUA', 'NIGER', 'NIGERIA', 'NIUE', 'NORFOLK ISLAND', 'NORTHERN MARIANA ISLANDS', 'NORWAY', 'OMAN', 'PAKISTAN', 'PALAU', 'PALESTINIAN TERRITORY, OCCUPIED', 'PANAMA', 'PAPUA NEW GUINEA', 'PARAGUAY', 'PERU', 'PHILIPPINES', 'PITCAIRN', 'POLAND', 'PORTUGAL', 'PUERTO RICO', 'QATAR', 'REUNION', 'ROMANIA', 'RUSSIAN FEDERATION', 'RWANDA', 'SAINT HELENA', 'SAINT KITTS AND NEVIS', 'SAINT LUCIA', 'SAINT PIERRE AND MIQUELON', 'SAINT VINCENT AND THE GRENADINES', 'SAMOA', 'SAN MARINO', 'SAO TOME AND PRINCIPE', 'SAUDI ARABIA', 'SENEGAL', 'SERBIA AND MONTENEGRO', 'SEYCHELLES', 'SIERRA LEONE', 'SINGAPORE', 'SLOVAKIA', 'SLOVENIA', 'SOLOMON ISLANDS', 'SOMALIA', 'SOUTH AFRICA', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'SPAIN', 'SRI LANKA', 'SUDAN', 'SURINAME', 'SVALBARD AND JAN MAYEN', 'SWAZILAND', 'SWEDEN', 'SWITZERLAND', 'SYRIAN ARAB REPUBLIC', 'TAIWAN, PROVINCE OF CHINA', 'TAJIKISTAN', 'TANZANIA, UNITED REPUBLIC OF', 'THAILAND', 'TIMOR-LESTE', 'TOGO', 'TOKELAU', 'TONGA', 'TRINIDAD AND TOBAGO', 'TUNISIA', 'TURKEY', 'TURKMENISTAN', 'TURKS AND CAICOS ISLANDS', 'TUVALU', 'UGANDA', 'UKRAINE', 'UNITED ARAB EMIRATES', 'UNITED KINGDOM', 'UNITED STATES', 'UNITED STATES MINOR OUTLYING ISLANDS', 'URUGUAY', 'UZBEKISTAN', 'VANUATU', 'VENEZUELA', 'VIET NAM', 'VIRGIN ISLANDS, BRITISH', 'VIRGIN ISLANDS, U.S.', 'WALLIS AND FUTUNA', 'WESTERN SAHARA', 'YEMEN', 'ZAMBIA', 'ZIMBABWE'); var phonearray = new Array('93', '', '355', '213', '684', '376', '244', '1-264', '672', '1-268', '54', '374', '297', '61', '43', '994', '1-242', '973', '880', '1-246', '375', '32', '501', '229', '1-441', '975', '591', '387', '267', '', '55', '246', '673', '359', '226', '257', '855', '237', '1', '238', '1-345', '236', '235', '56', '86', '53', '61', '57', '269', '242', '243', '682', '506', '225', '385', '53', '357', '420', '45', '253', '1-767', '1-809', '593', '20', '503', '240', '291', '372', '251', '500', '298', '679', '358', '33', '594', '689', '', '241', '220', '995', '49', '233', '350', '30', '299', '1-473', '590', '1-671', '502', '224', '245', '592', '509', '', '418', '504', '852', '36', '354', '91', '62', '98', '964', '353', '972', '39', '1-876', '81', '962', '7', '254', '686', '850', '82', '965', '996', '856', '371', '961', '266', '231', '218', '423', '370', '352', '853', '389', '261', '265', '60', '960', '223', '356', '692', '596', '222', '230', '269', '52', '691', '373', '377', '976', '1-664', '212', '258', '95', '264', '674', '977', '31', '599', '687', '64', '505', '227', '234', '683', '672', '1-670', '47', '968', '92', '680', '970', '507', '675', '595', '51', '63', '649', '48', '351', '1-787', '974', '262', '40', '7', '250', '290', '1-869', '1-758', '508', '1-784', '685', '378', '239', '966', '221', '381', '248', '232', '65', '421', '386', '677', '252', '27', '', '34', '94', '249', '597', '47', '268', '46', '41', '963', '886', '992', '255', '66', '', '228', '690', '676', '1-868', '216', '90', '993', '1-649', '688', '256', '380', '971', '44', '1', '808', '598', '998', '678', '58', '84', '1-340', '1-340', '681', '', '967', '260', '263');
var actb_timeOut = -1; var actb_lim = 4; var actb_firstText = false;
var actb_bgColor = '#888888'; var actb_textColor = '#FFFFFF'; var actb_hColor = '#000000'; var actb_fFamily = 'Verdana'; var actb_fSize = '11px'; var actb_hStyle = 'text-decoration:underline;font-weight="bold"';
var actb_keywords = new Array(); var actb_display = false; var actb_pos = 0; var actb_total = 0; var actb_curr = null; var actb_rangeu = 0; var actb_ranged = 0; var actb_bool = new Array(); var actb_pre = 0; var actb_toid; var actb_tomake = false;
function actb_parse(n) {
    var t = escape(actb_curr.value); var tobuild = ''; var i;
    if (actb_firstText) { var re = new RegExp("^" + t, "i"); } else { var re = new RegExp(t, "i"); }
    var p = n.search(re);
    for (i = 0; i < p; i++) { tobuild += n.substr(i, 1); }
    tobuild += "<font style='" + (actb_hStyle) + "'>"
    for (i = p; i < t.length + p; i++) { tobuild += n.substr(i, 1); }
    tobuild += "</font>"; for (i = t.length + p; i < n.length; i++) { tobuild += n.substr(i, 1); }
    return tobuild;
}
function curTop() {
    actb_toreturn = 0; obj = actb_curr; while (obj) { actb_toreturn += obj.offsetTop; obj = obj.offsetParent; }
    return actb_toreturn;
}
function curLeft() {
    actb_toreturn = 0; obj = actb_curr; while (obj) { actb_toreturn += obj.offsetLeft; obj = obj.offsetParent; }
    return actb_toreturn;
}
function actb_generate() {
    if (document.getElementById('tat_table')) document.body.removeChild(document.getElementById('tat_table')); a = document.createElement('table'); a.cellSpacing = '1px'; a.cellPadding = '2px'; a.style.position = 'absolute'; a.style.top = eval(curTop() + actb_curr.offsetHeight) + "px"; a.style.left = curLeft() + "px"; a.style.backgroundColor = actb_bgColor; a.id = 'tat_table'; document.body.appendChild(a); var i; var first = true; var j = 1;
    var counter = 0; for (i = 0; i < actb_keywords.length; i++) {
        if (actb_bool[i]) {
            counter++; r = a.insertRow(-1); if (first && !actb_tomake) { r.style.backgroundColor = actb_hColor; first = false; actb_pos = counter; } else if (actb_pre == i) { r.style.backgroundColor = actb_hColor; first = false; actb_pos = counter; } else { r.style.backgroundColor = actb_bgColor; }
            r.id = 'tat_tr' + (j); c = r.insertCell(-1); c.style.color = actb_textColor; c.style.fontFamily = actb_fFamily; c.style.fontSize = actb_fSize; c.innerHTML = actb_parse(actb_keywords[i]); c.id = 'tat_td' + (j); j++;
        }
        if (j - 1 == actb_lim && j < actb_total) { r = a.insertRow(-1); r.style.backgroundColor = actb_bgColor; c = r.insertCell(-1); c.style.color = actb_textColor; c.style.fontFamily = 'arial narrow'; c.style.fontSize = actb_fSize; c.align = 'center'; c.innerHTML = '\\/'; break; }
    }
    actb_rangeu = 1; actb_ranged = j - 1; actb_display = true; if (actb_pos <= 0) actb_pos = 1;
}
function actb_remake() {
    document.body.removeChild(document.getElementById('tat_table')); a = document.createElement('table'); a.cellSpacing = '1px'; a.cellPadding = '2px'; a.style.position = 'absolute'; a.style.top = eval(curTop() + actb_curr.offsetHeight) + "px"; a.style.left = curLeft() + "px"; a.style.backgroundColor = actb_bgColor; a.id = 'tat_table'; document.body.appendChild(a); var i; var first = true; var j = 1; if (actb_rangeu > 1) { r = a.insertRow(-1); r.style.backgroundColor = actb_bgColor; c = r.insertCell(-1); c.style.color = actb_textColor; c.style.fontFamily = 'arial narrow'; c.style.fontSize = actb_fSize; c.align = 'center'; c.innerHTML = '/\\'; }
    for (i = 0; i < actb_keywords.length; i++) {
        if (actb_bool[i]) {
            if (j >= actb_rangeu && j <= actb_ranged) { r = a.insertRow(-1); r.style.backgroundColor = actb_bgColor; r.id = 'tat_tr' + (j); c = r.insertCell(-1); c.style.color = actb_textColor; c.style.fontFamily = actb_fFamily; c.style.fontSize = actb_fSize; c.innerHTML = actb_parse(actb_keywords[i]); c.id = 'tat_td' + (j); j++; } else { j++; }
        }
        if (j > actb_ranged) break;
    }
    if (j - 1 < actb_total) { r = a.insertRow(-1); r.style.backgroundColor = actb_bgColor; c = r.insertCell(-1); c.style.color = actb_textColor; c.style.fontFamily = 'arial narrow'; c.style.fontSize = actb_fSize; c.align = 'center'; c.innerHTML = '\\/'; }
}
function actb_goup() { if (!actb_display) return; if (actb_pos == 1) return; document.getElementById('tat_tr' + actb_pos).style.backgroundColor = actb_bgColor; actb_pos--; if (actb_pos < actb_rangeu) actb_moveup(); document.getElementById('tat_tr' + actb_pos).style.backgroundColor = actb_hColor; if (actb_toid) clearTimeout(actb_toid); if (actb_timeOut > 0) actb_toid = setTimeout("actb_removedisp()", actb_timeOut); }
function actb_godown() { if (!actb_display) return; if (actb_pos == actb_total) return; document.getElementById('tat_tr' + actb_pos).style.backgroundColor = actb_bgColor; actb_pos++; if (actb_pos > actb_ranged) actb_movedown(); document.getElementById('tat_tr' + actb_pos).style.backgroundColor = actb_hColor; if (actb_toid) clearTimeout(actb_toid); if (actb_timeOut > 0) actb_toid = setTimeout("actb_removedisp()", actb_timeOut); }
function actb_movedown() { actb_rangeu++; actb_ranged++; actb_remake(); }
function actb_moveup() { actb_rangeu--; actb_ranged--; actb_remake(); }
function actb_penter() {
    if (!actb_display) return; actb_display = 0; var word = ''; var c = 0; for (var i = 0; i <= actb_keywords.length; i++) {
        if (actb_bool[i]) c++; if (c == actb_pos) { word = actb_keywords[i]; break; }
    }
    a = word;//actb_keywords[actb_pos-1];//document.getElementById('tat_td'+actb_pos).; actb_curr.value = a; phoneprefix = phonearray[i]; statenamearray =  isoarray[i]; actb_removedisp(); }
    function actb_removedisp() { actb_display = 0; if (document.getElementById('tat_table')) document.body.removeChild(document.getElementById('tat_table')); if (actb_toid) clearTimeout(actb_toid); }
    function actb_checkkey(evt) {
        a = evt.keyCode; if (a == 38) { actb_goup(); } else if (a == 40) { actb_godown(); } else if (a == 13) { actb_penter(); }
    }
    function actb_tocomplete(sndr, evt) {
        if (statenamearray) actb_keywords = statenamearray; if (evt.keyCode == 38 || evt.keyCode == 40 || evt.keyCode == 13) return; var i; if (actb_display) {
            var word = 0; var c = 0; for (var i = 0; i <= actb_keywords.length; i++) {
                if (actb_bool[i]) c++; if (c == actb_pos) { word = i; break; }
            }
            actb_pre = word;
        } else { actb_pre = -1 };
        if (!sndr) var sndr = evt.srcElement; actb_curr = sndr;
        if (sndr.value == '') { actb_removedisp(); return; }
        var t = escape(sndr.value); if (actb_firstText) { var re = new RegExp("^" + t, "i"); } else { var re = new RegExp(t, "i"); }

        actb_total = 0; actb_tomake = false; for (i = 0; i < actb_keywords.length; i++) {
        actb_bool[i] = false; if (re.test(actb_keywords[i])) { actb_total++; actb_bool[i] = true; if (actb_pre == i) actb_tomake = true; }
        }
        if (actb_toid) clearTimeout(actb_toid); if (actb_timeOut > 0) actb_toid = setTimeout("actb_removedisp()", actb_timeOut); actb_generate(actb_bool);
    }
