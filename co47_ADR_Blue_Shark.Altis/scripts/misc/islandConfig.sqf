/*
@filename: islandConfig.sqf
Author:

	Quiksilver
	
Notes:

	WIP
	Configure the island for the mission.
	"Land_Airport_Tower_ruins_F"
	"Land_LampAirport_F"
	[14520,16705,18]
	_annoyingLamp1 = [0,0,0] nearestObject 529331;
	_annoyingLamp2 = [0,0,0] nearestObject 493984;];

the below doesnt seem to work in MP as of ArmA 1.18.

_ruins1 = nearestObject [[14520,16705,18],"Land_Airport_Tower_ruins_F"];		
deleteVehicle _ruins1;

______________________________________________________________________*/

private ["_airTower","_urbanMarkers","_uav1Hangar","_uav2Hangar","_ugvHangar","_jetHangar"];

_urbanMarkers =["sm1","sm2","sm3","sm4","sm5","sm6","sm7","sm8","sm9","sm10","sm11","sm12","sm13","sm14","sm15","sm16","sm17","sm18","sm19","sm20","sm21","sm22","sm23","sm24","sm25","sm26","sm27","sm28","sm29","sm30","sm31","sm32","sm33","sm34","sm35","sm36","sm37","sm38","sm39", "sm40", "sm41", "sm42", "sm43", "sm44", "sm45", "sm46", "sm47", "sm48", "sm49", "sm50", "sm51", "sm52", "sm53", "sm54", "sm55", "sm56", "sm57", "sm58", "sm59", "sm60", "sm61", "sm62", "sm63", "sm64", "sm65", "sm66", "sm67", "sm68", "sm69", "sm70", "sm71"];
{ _x setMarkerAlpha 0; } count _urbanMarkers;

/*---------- Delete the airport tower beside terminal building

sleep 10;

_airTower = [14520,16705,18] nearestObject 523286;
{ _x setDamage 1 } forEach [_airTower];
*\

sleep 1;

//======= preserve these buildings
/* doesn't work in MP environment .. thanks BIS
_uav1Hangar = [14342,16294,20] nearestObject 524211; 
_uav2Hangar = [14342,16294,20] nearestObject 524212;
_ugvHangar = [14342,16294,20] nearestObject 524433;
_jetHangar = [14342,16294,20] nearestObject 526049;

{ _x allowDamage false; } forEach [_uav1Hangar,_uav2Hangar,_ugvHangar,_jetHangar];
*/
sleep 1;

crossroad disableAI "ANIM";

enemyCasArray = [];
enemyCasGroup = createGroup east; 
sleep 0.1; 
deleteGroup enemyCasGroup;