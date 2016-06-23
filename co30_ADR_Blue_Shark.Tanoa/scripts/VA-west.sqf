_uavs = ["B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","B_UGV_01_rcws_F","I_UAV_01_F","I_UAV_02_F","I_UAV_02_CAS_F","I_UGV_01_F","I_UGV_01_rcws_F",
"O_UAV_01_F","O_UAV_02_F","O_UAV_02_CAS_F","O_UGV_01_F","O_UGV_01_rcws_F"];
if ((typeOf cameraOn) in _uavs) exitWith {hint "Арсенал недоступен пока вы подключены к БПЛА/БПА.";};
_myBox = _this select 0;
["AmmoboxInit", [_myBox, false]] call BIS_fnc_arsenal;

//--- Рюкзаки
[_myBox,["B_AssaultPack_Kerry","B_Kitbag_rgr","B_Kitbag_cbr","B_Kitbag_sgg","B_Kitbag_mcamo","B_ViperLightHarness_ghex_F","B_ViperLightHarness_oli_F","B_ViperLightHarness_khk_F","B_ViperLightHarness_blk_F","B_ViperLightHarness_hex_F","B_ViperHarness_ghex_F","B_ViperHarness_oli_F","B_ViperHarness_khk_F","B_ViperHarness_blk_F","B_ViperHarness_hex_F","B_Bergen_tna_F","B_Bergen_dgtl_F","B_Bergen_hex_F","B_Bergen_mcamo_F","B_Carryall_cbr","B_Carryall_oucamo","B_Carryall_oli","B_Carryall_khk","B_Carryall_ocamo","B_Carryall_mcamo","B_HMG_01_support_high_F","B_AA_01_weapon_F","B_UAV_01_backpack_F","B_Static_Designator_01_weapon_F","B_Carryall_ghex_F","B_TacticalPack_rgr","B_TacticalPack_oli","B_TacticalPack_blk","B_TacticalPack_ocamo","B_TacticalPack_mcamo","B_Parachute","B_AssaultPack_rgr","B_AssaultPack_cbr","B_AssaultPack_sgg","B_AssaultPack_tna_F","B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_blk","B_AssaultPack_ocamo","B_AssaultPack_mcamo","B_FieldPack_oucamo","B_FieldPack_ghex_F","B_FieldPack_cbr","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oli","B_FieldPack_khk"],true] call BIS_fnc_addVirtualBackpackCargo;

[_myBox,[
//--- Шлемы, кепки
"H_MilCap_gry","H_MilCap_gen_F","H_MilCap_ghex_F","H_MilCap_blue","H_MilCap_tna_F","H_MilCap_ocamo","H_MilCap_mcamo","H_MilCap_dgtl","H_Bandanna_cbr","H_Bandanna_khk_hs","H_Bandanna_camo","H_Bandanna_sand","H_Bandanna_sgg","H_Bandanna_surfer","H_Bandanna_surfer_grn","H_Bandanna_surfer_blk","H_Bandanna_blu","H_Bandanna_khk","H_Bandanna_gry","H_Bandanna_mcamo","H_Beret_gen_F","H_Beret_blk","H_Beret_02","H_Beret_Colonel","H_Cap_oli_hs","H_Cap_marshal","H_Cap_headphones","H_Cap_khaki_specops_UK","H_Cap_usblack","H_Cap_tan_specops_US","H_Cap_grn","H_Cap_tan","H_Cap_red","H_Cap_oli","H_Cap_police","H_Cap_press","H_Cap_surfer","H_Cap_blu","H_Cap_blk","H_Cap_grn_BI","H_Cap_blk_CMMG","H_Cap_blk_ION","H_Cap_blk_Raven","H_Cap_brn_SPECOPS","H_HelmetB_light","H_HelmetB_light_snakeskin","H_HelmetB_light_sand","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_Light_tna_F","H_HelmetB_light_black","H_PilotHelmetFighter_B","H_PilotHelmetFighter_I","H_PilotHelmetFighter_O","H_HelmetIA","H_StrawHat","H_StrawHat_dark","H_HelmetCrew_O_ghex_F","H_HelmetCrew_B","H_HelmetCrew_I","H_HelmetCrew_O","H_HelmetSpecB","H_HelmetSpecB_snakeskin","H_HelmetSpecB_sand","H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetB_Enh_tna_F","H_HelmetSpecB_blk","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_cbr","H_Watchcap_khk","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive","H_Shemag_olive_hs","H_PilotHelmetHeli_B","H_PilotHelmetHeli_I","H_PilotHelmetHeli_O","H_CrewHelmetHeli_B","H_CrewHelmetHeli_I","H_CrewHelmetHeli_O","H_Hat_tan","H_Hat_camo","H_Hat_checker","H_Hat_brown","H_Hat_grey","H_Hat_blue","H_HelmetB","H_HelmetB_snakeskin","H_HelmetB_camo","H_HelmetB_sand","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_tna_F","H_HelmetB_black","H_Booniehat_khk_hs","H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_tna_F","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_dgtl",
//--- Жилеты
"V_PlateCarrier_Kerry","V_BandollierB_oli","V_BandollierB_blk","V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG","V_PlateCarrierGL_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_TacVest_gen_F","V_Press_F","V_TacVestIR_blk","V_BandollierB_ghex_F","V_BandollierB_rgr","V_BandollierB_cbr","V_PlateCarrier1_rgr","V_Chestrig_rgr","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier1_tna_F","V_PlateCarrier1_blk","V_HarnessOGL_brn","V_Chestrig_oli","V_Chestrig_blk","V_HarnessO_brn","V_PlateCarrierGL_tna_F","V_PlateCarrier2_rgr_noflag_F","V_PlateCarrier2_tna_F","V_PlateCarrier2_rgr","V_PlateCarrier2_blk","V_RebreatherIA","V_RebreatherIR","V_RebreatherB","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_tna_F","V_HarnessOGL_ghex_F","V_I_G_resistanceLeader_F","V_HarnessO_ghex_F","V_TacVest_camo","V_TacVest_brn","V_TacVest_oli","V_TacVest_blk_POLICE","V_TacVest_blk","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_Rangemaster_belt","V_PlateCarrierIAGL_oli","V_PlateCarrierIAGL_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl",
//--- Очки
"G_Aviator","G_Balaclava_blk","G_balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","G_Combat","G_Diving","G_Lowprofile","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Spectacles","G_Spectacles_Tinted","G_Sport_Blackred","G_Sport_Blackyellow","G_Sport_Checkered","G_Sport_Greenblack","G_Sport_Red","G_Squares","G_Squares_Tinted","G_Tactical_Black","G_Tactical_Clear",
//--- Одежда
"U_I_G_resistanceLeader_F","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CTRG_3","U_B_CTRG_1","U_B_CTRG_2","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_5_F","U_I_Wetsuit","U_B_CTRG_Soldier_urb_1_F","U_B_CTRG_Soldier_urb_3_F","U_B_CTRG_Soldier_urb_2_F","U_B_HeliPilotCoveralls","U_I_HeliPilotCoveralls","U_O_PilotCoveralls","U_Competitor","U_OrestesBody","U_B_PilotCoveralls","U_I_pilotCoveralls","U_C_Man_casual_4_F","U_C_Man_casual_5_F","U_C_Man_casual_6_F","U_B_T_FullGhillie_tna_F","U_O_T_FullGhillie_tna_F","U_B_FullGhillie_ard","U_I_FullGhillie_ard","U_O_FullGhillie_ard","U_B_FullGhillie_lsh","U_I_FullGhillie_lsh","U_O_FullGhillie_lsh","U_B_FullGhillie_sard","U_I_FullGhillie_sard","U_O_FullGhillie_sard","U_B_GhillieSuit","U_I_GhillieSuit","U_O_GhillieSuit","U_O_T_Sniper_F","U_B_T_Sniper_F","U_O_Wetsuit","U_B_Wetsuit","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","U_B_survival_uniform","U_C_Journalist","U_Marshal","U_C_Scientist","U_C_HunterBody_grn","U_C_WorkerCoveralls","U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F","U_B_CTRG_Soldier_2_F","U_C_man_sport_2_F","U_C_man_sport_1_F","U_C_man_sport_3_F","U_B_GEN_Soldier_F","U_B_GEN_Commander_F","U_Rangemaster","U_B_T_Soldier_SL_F","U_B_CombatUniform_mcam_vest","U_I_C_Soldier_Camo_F","U_C_Poloshirt_redwhite","U_C_Poloshirt_burgundy","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_BG_Guerrilla_6_1","U_BG_leader","U_BG_Guerilla1_1","U_BG_Guerilla2_3","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla3_1","U_C_Man_casual_3_F","U_C_Man_casual_2_F","U_C_Man_casual_1_F","U_I_CombatUniform_shortsleeve","U_B_T_Soldier_F","U_B_T_Soldier_AR_F","U_I_CombatUniform","U_I_OfficerUniform","U_I_G_Story_Protagonist_F","U_C_Poor_1","U_B_CombatUniform_mcam_worn","U_B_Protagonist_VR","U_I_Protagonist_VR","U_O_Protagonist_VR",
//--- Прицелы, глушители
"muzzle_snds_H_MG","muzzle_snds_338_green","muzzle_snds_338_sand","muzzle_snds_338_black","muzzle_snds_acp","muzzle_snds_M","muzzle_snds_58_wdm_F","muzzle_snds_58_blk_F","muzzle_snds_H","muzzle_snds_H_khk_F","muzzle_snds_B","muzzle_snds_L","muzzle_snds_93mmg_tan","muzzle_snds_93mmg","optic_Holosight","acc_pointer_IR","optic_KHS_hex","optic_KHS_tan","optic_KHS_old","optic_KHS_blk","optic_Holosight_smg","muzzle_snds_65_TI_ghex_F","muzzle_snds_65_TI_blk_F","muzzle_snds_65_TI_hex_F","bipod_01_F_mtp","bipod_02_F_hex","bipod_02_F_tan","bipod_03_F_oli","bipod_01_F_snd","bipod_01_F_khk","bipod_01_F_blk","bipod_03_F_blk","bipod_02_F_blk","acc_flashlight","optic_MRCO","optic_Yorris","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","optic_AMS_snd","optic_AMS_khk","optic_AMS","optic_Arco","optic_Arco_ghex_F","optic_Arco_blk_F","optic_DMS","optic_DMS_ghex_F","optic_ERCO_snd_F","optic_ERCO_khk_F","optic_ERCO_blk_F","optic_LRPS","optic_LRPS_ghex_F","optic_LRPS_tna_F","optic_Holosight_khk_F","optic_Holosight_blk_F","optic_Holosight_smg_blk_F","optic_SOS","optic_SOS_khk_F","optic_MRD","optic_NVS","optic_Hamr","optic_Hamr_khk_F","muzzle_snds_m_khk_F","muzzle_snds_m_snd_F","muzzle_snds_H_snd_F","muzzle_snds_B_khk_F","muzzle_snds_B_snd_F","muzzle_snds_H_MG_blk_F","muzzle_snds_H_MG_khk_F","optic_tws_mg",
//--- Вещи
"MineDetector","Laserbatteries","Medikit","Binocular","Rangefinder","ItemMap","O_NVGoggles_urb_F","O_NVGoggles_ghex_F","O_NVGoggles_hex_F","ItemCompass","Laserdesignator_02_ghex_F","Laserdesignator_03","Laserdesignator","Laserdesignator_01_khk_F","Laserdesignator_02","ToolKit","NVGoggles_tna_F","ItemRadio","B_UavTerminal","ItemWatch","NVGoggles_INDEP","NVGoggles","NVGoggles_OPFOR","FirstAidKit","NVGogglesB_grn_F","NVGogglesB_gry_F","NVGogglesB_blk_F","ItemGPS"
],true] call BIS_fnc_addVirtualItemCargo;

//--- Патроны
[_myBox,["6Rnd_GreenSignal_F","6Rnd_RedSignal_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","200Rnd_556x45_Box_F","200Rnd_556x45_Box_Red_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_Green_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_Green_F","Titan_AA","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","200Rnd_556x45_Box_Tracer_F","200Rnd_556x45_Box_Tracer_Red_F","200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box_Tracer","130Rnd_338_Mag","150Rnd_93x64_Mag","30Rnd_45ACP_Mag_SMG_01_Tracer_Green","10Rnd_50BW_Mag_F","10Rnd_127x54_Mag","10Rnd_762x54_Mag","10Rnd_93x64_DMR_05_Mag","100Rnd_580x42_Mag_F","100Rnd_580x42_Mag_Tracer_F","10Rnd_338_Mag","11Rnd_45ACP_Mag","150Rnd_556x45_Drum_Mag_F","150Rnd_556x45_Drum_Mag_Tracer_F","16Rnd_9x21_yellow_Mag","16Rnd_9x21_green_Mag","16Rnd_9x21_red_Mag","16Rnd_9x21_Mag","20Rnd_650x39_Cased_Mag_F","30Rnd_580x42_Mag_F","30Rnd_556x45_Stanag_Tracer_Yellow","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_red","30Rnd_9x21_Mag_SMG_02_Tracer_Yellow","30Rnd_9x21_Yellow_Mag","30Rnd_9x21_Green_Mag","30Rnd_9x21_Mag_SMG_02_Tracer_Green","30Rnd_9x21_Mag_SMG_02_Tracer_Red","30Rnd_9x21_Red_Mag","30Rnd_545x39_Mag_Tracer_F","30Rnd_545x39_Mag_Tracer_Green_F","30Rnd_580x42_Mag_Tracer_F","30Rnd_762x39_Mag_Tracer_F","30Rnd_762x39_Mag_Tracer_Green_F","5Rnd_127x108_APDS_Mag","9Rnd_45ACP_Mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag_Tracer","20Rnd_556x45_UW_mag","20Rnd_762x51_Mag","30Rnd_65x39_caseless_green","30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow","30Rnd_45ACP_Mag_SMG_01_Tracer_Red","5Rnd_127x108_Mag","30Rnd_65x39_caseless_mag","30Rnd_45ACP_Mag_SMG_01","30Rnd_9x21_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_65x39_caseless_green_mag_Tracer","30Rnd_65x39_caseless_mag_Tracer","7Rnd_408_Mag","UGL_FlareCIR_F","UGL_FlareWhite_F","UGL_FlareYellow_F","UGL_FlareGreen_F","UGL_FlareRed_F","RPG32_F","NLAW_F","RPG7_F","RPG32_HE_F","Titan_AT","6Rnd_45ACP_Cylinder","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_UGL_FlareCIR_F","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"],true] call BIS_fnc_addVirtualMagazineCargo;

//--- Оружие
[_myBox,["arifle_Mk20_plain_F","arifle_Mk20_F","arifle_Mk20_Holo_F","arifle_Mk20_pointer_F","arifle_Mk20_MRCO_F","arifle_Mk20_MRCO_pointer_F","arifle_Mk20_ACO_F","arifle_Mk20_ACO_pointer_F","arifle_Mk20_MRCO_plain_F","arifle_Mk20_GL_plain_F","arifle_Mk20_GL_F","arifle_Mk20_GL_MRCO_pointer_F","arifle_Mk20_GL_ACO_F","arifle_Mk20C_plain_F","arifle_Mk20C_F","arifle_Mk20C_ACO_F","arifle_Mk20C_ACO_pointer_F","launch_RPG32_F","hgun_Pistol_Signal_F","hgun_Pistol_01_F","SMG_01_F","SMG_01_Holo_F","SMG_01_Holo_pointer_snds_F","SMG_01_ACO_F","hgun_Rook40_F","hgun_Rook40_snds_F","LMG_Zafir_F","LMG_Zafir_pointer_F","LMG_Zafir_ARCO_F","arifle_Katiba_C_F","arifle_Katiba_C_ACO_F","arifle_Katiba_C_ACO_pointer_F","arifle_Katiba_C_ACO_pointer_snds_F","arifle_Katiba_GL_F","arifle_Katiba_GL_ACO_F","arifle_Katiba_GL_ACO_pointer_F","arifle_Katiba_GL_ACO_pointer_snds_F","arifle_Katiba_GL_ARCO_pointer_F","arifle_Katiba_F","arifle_Katiba_pointer_F","arifle_Katiba_ACO_F","arifle_Katiba_ACO_pointer_F","arifle_Katiba_ACO_pointer_snds_F","arifle_Katiba_ARCO_F","arifle_Katiba_ARCO_pointer_F","arifle_Katiba_ARCO_pointer_snds_F","srifle_DMR_01_F","srifle_DMR_01_MRCO_F","srifle_DMR_01_ACO_F","srifle_DMR_01_ARCO_F","srifle_DMR_01_DMS_F","srifle_DMR_01_DMS_snds_F","srifle_DMR_01_DMS_snds_BI_F","srifle_DMR_01_DMS_BI_F","srifle_DMR_01_SOS_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_snds_F","hgun_Pistol_heavy_01_MRD_F","hgun_ACPC2_F","hgun_ACPC2_snds_F","arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_AKS_F","srifle_DMR_04_Tan_F","srifle_DMR_04_F","srifle_DMR_04_MRCO_F","srifle_DMR_04_ACO_F","srifle_DMR_04_ARCO_F","srifle_DMR_04_DMS_F","srifle_DMR_04_SOS_F","arifle_CTAR_ghex_F","arifle_CTAR_blk_F","arifle_CTAR_blk_Pointer_F","arifle_CTAR_blk_ACO_Pointer_F","arifle_CTAR_blk_ACO_F","arifle_CTAR_blk_ACO_Pointer_Snds_F","arifle_CTAR_blk_ARCO_F","arifle_CTAR_blk_ARCO_Pointer_F","arifle_CTAR_blk_ARCO_Pointer_Snds_F","arifle_CTAR_hex_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTAR_GL_blk_ACO_F","arifle_CTAR_GL_blk_ACO_Pointer_Snds_F","arifle_CTAR_GL_hex_F","arifle_CTARS_ghex_F","arifle_CTARS_blk_F","arifle_CTARS_blk_Pointer_F","arifle_CTARS_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_07_blk_F","srifle_DMR_07_blk_DMS_F","srifle_DMR_07_blk_DMS_Snds_F","srifle_DMR_07_hex_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_05_blk_F","srifle_DMR_05_KHS_LP_F","srifle_DMR_05_MRCO_F","srifle_DMR_05_ACO_F","srifle_DMR_05_ARCO_F","srifle_DMR_05_DMS_F","srifle_DMR_05_DMS_snds_F","srifle_DMR_05_SOS_F","srifle_GM6_camo_F","srifle_GM6_camo_LRPS_F","srifle_GM6_camo_SOS_F","srifle_GM6_F","srifle_GM6_LRPS_F","srifle_GM6_SOS_F","srifle_GM6_ghex_F","srifle_GM6_ghex_LRPS_F","LMG_03_F","srifle_LRR_F","srifle_LRR_LRPS_F","srifle_LRR_SOS_F","srifle_LRR_camo_F","srifle_LRR_camo_LRPS_F","srifle_LRR_camo_SOS_F","srifle_LRR_tna_F","srifle_LRR_tna_LRPS_F","srifle_DMR_02_camo_F","srifle_DMR_02_camo_AMS_LP_F","srifle_DMR_02_sniper_F","srifle_DMR_02_sniper_AMS_LP_S_F","srifle_DMR_02_F","srifle_DMR_02_MRCO_F","srifle_DMR_02_ACO_F","srifle_DMR_02_ARCO_F","srifle_DMR_02_DMS_F","srifle_DMR_02_SOS_F","srifle_DMR_03_multicam_F","srifle_DMR_03_woodland_F","srifle_DMR_03_tan_F","srifle_DMR_03_tan_AMS_LP_F","srifle_DMR_03_khaki_F","srifle_DMR_03_F","srifle_DMR_03_MRCO_F","srifle_DMR_03_ACO_F","srifle_DMR_03_AMS_F","srifle_DMR_03_ARCO_F","srifle_DMR_03_DMS_F","srifle_DMR_03_DMS_snds_F","srifle_DMR_03_SOS_F","srifle_DMR_06_camo_F","srifle_DMR_06_camo_khs_F","srifle_DMR_06_olive_F","srifle_EBR_F","srifle_EBR_MRCO_pointer_F","srifle_EBR_MRCO_LP_BI_F","srifle_EBR_ACO_F","srifle_EBR_ARCO_pointer_F","srifle_EBR_ARCO_pointer_snds_F","srifle_EBR_DMS_F","srifle_EBR_DMS_pointer_snds_F","srifle_EBR_SOS_F","srifle_EBR_Hamr_pointer_F","LMG_Mk200_F","LMG_Mk200_pointer_F","LMG_Mk200_LP_BI_F","LMG_Mk200_BI_F","LMG_Mk200_MRCO_F","arifle_MX_GL_F","arifle_MX_GL_khk_F","arifle_MX_GL_khk_ACO_F","arifle_MX_GL_khk_Holo_Pointer_Snds_F","arifle_MX_GL_khk_Hamr_Pointer_F","arifle_MX_GL_Black_F","arifle_MX_GL_Black_Hamr_pointer_F","arifle_MX_GL_Holo_pointer_snds_F","arifle_MX_GL_ACO_F","arifle_MX_GL_ACO_pointer_F","arifle_MX_GL_Hamr_pointer_F","arifle_MX_F","arifle_MX_khk_F","arifle_MX_khk_Pointer_F","arifle_MX_khk_ACO_Pointer_F","arifle_MX_khk_ACO_Pointer_Snds_F","arifle_MX_khk_Holo_Pointer_F","arifle_MX_khk_Hamr_Pointer_F","arifle_MX_khk_Hamr_Pointer_Snds_F","arifle_MX_Black_F","arifle_MX_Black_Hamr_pointer_F","arifle_MX_Holo_pointer_F","arifle_MX_pointer_F","arifle_MX_ACO_F","arifle_MX_ACO_pointer_F","arifle_MX_ACO_pointer_snds_F","arifle_MX_Hamr_pointer_F","arifle_MX_RCO_pointer_snds_F","arifle_MX_SW_khk_Pointer_F","arifle_MX_SW_khk_F","arifle_MX_SW_Black_F","arifle_MX_SW_Black_Hamr_pointer_F","arifle_MX_SW_pointer_F","arifle_MX_SW_F","arifle_MX_SW_Hamr_pointer_F","arifle_MXC_F","arifle_MXC_khk_F","arifle_MXC_khk_Holo_Pointer_F","arifle_MXC_khk_ACO_F","arifle_MXC_khk_ACO_Pointer_Snds_F","arifle_MXC_Black_F","arifle_MXC_Holo_F","arifle_MXC_Holo_pointer_snds_F","arifle_MXC_Holo_pointer_F","arifle_MXC_ACO_F","arifle_MXC_ACO_pointer_F","arifle_MXC_ACO_pointer_snds_F","arifle_MXC_SOS_point_snds_F","arifle_MXM_F","arifle_MXM_khk_F","arifle_MXM_khk_MOS_Pointer_Bipod_F","arifle_MXM_Black_F","arifle_MXM_RCO_pointer_snds_F","arifle_MXM_DMS_F","arifle_MXM_DMS_LP_BI_snds_F","arifle_MXM_SOS_pointer_F","arifle_MXM_Hamr_pointer_F","arifle_MXM_Hamr_LP_BI_F","MMG_01_hex_F","MMG_01_hex_ARCO_LP_F","MMG_01_tan_F","hgun_P07_F","hgun_P07_khk_F","hgun_P07_snds_F","launch_NLAW_F","hgun_PDW2000_F","hgun_PDW2000_snds_F","hgun_PDW2000_Holo_F","hgun_PDW2000_Holo_snds_F","SMG_05_F","launch_RPG32_ghex_F","launch_RPG7_F","arifle_SDAR_F","arifle_SPAR_01_snd_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_02_snd_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_blk_F","arifle_SPAR_03_snd_F","arifle_SPAR_03_khk_F","arifle_SPAR_03_blk_F","MMG_02_sand_F","MMG_02_sand_RCO_LP_F","MMG_02_black_F","MMG_02_black_RCO_BI_F","MMG_02_camo_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F","launch_O_Titan_F","launch_O_Titan_ghex_F","launch_B_Titan_F","launch_B_Titan_tna_F","launch_I_Titan_F","launch_O_Titan_short_ghex_F","launch_O_Titan_short_F","launch_I_Titan_short_F","launch_B_Titan_short_F","launch_B_Titan_short_tna_F","arifle_TRG20_F","arifle_TRG20_Holo_F","arifle_TRG20_ACO_F","arifle_TRG20_ACO_pointer_F","arifle_TRG20_ACO_Flash_F","arifle_TRG21_F","arifle_TRG21_MRCO_F","arifle_TRG21_ACO_pointer_F","arifle_TRG21_ARCO_pointer_F","arifle_TRG21_GL_F","arifle_TRG21_GL_MRCO_F","arifle_TRG21_GL_ACO_pointer_F","arifle_ARX_ghex_F","arifle_ARX_blk_F","arifle_ARX_hex_F","hgun_Pistol_heavy_02_F","hgun_Pistol_heavy_02_Yorris_F"],true] call BIS_fnc_addVirtualWeaponCargo;
