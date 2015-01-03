enableSaving [false, false];
enableSentences false;



if (player == ghost) then {

	[("draw" + (str(e1))),"onEachFrame",{

			if ((floor(player distance e1)) < 51) then {
				drawIcon3d["", [1,0,0,(-2*log(floor(player distance e1)/50))], e1 modelToWorldVisual(e1 selectionPosition "Spine3"), .5, .5, 0, (str(floor(player distance e1))+"M"), 0, .04, "TahomaB"];
			};
			
	},[]] call BIS_fnc_addStackedEventHandler;
	
	e1 addEventHandler ["Killed",{["drawe1","onEachFrame"] call BIS_fnc_removeStackedEventHandler;}];
	
	[("draw" + (str(e2))),"onEachFrame",{

			if (((floor(player distance e2)) < 51)) then {
				drawIcon3d["", [1,0,0,(-2*log(floor(player distance e2)/50))], e2 modelToWorldVisual(e2 selectionPosition "Spine3"), .5, .5, 0, (str(floor(player distance e2))+"M"), 0, .04, "TahomaB"];
			};

	},[]] call BIS_fnc_addStackedEventHandler;
	
	e2 addEventHandler ["Killed",{["drawe2","onEachFrame"] call BIS_fnc_removeStackedEventHandler;}];
};
/*

why does this not work

{
	[("draw" + (str(_x))),"onEachFrame",{

			if (((floor(player distance _x)) < 51)) then {
				drawIcon3d["", [1,0,0,(-2*log(floor(player distance _x)/50))], _x modelToWorldVisual(_x selectionPosition "Spine3"), .5, .5, 0, (str(floor(player distance _x))+"M"), 0, .04, "TahomaB"];
			};

	},[]] call BIS_fnc_addStackedEventHandler;
	
	_x addEventHandler ["Killed",{[("draw" + (str(_x))),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;}];
} foreach [e1, e2];

};


and this in a foreach using _x does
//["drawe1","onEachFrame"] call BIS_fnc_removeStackedEventHandler
