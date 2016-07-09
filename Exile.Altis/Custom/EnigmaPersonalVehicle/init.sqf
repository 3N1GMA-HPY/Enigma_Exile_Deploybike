/*
Exile_PersonalVehicles
[_ZEN_] Happydayz
© 2016 Enigma
*/

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////Custom Settings//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

RespectVehiclesEnabled = false; //if false only spawn bikes!
EnigmaGetinVeh = true; //if true player is moved into vehicle on spawn
DisableinSafezone = true; //Disables spawning of respect vehicles in safezone


DefaultVehicle = ["Bike","Exile_Bike_MountainBike"]; //Note if you change this default vehicle here you must manually change it in the server pbo as well!
RespectVehicle1 = ["Quad","Exile_Bike_QuadBike_Black",10000];
RespectVehicle2 = ["Hatchback","Exile_Car_Hatchback_Green",20000];
RespectVehicle3 = ["Offroad","Exile_Car_Offroad_Red",30000];

                  //Name, Classname, Amount of respect to spawn

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////Server Settings//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


if (!hasInterface && isServer) then {

diag_log "Server is setting up the Enigma Personal Vehicle Spawner!";

PersonalVehicle_cache = [];
PersonalVehicle_cache = [["00000000000000000", objNull, -1, "", -1]];

SpawnedVehChk_cache = [];
SpawnedVehChk_cache = [["00000000000000000", 0]]; 

};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////Client Settings//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


if (!isDedicated) then {

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////EventHandlers//////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


  "PlayerSpawnVehicleChk" addPublicVariableEventHandler {
    
   _packet = _this select 1;  
   _PersonalVehicle = _packet select 0;
   _msg = _packet select 1;

   _PackupVehicleAction = _PersonalVehicle addaction [("<t color=""#00CF11"">" + ("Packup Vehicle") +"</t>"),"Custom\EnigmaPersonalVehicle\Enigma_PackupVehicle.sqf","",-97,false,false,"",""]; 

  _vehdir = [player,_PersonalVehicle] call BIS_fnc_dirTo;
  player setDir _vehdir;

    if (isNil "PersonalVehicleAddactionChk") then {
    PersonalVehicleAddactionChk = True;
      };

      if (EnigmaGetinVeh) then
      {
        player action ["getInDriver",_PersonalVehicle];
      };


    };

  "PlayerSpawnVehicleMsg" addPublicVariableEventHandler {
   
   _packet = _this select 1;  
   _msg = _packet select 0;

    systemChat _msg;
    };

      "PlayerPackVehicleChk" addPublicVariableEventHandler {
   
   _packet = _this select 1;  
   _PersonalVehicle = _packet select 0;
    player reveal _PersonalVehicle;
    deleteVehicle _PersonalVehicle;
    deleteVehicle personalVehicle; //because sometimes armasucks....
    PersonalVehicleAddactionChk = nil;

    };


  "PlayerSpawnVehicleIdentify" addPublicVariableEventHandler {
 
   _packet = _this select 1;  
   _PersonalVehicle = _packet select 0;


  if (isNil "PersonalVehicleAddactionChk") then {
  PersonalVehicleAddactionChk = True;
  _PackupVehicleAction = _PersonalVehicle addaction [("<t color=""#00CF11"">" + ("Packup Vehicle") +"</t>"),"Custom\EnigmaPersonalVehicle\Enigma_PackupVehicle.sqf","",-97,false,false,"",""]; 
  };

  _vehdir = [player,_PersonalVehicle] call BIS_fnc_dirTo;
  player setDir _vehdir;

  player reveal _PersonalVehicle;

  _distance = player distance _PersonalVehicle;
  _distance = round(_distance);
  systemChat Format ["You have already unpacked your vehicle! It is %1m away",_distance];
  };



  "PlayerSpawnVehicleRespectChk" addPublicVariableEventHandler {

//diag_log "executing Eventhandler!";
Private ["_respectvehiclechk","_packet"];
   _packet = _this select 1;  
   _respectvehiclechk = _packet select 0; 

//diag_log format ["eventhandler vehicle check = %1",_respectvehiclechk];
uid = getPlayerUID player;
spawnPos = getposatl player;

if (DisableinSafezone) then
{
  if (ExilePlayerInSafezone) exitWith {};
};
if !(_respectvehiclechk == 1) then { 
execVM "Custom\EnigmaPersonalVehicle\Enigma_SpawnRespectVehicle.sqf"; 
} else {
ENIGMA_SpawnVehicleChk = [player,spawnPos,(DefaultVehicle select 1),1,"",uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChk";

    };
  }; 
};