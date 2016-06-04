/*
Exile_PersonalVehicles
[_ZEN_] Happydayz
© 2016 Enigma Team
*/

uid = getPlayerUID player;
spawnPos = getposatl player;

if (RespectVehiclesEnabled) then {

diag_log "executing spawnrespectvehicle!";

 if (ExileClientPlayerScore >= OffRoadRespect) then { 

if (player getvariable ["spawnedrspctveh", true]) then {

    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:"],"PLAIN"];

player addAction [ "Offroad (1 time gift)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Car_Offroad_Red",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {

ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
};

} else { 

if (ExileClientPlayerScore >= HatchBackRespect) then { 
if (player getvariable ["spawnedrspctveh", true]) then {


    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:",_kassa],"PLAIN"];

player addAction [ "Hatchback (1 time gift)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Car_Hatchback_Green",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {
  
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};

} else {
if (ExileClientPlayerScore >= ATVRespect) then { 


if (player getvariable ["spawnedrspctveh", true]) then {


    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:",_kassa],"PLAIN"];


player addAction [ "Quadbike (1 time gift)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_QuadBike_Black",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {
  
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};


} else {
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

     		   };
   		 };
	};

} else {
	
ENIGMA_SpawnVehicleChk = [player,spawnPos,"Exile_Bike_MountainBike",1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};