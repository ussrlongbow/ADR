private ["_v", "_damageArray", "_k", "_time", "_timeAll", "_LFWheel", "_RFWheel", "_LF2Wheel", "_RF2Wheel", "_LMWheel", "_RMWheel", "_LBWheel", "_RBWheel", "_amount", "_vehicle_repairing"];
_v = cursorTarget;
_k = 0.64;
_time = 0;
_timeAll = 30;

_LFWheel = _v getHitPointDamage "hitLFWheel";
_RFWheel = _v getHitPointDamage "hitRFWheel";
_LF2Wheel = _v getHitPointDamage "HitLF2Wheel";
_RF2Wheel = _v getHitPointDamage "HitRF2Wheel";
_LMWheel = _v getHitPointDamage "HitLMWheel";
_RMWheel = _v getHitPointDamage "HitRMWheel";
_LBWheel = _v getHitPointDamage "HitLBWheel";
_RBWheel = _v getHitPointDamage "HitRBWheel";

if ((_LFWheel) == 1) then {_time = _time + _timeAll};
if ((_RFWheel) == 1) then {_time = _time + _timeAll};
if ((_LF2Wheel) == 1) then {_time = _time + _timeAll};
if ((_RF2Wheel) == 1) then {_time = _time + _timeAll};
if ((_LMWheel) == 1) then {_time = _time + _timeAll};
if ((_RMWheel) == 1) then {_time = _time + _timeAll};
if ((_LBWheel) == 1) then {_time = _time + _timeAll};
if ((_RBWheel) == 1) then {_time = _time + _timeAll};

if (_time > 0) then {
	_vehicle_repairing = true;
	systemChat format ["Повреждено %1 колес(а). Время полевого ремонта составит: %2 секунд.", _time/30, _time]; 
} else {systemChat format ["Все колеса на месте"]; _vehicle_repairing = false};

while {_vehicle_repairing} do {
	scopeName "main";
	car_repaired = true;
	player playAction "MedicStartRightSide";
	while {(_time > 0)} do {
		sleep 1;
		_time = _time - 1;
		if ((!(alive player)) or ((player distance _v) > 7) or (vehicle player != player) or ((speed _v) > 3) or ((speed player) > 1) or (!(alive _v))) then {
			car_repaired = false;
			breakTo "main";
		};

		systemChat format ["%1",_time];
		if (_time == 0) then {
			systemChat "Полевой ремонт завершен.";
			_v setHitPointDamage ["hitLFWheel", _k];
			_v setHitPointDamage ["hitRFWheel", _k];
			_v setHitPointDamage ["HitLF2Wheel", _k];
			_v setHitPointDamage ["HitRF2Wheel", _k];
			_v setHitPointDamage ["HitLMWheel", _k];
			_v setHitPointDamage ["HitRMWheel", _k];
			_v setHitPointDamage ["HitLBWheel", _k];
			_v setHitPointDamage ["HitRBWheel", _k];
			_vehicle_repairing = false;
			[] spawn {
				sleep 30;
				car_repaired = false;
			};
		};
	};
	if (!car_repaired) then {
	_vehicle_repairing = false;
	systemChat format["Полевой ремонт прерван."];
	};
};