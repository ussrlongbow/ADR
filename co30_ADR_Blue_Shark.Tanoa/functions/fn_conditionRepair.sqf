// Author: malashin
// Helicopter or plane field repair add action condition

private ["_c"];
_v = cursorTarget;
_c = false;

if (!(vehicle_repaired)) then {
	if ((vehicle player) == player) then {
		if (alive _v) then {
			if ((_v isKindOf "Helicopter") or (_v isKindOf "Air")) then {
				if ((player distance _v) < 7) then {
					if (("ToolKit" in (items player)) or ("ToolKit" in (itemCargo _v))) then {
						_dmgList = getAllHitPointsDamage _v;
						_dmgMax = 0;
						{
							if (_x > _dmgMax) then {
								_dmgMax = _x;
							};
						} forEach (_dmgList select 2);

						if (_dmgMax > 0.64) then {
							_c = true;
						};
					};
				};
			};
		};
	};
};
_c;

private [];
if (!(car_repaired)) then {
	if ((vehicle player) == player) then {
		if (alive _v) then {
			if ((_v isKindOf "Car")) then {
				if ((player distance _v) < 7) then {
					if (("ToolKit" in (items player)) or ("ToolKit" in (itemCargo _v))) then {
						_LFWheel = _v getHitPointDamage "hitLFWheel";
						_RFWheel = _v getHitPointDamage "hitRFWheel";
						_LF2Wheel = _v getHitPointDamage "HitLF2Wheel";
						_RF2Wheel = _v getHitPointDamage "HitRF2Wheel";
						_LMWheel = _v getHitPointDamage "HitLMWheel";
						_RMWheel = _v getHitPointDamage "HitRMWheel";
						_LBWheel = _v getHitPointDamage "HitLBWheel";
						_RBWheel = _v getHitPointDamage "HitRBWheel";
						if ((_LFWheel == 1) || (_RFWheel == 1) || (_LF2Wheel == 1) || (_RF2Wheel == 1) || (_LMWheel == 1) || (_RMWheel == 1) || (_LBWheel == 1) || (_RBWheel == 1)) then {
							_c = true;
						};
					};
				};
			};
		};
	};
};
_c;