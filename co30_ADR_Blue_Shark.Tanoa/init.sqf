call compile preprocessFile "scripts\=BTC=_revive\=BTC=_revive_init.sqf";
call compile preprocessFile "scripts\=BTC=_TK_punishment\=BTC=_tk_init.sqf";
[] execVM "scripts\DOM_squad\init.sqf";
if (isDedicated) exitWith { "addToScore" addPublicVariableEventHandler { ((_this select 1) select 0) addScore ((_this select 1) select 1); }; }; // Относится к скрипту =BTC=_revive

// Hide objects
((getMarkerPos "respawn_west") nearestObject 130263) hideObject true; 
/*
[solder1,"BRIEFING"] call BIS_fnc_ambientAnim;
[solder2,"LEAN"] call BIS_fnc_ambientAnim;
[solder3,"GUARD"] call BIS_fnc_ambientAnim;
[solder4,"LISTEN_BRIEFING"] call BIS_fnc_ambientAnim;
[solder5,"LISTEN_BRIEFING"] call BIS_fnc_ambientAnim;
[solder6,"LISTEN_BRIEFING"] call BIS_fnc_ambientAnim;
[Injured1,"PRONE_INJURED"] call BIS_fnc_ambientAnim;
[Injured2,"PRONE_INJURED"] call BIS_fnc_ambientAnim;
[Injured3,"PRONE_INJURED"] call BIS_fnc_ambientAnim;
[medic1,"REPAIR_VEH_KNEEL"] call BIS_fnc_ambientAnim;
[repair1,"REPAIR_VEH_PRONE"] call BIS_fnc_ambientAnim;
*/