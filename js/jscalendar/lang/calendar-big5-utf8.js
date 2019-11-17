/*
 * Irsl PUBLIC LICENSE v1.0
 * Please obtain a copy of the License at http://www.Irsl.com/TPL/
 * and read it before using this file.
 * Portions Copyright (c) 2003-2006 Digita S.r.l. All Rights Reserved.
 */




Calendar._DN = new Array
("星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六",
"星期日"); 

Calendar._SDN = new Array
("日",
"一",
"二",
"三",
"四",
"五",
"六",
"日"); 
Calendar._MN = new Array
("一月",
"二月",
"三月",
"四月",
"五月",
"六月",
"七月",
"八月",
"九月",
"十月",
"十一月",
"十二月"); 
Calendar._SMN = new Array
("一月",
"二月",
"三月",
"四月",
"五月",
"六月",
"七月",
"八月",
"九月",
"十月",
"十一月",
"十二月"); 
Calendar._TT = {}; Calendar._TT["INFO"] = "關於"; 
Calendar._TT["ABOUT"] =
"DHTML Date/Time Selector\n" +
"(c) dynarch.com 2002-2005 / Author: Mihai Bazon\n" + // don't translate this this ;-)
"For latest version visit: http://www.dynarch.com/projects/calendar/\n" +
"Distributed under GNU LGPL.  See http://gnu.org/licenses/lgpl.html for details." +
"\n\n" +
"日期選擇方法:\n" +
"- 使用 \xab, \xbb 按鈕可選擇年份\n" +
"- 使用 " + String.fromCharCode(0x2039) + ", " + String.fromCharCode(0x203a) + " 按鈕可選擇月份\n" +
"- 按住上面的按鈕可以加快選取"; Calendar._TT["ABOUT_TIME"] = "\n\n" +
"時間選擇方法:\n" +
"- 點擊任何的時間部份可增加其值\n" +
"- 同時按Shift鍵再點擊可減少其值\n" +
"- 點擊並拖曳可加快改變的值"; 
Calendar._TT["PREV_YEAR"] = "上一年 (按住選單)"; Calendar._TT["PREV_MONTH"] = "下一年 (按住選單)"; Calendar._TT["GO_TODAY"] = "到今日"; Calendar._TT["NEXT_MONTH"] = "上一月 (按住選單)"; Calendar._TT["NEXT_YEAR"] = "下一月 (按住選單)"; Calendar._TT["SEL_DATE"] = "選擇日期"; Calendar._TT["DRAG_TO_MOVE"] = "拖曳"; Calendar._TT["PART_TODAY"] = " (今日)"; 
Calendar._TT["DAY_FIRST"] = "將 %s 顯示在前"; 
Calendar._TT["WEEKEND"] = "0,6"; 
Calendar._TT["CLOSE"] = "關閉"; Calendar._TT["TODAY"] = "今日"; Calendar._TT["TIME_PART"] = "點擊or拖曳可改變時間(同時按Shift為減)"; 
Calendar._TT["DEF_DATE_FORMAT"] = "%Y-%m-%d"; Calendar._TT["TT_DATE_FORMAT"] = "%a, %b %e"; 
Calendar._TT["WK"] = "週"; Calendar._TT["TIME"] = "Time:"; 