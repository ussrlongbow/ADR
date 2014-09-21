//Arma3 script. Выкладывает из входящего юнита (если это бобкет) боеприпасы для техники. Родительский скрипт: boxZone.sqf для добавления этого действия пересекающему зону триггера бобкету.
_bobcat1 = _this select 0; // first variable in script arguments is vehicle that spawning ammobox
if (vehicle _bobcat1 isKindof "B_APC_Tracked_01_CRV_F") then 
{
	DeleteVehicle ammo4 ; // only four ammoboxes avalible per map
	ammo4 = ammo3 ; // creates second ammobox variable
	ammo3 = ammo2 ; // creates second ammobox variable
	ammo2 = ammo1 ; // creates second ammobox variable
	_bobcat1 setFuel 0;
	sleep 1;
	_bobcat1 vehiclechat "Готов на 40%";
	sleep 2;
	_bobcat1 vehiclechat "Готов на 75%";
	sleep 3;
	_bobcat1 vehiclechat "Готов на все 100%!";
	ammo1 = "Box_NATO_AmmoVeh_F" createVehicle (position _bobcat1); //creates box at position of externally given vehicle
	_bobcat1 setFuel 1;	
	_bobcat1 removeAction action734;
} else {
	_bobcat1 VehicleChat "В данной машине отсутствует кран для работы с грузом. Используйте Bobcat."; 
	_bobcat1 removeAction aact1;
	}; 
