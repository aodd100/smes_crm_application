/*
 * Irsl PUBLIC LICENSE v1.0
 * Please obtain a copy of the License at http://www.Irsl.com/TPL/
 * and read it before using this file.
 * Portions Copyright (c) 2003-2006 Digita S.r.l. All Rights Reserved.
 */




Calendar._DN = new Array
("Domingo",
"Lunes",
"Martes",
"Miercoles",
"Jueves",
"Viernes",
"Sabado",
"Domingo"); 
Calendar._SDN = new Array
("Dom",
"Lun",
"Mar",
"Mie",
"Jue",
"Vie",
"Sab",
"Dom"); 
Calendar._MN = new Array
("Enero",
"Febrero",
"Marzo",
"Abril",
"Mayo",
"Junio",
"Julio",
"Agosto",
"Septiembre",
"Octubre",
"Noviembre",
"Diciembre"); 
Calendar._SMN = new Array
("Ene",
"Feb",
"Mar",
"Abr",
"May",
"Jun",
"Jul",
"Ago",
"Sep",
"Oct",
"Nov",
"Dic"); 
Calendar._TT = {}; Calendar._TT["INFO"] = "Informacin del Calendario"; 
Calendar._TT["ABOUT"] =
"DHTML Date/Time Selector\n" +
"(c) dynarch.com 2002-2005 / Author: Mihai Bazon\n" + // don't translate this this ;-)
"Nuevas versiones en: http://www.dynarch.com/projects/calendar/\n" +
"Distribuida bajo licencia GNU LGPL.  Para detalles vea http://gnu.org/licenses/lgpl.html ." +
"\n\n" +
"Seleccin de Fechas:\n" +
"- Use  \xab, \xbb para seleccionar el ao\n" +
"- Use " + String.fromCharCode(0x2039) + ", " + String.fromCharCode(0x203a) + " para seleccionar el mes\n" +
"- Mantenga presionado el botn del ratn en cualquiera de las opciones superiores para un acceso rapido ."; Calendar._TT["ABOUT_TIME"] = "\n\n" +
"Seleccin del Reloj:\n" +
"- Seleccione la hora para cambiar el reloj\n" +
"- o presione  Shift-click para disminuirlo\n" +
"- o presione click y arrastre del ratn para una seleccin rapida."; 
Calendar._TT["PREV_YEAR"] = "Ao anterior (Presione para menu)"; Calendar._TT["PREV_MONTH"] = "Mes Anterior (Presione para menu)"; Calendar._TT["GO_TODAY"] = "Ir a Hoy"; Calendar._TT["NEXT_MONTH"] = "Mes Siguiente (Presione para menu)"; Calendar._TT["NEXT_YEAR"] = "Ao Siguiente (Presione para menu)"; Calendar._TT["SEL_DATE"] = "Seleccione fecha"; Calendar._TT["DRAG_TO_MOVE"] = "Arrastre y mueva"; Calendar._TT["PART_TODAY"] = " (Hoy)"; 
Calendar._TT["DAY_FIRST"] = "Mostrar %s primero"; 
Calendar._TT["WEEKEND"] = "0,6"; 
Calendar._TT["CLOSE"] = "Cerrar"; Calendar._TT["TODAY"] = "Hoy"; Calendar._TT["TIME_PART"] = "(Shift-)Click o arrastra para cambar el valor"; 
Calendar._TT["DEF_DATE_FORMAT"] = "%dd-%mm-%yy"; Calendar._TT["TT_DATE_FORMAT"] = "%A, %e de %B de %Y"; 
Calendar._TT["WK"] = "Sm"; Calendar._TT["TIME"] = "Hora:"; 