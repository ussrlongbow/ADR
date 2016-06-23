//------------------------------------------------ Handle parameters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//-------------------------------------------------- Server scripts

if (PARAMS_AO == 1) then { _null = [] execVM "mission\main\missionControl.sqf"; };						// Main AO
if (PARAMS_SideObjectives == 1) then { _null = [] execVM "mission\side\missionControl.sqf"; };			// Side Objectives

_null = [] execVM "scripts\eos\OpenMe.sqf";																// EOS (urban mission and defend AO)
_null = [] execVM "scripts\misc\airbaseDefense.sqf";													// Airbase air defense
[] execVM "scripts\clean.sqf";																			// cleanup
_null = [] execVM "scripts\misc\clearItemsBASE.sqf";													// clear items around base
_null = [] execVM "scripts\misc\islandConfig.sqf";														// prep the island for mission
