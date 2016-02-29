# Enigma_Exile_Deploybike

Doubleclick radio to deploy bike

Allows you to (if enabled) give players with higher respect a special vehicle once per restart!



------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------HOW TO INSTALL ENIGMA DEPLOYBIKE---------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------


First add the startup paramaters @Enigma to your server!

Copy the @Enigma Folder to your Server Root!



Open up your mission file and add the init.sqf line to your init.sqf file (Must be executed by both server and client!)!

[] execVM "Custom\EnigmaPersonalVehicle\init.sqf";


Copy the Entire Custom folder into the root of your mission file!

			
			Next go to:

//////////////////////////////////////////////////////////////////////////////////////////////////////				
			
			
			class CfgExileCustomCode {};

//////////////////////////////////////////////////////////////////////////////////////////////////////				


and modify it to read:


//////////////////////////////////////////////////////////////////////////////////////////////////////				
		
		class CfgExileCustomCode {
	//Enigma Deploybike
	ExileClient_gui_inventory_event_onSlotDoubleClick = "Custom\EnigmaPersonalVehicle\ExileClient_gui_inventory_event_onSlotDoubleClick.sqf"; 
		};	
		
			
//////////////////////////////////////////////////////////////////////////////////////////////////////				
		
					
					
If a player does NOT packup their bike/vehicle, and they log off/die, they will be unable to spawn another until the next restart!

If a player has spawned a respect vehicle, they will get a warning before they pack it up.
Once its been packed up, it will only respawn as a bike until the next restart!
	

There are a few settings you can modify inside the custom\EnigmaPersonalVehicle\init.sqf


