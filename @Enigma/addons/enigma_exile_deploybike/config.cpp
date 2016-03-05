
class CfgPatches 
{
	class enigma_exile_deploybike {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		author[]= {"Happydayz_EngimaTeam"}; 	
	};
};
class CfgFunctions 
{
	class EnigmaDeployBike 
	{
		class main 
		{
			file = "\enigma_exile_deploybike\init";
			class init
			{
				preInit = 1;
			};
			class postinit
			{
				postInit = 1;
			};
		};
	};
};

