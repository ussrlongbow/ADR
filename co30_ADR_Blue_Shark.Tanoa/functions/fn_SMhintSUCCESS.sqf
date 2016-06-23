private ["_veh", "_vehName", "_vehVarname", "_completeText", "_reward"];

if (isNil "smRewards") then {
    smRewards = [];
};

if ((count smRewards) == 0) then {
	smRewards =
	[
		["То-199 «Неофрон» (штурмовик)", "O_Plane_CAS_02_F"],
		["А-164 «Вайпаут» (штурмовик)", "B_Plane_CAS_01_F"],
		["Ми-48 «Кайман»", "O_Heli_Attack_02_black_F"],
		["AH-99 «Блэкфут»", "B_Heli_Attack_01_F"],
		["ПО-30 «Касатка»", "O_Heli_Light_02_F"],
		["AFV-4 «Горгона»", "I_APC_Wheeled_03_cannon_F"],
		["БТР-К «Камыш»", "O_T_APC_Tracked_02_cannon_ghex_F"],
		["ЗСУ-39 «Тигр»", "O_T_APC_Tracked_02_AA_ghex_F"],
		["IFV-6a «Гепард»", "B_T_APC_Tracked_01_AA_F"],
		["T-100 «Варсук»", "O_T_MBT_02_cannon_ghex_F"],
		["MBT-52 «Кума»", "I_MBT_03_cannon_F"],
		["M2A1 «Сламмер»", "B_T_MBT_01_cannon_F"],
		["WY-55 Хелкат c 35мм пушкой", "I_Heli_light_03_F"],
		["MSE-3 «Марид» с НУРС", "O_T_APC_Wheeled_02_rcws_ghex_F"],
		["MQ-12 «Фалкон»","B_T_UAV_03_F"],
		["М4 «Скорчер»","B_T_MBT_01_arty_F"],
		["V-44 X «Блэкфиш» (с оружием)","B_T_VTOL_01_armed_F"],
		["KH-3A «Феникс»","O_T_UAV_04_CAS_F"],
		["Y-32 «Сиань»","O_T_VTOL_02_infantry_F"]
	];
};
if ((count smRewards) > 0) then {
	smMarkerList =
	["smReward1", "smReward2", "smReward3", "smReward4", "smReward5", "smReward6", "smReward7", "smReward8", "smReward9", "smReward10", "smReward11", "smReward12", "smReward13", "smReward14", "smReward15", "smReward16", "smReward17", "smReward18", "smReward19", "smReward20", "smReward21", "smReward22", "smReward23"];

	_veh = smRewards call BIS_fnc_selectRandom;

	_vehName = _veh select 0;
	_vehVarname = _veh select 1;

	_completeText = format["<t align='center'><t size='2.2'>Допзадание</t><br/><t size='1.5' color='#08b000'>Выполнено</t><br/>____________________<br/>За успешное проведение, непосредственные участники задания получают в награду:<br/><br/>%1.<br/><br/>Выдвигайтесь обратно на базу или прямиком на точку захвата.</t>", _vehName];

	_reward = createVehicle [_vehVarname, getMarkerPos "smReward1", smMarkerList, 0, "NONE"];
	waitUntil {!isNull _reward};

	[_reward] call QS_fnc_killerCatcher;
	_reward setDir 135;

	GlobalHint = _completeText; publicVariable "GlobalHint"; hint parseText _completeText;
	if (count sideMarkerText == 2) then {
		sideMarkerText = sideMarkerText select 0;
	};
	showNotification = ["CompletedSideMission", sideMarkerText]; publicVariable "showNotification";
	showNotification = ["Reward", format["Ваша команда получила %1!", _vehName]]; publicVariable "showNotification";

	if (_reward isKindOf "I_Heli_light_03_F") then {
		_reward addWeapon ("autocannon_35mm");
		_reward addMagazine ("680Rnd_35mm_AA_shells_Tracer_Yellow");
		_reward addWeapon "Laserdesignator_mounted";
		_reward addMagazine "Laserbatteries";
	};

	if (_reward isKindOf "O_T_APC_Wheeled_02_rcws_ghex_F") then {
		_reward addWeapon ("Rocket_04_AP_Plane_CAS_01_F");
		_reward addMagazine ("7Rnd_Rocket_04_AP_F");
		_reward addWeapon ("Rocket_04_HE_Plane_CAS_01_F");
		_reward addMagazine ("7Rnd_Rocket_04_HE_F");
	};
	if (_reward isKindOf "B_T_MBT_01_arty_F") then {
		_reward removeMagazine ("6Rnd_155mm_Mo_mine");
		_reward removeMagazine ("6Rnd_155mm_Mo_AT_mine");
		_reward removeMagazine ("2Rnd_155mm_Mo_Cluster");
		_reward removeMagazine ("6Rnd_155mm_Mo_mine");
	};

	smRewards = smRewards - [_veh];

	// Setting reward vehicle timmer.
	_lockTime = 600;

	// Spawn vehicle lock, timer and Draw3D EH in different thread.
	[_reward, _lockTime] spawn {
		_reward = _this select 0;
		_lockTime = _this select 1;

		_reward lock 3;
		sleep _lockTime;
		_reward lock 0;
	};
};