/*
Exile_PersonalVehicles
[_ZEN_] Happydayz
© 2016 Enigma Team
*/


///////Global variables////////
uid = getPlayerUID player;
spawnPos = getposatl player;
///////////////////////////////


if !((vehicle player) isEqualTo player) exitWith {}; 
ENIGMA_SpawnVehicleChkRespect = [player,uid]; 
publicVariableServer "ENIGMA_SpawnVehicleChkRespect";

//Diag_log "Executed SpawnVehicle.sqf";

