/* 
Author: wildw1ng
Contributor: Quiksilver 
*/
[] spawn
{
	while {true} do
	{		
		

//------------------------------------- Launchers
		
		
if ((player hasWeapon "launch_NLAW_F") ||
(player hasWeapon "launch_B_Titan_F") ||
(player hasWeapon "launch_O_Titan_F") ||
(player hasWeapon "launch_I_Titan_F") ||
(player hasWeapon "launch_B_Titan_short_F") ||
(player hasWeapon "launch_O_Titan_short_F") ||
(player hasWeapon "launch_I_Titan_short_F")) then
		{
			

if ((playerSide == west && typeOf player != "B_soldier_LAT_F") || (playerside == east && typeOf player != "O_soldier_LAT_F") || (playerside == resistance && typeOf player != "I_soldier_LAT_F")) then
			{
				


player removeWeapon "launch_NLAW_F";
player removeWeapon "launch_B_Titan_F";
player removeWeapon "launch_O_Titan_F";
player removeWeapon "launch_I_Titan_F";
player removeWeapon "launch_B_Titan_short_F";
player removeWeapon "launch_O_Titan_short_F";
player removeWeapon "launch_I_Titan_short_F";
player globalChat "Только Стрелок[ПТ] может использовать это оружие.";
			};
		};
		
		

//------------------------------------- Sniper Rifles
		
		
if ((player hasWeapon "srifle_GM6_F") ||
(player hasWeapon "srifle_GM6_camo_F") ||
(player hasWeapon "srifle_LRR_F") ||
(player hasWeapon "srifle_LRR_camo_F")) then
		{
			

if ((playerSide == west && typeOf player != "B_sniper_F") || (playerside == east && typeOf player != "O_sniper_F")) then
			{
				


player removeWeapon "srifle_GM6_F";
player removeWeapon "srifle_GM6_camo_F";
player removeWeapon "srifle_LRR_F";
player removeWeapon "srifle_LRR_camo_F";
player globalChat "Только снайперы могут использовать это оружие.";
			};
		};
		sleep 3;
	} foreach allUnits;
};