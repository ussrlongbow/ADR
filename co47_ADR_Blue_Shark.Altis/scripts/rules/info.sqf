/*
Author:	ToxaBes
Description: Fill server rules dialog
*/
disableSerialization;
_display = uiNamespace getVariable['TEHGAM_Rules_Display', displayNull];

_normalFont = (safezoneH - 0.42) / 35;
_bigFont = _normalFont * 2.5;

_title = _display displayCtrl 7778;
_title ctrlsetfontheight _bigFont;
_title ctrlSetText localize "STR_TEHGAM_RULES_Title";

_ctrl = _display displayCtrl 7777;
_ctrl ctrlsetfontheight _normalFont;
_ctrl lnbAddRow ["п.1 ","     ","Запрещено наносить любой преднамеренный вред своей команде или процессу игры в целом:"];
_ctrl lnbAddRow ["    ","пп. 1","Убийство своих (Тимкил)"];
_ctrl lnbAddRow ["    ","пп. 2","Диверсии направленные против дружественных войск"];
_ctrl lnbAddRow ["    ","пп. 3","Саботаж"];
_ctrl lnbAddRow ["    ","пп. 4","Стрельба на базе без необходимости"];
_ctrl lnbAddRow ["    ","пп. 5","Кража техники ранее занятой другим игроком"];
_ctrl lnbAddRow ["    ","пп. 6","Использование транспортных вертолётов как личное такси"];
_ctrl lnbAddRow ["    ","пп. 7","Флуд"];
_ctrl lnbAddRow ["    ","пп. 8","Передача любой информации о дружественных войсках противоположной команде."];
_ctrl lnbAddRow ["    ","пп. 9","Пилотам запрещено участвовать в боевых действиях кроме как на боевых вертолетах/самолетах."];
_ctrl lnbAddRow ["п.2 ","     ","Нецензурная лексика, в пределах разумного (определяется администрацией) не запрещена."]; 
_ctrl lnbAddRow ["п.3 ","     ","Запрещены оскорбления, любые провокации или угрозы в адрес администрации либо игроков."];
_ctrl lnbAddRow ["п.4 ","     ","Запрещено играть без заполненного никнейма."];
_ctrl lnbAddRow ["    ","     ","Использование нецензурных, оскорбительных слов, глаголов, обращений в никнейме запрещено."];
_ctrl lnbAddRow ["п.5 ","     ","Запрещена реклама и плагиат сторонних игровых серверов или иных интернет-ресурсов."];
_ctrl lnbAddRow ["п.6 ","     ","Запрещено использование сторонних программ изменяющих нормальный игровой процесс."];
_ctrl lnbAddRow ["п.7 ","     ","Запрещено использование багов игры. Сообщайте о найденных багах администрации."];
_ctrl lnbAddRow ["п.8 ","     ","Запрещено игнорировать запросы по радиосвязи или чату игры от администрации и игроков."];
_ctrl lnbAddRow ["п.9 ","     ","Запрещено игнорировать свои обязанности согласно выбранной штатной специальности."];
_ctrl lnbAddRow ["п.10","     ","Запрещено занимать наградную технику, заранее не получив разрешения от её владельцев."];
_ctrl lnbAddRow ["    ","     ","Право на наградную технику имеют игроки принимавшие непосредственное участие в выполнении"];
_ctrl lnbAddRow ["    ","     ","соответствующего задания."];