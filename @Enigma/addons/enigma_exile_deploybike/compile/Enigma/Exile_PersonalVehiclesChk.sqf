
/*
Exile_PersonalVehiclesChk.sqf
[_ZEN_] Happydayz
© 2016 Enigma Team
*/


Private ["_player","_uid","_respectvehicleused","_ind","_clientID"];

_player = _this select 0;
_uid = getPlayerUID _player;
_clientID = owner _player;

_respectvehicleused = nil;

_ind = ((count SpawnedVehChk_cache) - 1);

{   
    if (_uid in _x) then {
        _respectvehicleused = _x select 1;
        _ind = _forEachIndex;
    };
} forEach SpawnedVehChk_cache;        

if (isNil "_respectvehicleused") then {_respectvehicleused = 0;}; 


if (_respectvehicleused == 1) then {
    _player setvariable ["spawnedrspctveh", false, true]; 
};

//diag_log format ["PersonalVehicles Chk cache contents = %1",SpawnedVehChk_cache];

PlayerSpawnVehicleRespectChk = [_respectvehicleused];  
_clientID publicVariableClient "PlayerSpawnVehicleRespectChk";

