diag_log format['Enigma Exile Deploybike: publicEH %1',time];

"ENIGMA_SpawnVehicleChk" addPublicVariableEventHandler{(_this select 1)call ENIGMA_server_handle_PersonalVehicles};
"ENIGMA_SpawnVehicleChkRespect" addPublicVariableEventHandler{(_this select 1)call ENIGMA_server_handle_PersonalVehiclesChk};
