if global.events=6
{
	if global.diag>10.9&&global.diag<12
	{
		global.cut=0
		if place_meeting(global.plyx,global.plyy,elev) 
		{
			global.diag+=0.5
			global.cut=1
		}
	}
}