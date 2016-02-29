/*
Exile_PersonalVehicles.sqf
[_ZEN_] Happydayz
© 2016 Enigma Team
*/

Private ["_ind2","_respectvehicleused","_respectvehicle","_storedvehClassName","_uid","_spawnnolongerallowed","_ind","_player","_spawnPos","_enigma_vehClassName","_packunpackvalue","_playerID","_spawnallowed","_clientID","_personalVehicle","_veh","_personalVehicle"];


_player = _this select 0;
_spawnPos = _this select 1;
_enigma_vehClassName = _this select 2;
_packunpackvalue = _this select 3;
_personalVehicle = _this select 4;
_uid = getPlayerUID _player;
_playerID = _uid;
_veh = objNull;
_spawnallowed = 1;
_storedvehClassName = "";
_respectvehicleused = 0;
_clientID = owner _player;
_ind = ((count PersonalVehicle_cache) - 1);

{   
    if (_playerID in _x) then {
        _veh = _x select 1;
        _spawnallowed = _x select 2;
        _storedvehClassName = _x select 3;
        _respectvehicleused = _x select 4;
        _ind = _forEachIndex;
    };
} forEach PersonalVehicle_cache;        

if !(_enigma_vehClassName == "Exile_Bike_MountainBike") then {

_ind2 = ((count SpawnedVehChk_cache) - 1);

{   
    if (_uid in _x) then {
        _ind2 = _forEachIndex;
    };
} forEach SpawnedVehChk_cache;   

 SpawnedVehChk_cache set [_ind2, [_uid, 1]]; 
};

if (!alive _veh) then {
    _spawnallowed = 1;
};


if (_packunpackvalue == 1) then {

    if (_spawnallowed == 1) then {

        _msg = "Your Personal Vehicle has been spawned!";

if ((_storedvehClassName == _enigma_vehClassName) && (_respectvehicleused == 1)) then {
    _enigma_vehClassName = "Exile_Bike_MountainBike";
    _msg = "You have already spawned your Bonus Respect Vehicle. Reverting to Bike!";
};
        _respectvehicle = 1;
        _spawnnolongerallowed = 0;    
        _vehObj = _enigma_vehClassName createVehicle _spawnPos;

        PersonalVehicle_cache set [_ind, [_playerID, _vehObj, _spawnnolongerallowed, _enigma_vehClassName, _respectvehicle]]; 

        _player reveal _vehObj; 

        PlayerSpawnVehicleChk = [_vehObj]; 
        _clientID publicVariableClient "PlayerSpawnVehicleChk";

        PlayerSpawnVehicleMsg = [_msg]; 
        _clientID publicVariableClient "PlayerSpawnVehicleMsg";

        };


if (_spawnallowed == 0) then {
PlayerSpawnVehicleIdentify = [_veh];  
_clientID publicVariableClient "PlayerSpawnVehicleIdentify";
    };
};

if (_packunpackvalue == 0) then {

    _msg = "Your Personal Vehicle has been packed up!";

    PlayerPackVehicleChk = [_veh]; 
    _clientID publicVariableClient "PlayerPackVehicleChk";

    PlayerSpawnVehicleMsg = [_msg]; 
    _clientID publicVariableClient "PlayerSpawnVehicleMsg";
  
    deleteVehicle _veh;

    _veh = objNull;
    _spawnnolongerallowed = 1;    

    PersonalVehicle_cache set [_ind, [_playerID, _veh, _spawnnolongerallowed]]; 

    };

