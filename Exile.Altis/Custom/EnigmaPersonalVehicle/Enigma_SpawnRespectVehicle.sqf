/*
Exile_PersonalVehicles
[_ZEN_] Happydayz
© 2016 Enigma Team
*/

uid = getPlayerUID player;
spawnPos = getposatl player;

if (RespectVehiclesEnabled) then {

diag_log "executing spawnrespectvehicle!";

 if (ExileClientPlayerScore >= (RespectVehicle3 select 2)) then { 

if (player getvariable ["spawnedrspctveh", true]) then {

    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:"],"PLAIN"];




player addAction [ format ["%1  (1 time gift)",RespectVehicle3 select 0], { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(RespectVehicle3 select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {

ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
};

} else { 

if (ExileClientPlayerScore >= (RespectVehicle2 select 2)) then { 
if (player getvariable ["spawnedrspctveh", true]) then {


    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:",_kassa],"PLAIN"];

player addAction [ format ["%1  (1 time gift)",RespectVehicle2 select 0], { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(RespectVehicle2 select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {
  
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};

} else {
if (ExileClientPlayerScore >= (RespectVehicle1 select 2)) then { 


if (player getvariable ["spawnedrspctveh", true]) then {


    5 cutText ["","PLAIN"];
    titleText[format["Choose your vehicle:",_kassa],"PLAIN"];


player addAction [ format ["%1  (1 time gift)",RespectVehicle1 select 0], { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(RespectVehicle1 select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true];
} ];

player addAction [ "Bike (Unlimited)", { 
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
} ];


} else {
  
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};


} else {
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

     		   };
   		 };
	};

} else {
	
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

};