/*
Description:

	Restricts certain weapon systems to different roles
	Ограничение оружия для разных специализаций
_________________________________________________*/
private ["_opticsAllowed","_specialisedOptics","_basePos","_firstRun","_insideSafezone","_outsideSafezone"];

#define AT_MSG "Только гранатометчики могут использовать это оружие."
#define SNIPER_MSG "Только снайперы могут использовать это оружие."
#define AUTOTUR_MSG "Данное вооружение запрещено."
#define UAV_MSG "Только операторы БПЛА могут использовать терминал управления."
#define MG_MSG "Только пулеметчики могут использовать тяжёлые пулеметы."
#define PILOT_MSG "Пилоты могут использовать только пистолеты и пистолет-пулемёты."
#define MARKSMANOPT_MSG "Только снайперы могут использовать оптические прицелы LRPS"

//===== UAV TERMINAL
_uavOperator = ["B_T_Soldier_UAV_F"];
_uavRestricted = ["B_UavTerminal","O_UavTerminal","I_UavTerminal"];
//===== AT / MISSILE LAUNCHERS
_missileSoldiers = ["B_T_Soldier_AT_F"];
_missileSpecialised = ["launch_NLAW_F","launch_O_Titan_F","launch_O_Titan_ghex_F","launch_B_Titan_F","launch_B_Titan_tna_F","launch_I_Titan_F","launch_O_Titan_short_ghex_F","launch_O_Titan_short_F","launch_I_Titan_short_F","launch_B_Titan_short_F","launch_B_Titan_short_tna_F"];
//===== SNIPER RIFLES
_snipers = ["B_T_ghillie_tna_F"];
_sniperSpecialised = ["srifle_GM6_camo_F","srifle_GM6_camo_LRPS_F","srifle_GM6_camo_SOS_F","srifle_GM6_F","srifle_GM6_LRPS_F","srifle_GM6_SOS_F","srifle_GM6_ghex_F","srifle_GM6_ghex_LRPS_F","srifle_LRR_F","srifle_LRR_LRPS_F","srifle_LRR_SOS_F","srifle_LRR_camo_F","srifle_LRR_camo_LRPS_F","srifle_LRR_camo_SOS_F","srifle_LRR_tna_F","srifle_LRR_tna_LRPS_F"];
//===== BACKPACKS
_backpackRestricted = ["B_Respawn_TentA_F","B_Respawn_Sleeping_bag_F","B_Respawn_Sleeping_bag_brown_F","B_Respawn_TentDome_F","B_Respawn_Sleeping_bag_blue_F","B_GMG_01_A_weapon_F","I_GMG_01_A_weapon_F","O_GMG_01_A_weapon_F","B_GMG_01_high_weapon_F","I_GMG_01_high_weapon_F","O_GMG_01_high_weapon_F","B_GMG_01_weapon_F","I_GMG_01_weapon_F","O_GMG_01_weapon_F","B_HMG_01_high_weapon_F","I_HMG_01_high_weapon_F","O_HMG_01_high_weapon_F","B_HMG_01_weapon_F","I_HMG_01_weapon_F","O_HMG_01_weapon_F","B_HMG_01_A_weapon_F","I_HMG_01_A_weapon_F","O_HMG_01_A_weapon_F","B_Mortar_01_support_F","I_Mortar_01_support_F","O_Mortar_01_support_F","B_HMG_01_support_F","I_HMG_01_support_F","O_HMG_01_support_F","B_Mortar_01_weapon_F","I_Mortar_01_weapon_F","O_Mortar_01_weapon_F","B_AT_01_weapon_F","I_AT_01_weapon_F","O_AT_01_weapon_F","I_UAV_01_backpack_F","O_UAV_01_backpack_F","O_Static_Designator_02_weapon_F"];
//===== LMG
_autoRiflemen = ["B_T_Soldier_AR_F"];
_autoSpecialised = ["LMG_Zafir_F","LMG_Zafir_pointer_F","LMG_Zafir_ARCO_F","MMG_01_hex_F","MMG_01_hex_ARCO_LP_F","MMG_01_tan_F","MMG_02_sand_F","MMG_02_sand_RCO_LP_F","MMG_02_black_F","MMG_02_black_RCO_BI_F","MMG_02_camo_F"];
//==== PILOTS
_pilot = ["B_T_Helipilot_F"];
_pilotWeapons = ["hgun_Pistol_Signal_F","hgun_Pistol_01_F","SMG_01_F","SMG_01_Holo_F","SMG_01_Holo_pointer_snds_F","SMG_01_ACO_F","hgun_Rook40_F","hgun_Rook40_snds_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_snds_F","hgun_Pistol_heavy_01_MRD_F","hgun_ACPC2_F","hgun_ACPC2_snds_F","hgun_P07_F","hgun_P07_khk_F","hgun_P07_snds_F","hgun_PDW2000_F","hgun_PDW2000_snds_F","hgun_PDW2000_Holo_F","hgun_PDW2000_Holo_snds_F","SMG_05_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F","hgun_Pistol_heavy_02_F","hgun_Pistol_heavy_02_Yorris_F"];

//===== THERMAL
_ThermalTeam = ["b_g_survivor_F"];
_ThermalOpt = ["optic_Nightstalker","optic_tws"];

//===== MARKSMAN OPTICS
_marksmanOpticsGrp = ["B_T_ghillie_tna_F"];
_marksmanOpticsItems = ["optic_LRPS","optic_LRPS_ghex_F","optic_LRPS_tna_F","optic_tws_mg"];


_basePos = getMarkerPos "respawn_west";

_szmkr = getMarkerPos "safezone_marker";
#define SZ_RADIUS 400

_EHFIRED = {
	deleteVehicle (_this select 6);
	hintC "Использование оружия на базе запрещено! В целях безопасности.";
    hintC_EH = findDisplay 57 displayAddEventHandler ["unload", {
        0 = _this spawn {
            _this select 0 displayRemoveEventHandler ["unload", hintC_EH];
            hintSilent "";
        };
    }];
};

_firstRun = TRUE;
if (_firstRun) then {
	_firstRun = FALSE;
	if ((player distance _szmkr) <= SZ_RADIUS) then {
		_insideSafezone = TRUE;
		_outsideSafezone = FALSE;
		EHFIRED = player addEventHandler ["Fired",_EHFIRED];
	} else {
		_outsideSafezone = TRUE;
		_insideSafezone = FALSE;
	};
};

while {true} do {
	//------------------------------------- Pilots
	if (({player isKindOf _x} count _pilot) > 0) then {
		if (!(primaryWeapon player in _pilotWeapons) and (primaryWeapon player != "")) then {
			player removeWeapon (primaryWeapon player);
			titleText [PILOT_MSG,"PLAIN",2];
		};
		sleep 0.1;

	} else {

	//------------------------------------- Sniper Rifles
	if (({player hasWeapon _x} count _sniperSpecialised) > 0) then {
		if (({player isKindOf _x} count _snipers) < 1) then {
			player removeWeapon (primaryWeapon player);
			titleText [SNIPER_MSG,"PLAIN",2];
		};
	};
	sleep 0.1;

	//------------------------------------- LMG
	if (({player hasWeapon _x} count _autoSpecialised) > 0) then {
		if (({player isKindOf _x} count _autoRiflemen) < 1) then {
			player removeWeapon (primaryWeapon player);
			titleText [MG_MSG,"PLAIN",2];
		};
	};
	sleep 0.1;

	//------------------------------------- Launchers
	if (({player hasWeapon _x} count _missileSpecialised) > 0) then {
		if (({player isKindOf _x} count _missileSoldiers) < 1) then {
			player removeWeapon (secondaryWeapon player);
			titleText [AT_MSG,"PLAIN",2];
		};
	};
	sleep 0.1;

	//------------------------------------- Thermal optics
	_optics = primaryWeaponItems player;
	if (({_x in _optics} count _ThermalOpt) > 0) then {
		if (({player isKindOf _x} count _ThermalTeam) < 1) then {
			{player removePrimaryWeaponItem  _x;} count _ThermalOpt;
			titleText [AUTOTUR_MSG,"PLAIN",2];
		};
	};
	sleep 0.1;

	//------------------------------------- Ennemy turret backpacks
	if ((backpack player) in _backpackRestricted) then {
		removeBackpack player;
		titleText [AUTOTUR_MSG, "PLAIN", 2];
	};
	sleep 0.1;

	//------------------------------------- UAV
	_assignedItems = assignedItems player;
	if (({"B_UavTerminal" == _x} count _assignedItems) > 0) then {
		if (({player isKindOf _x} count _uavOperator) < 1) then {
			player unassignItem "B_UavTerminal";
			player removeItem "B_UavTerminal";
			titleText [UAV_MSG,"PLAIN",2];
		};
	};
	sleep 0.1;

	//===================================== SAFE ZONE MANAGER
	_szmkr = getMarkerPos "safezone_marker";
	if (_insideSafezone) then {
		if ((player distance _szmkr) > SZ_RADIUS) then {
			_insideSafezone = FALSE;
			_outsideSafezone = TRUE;
			player removeEventHandler ["Fired",EHFIRED];
		};
	};

	sleep 1;

	if (_outsideSafezone) then {
		if ((player distance _szmkr) < SZ_RADIUS) then {
			_outsideSafezone = FALSE;
			_insideSafezone = TRUE;
			EHFIRED = player addEventHandler ["Fired",_EHFIRED];
		};
	};

	//----- Sleep
	_basePos = getMarkerPos "respawn_west";
	if ((player distance _basePos) <= 500) then {
		sleep 2;
	} else {
		sleep 20;
	};
};
