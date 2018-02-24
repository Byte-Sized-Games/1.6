//getting into groups - 6
if global.events=6 && global.diag>11.9 && global.diag<12.5 && place_meeting(x,y-1,entry) 
{
	global.diag=12.5
	calc=1
}
else if calc=1 && place_meeting(x,y-4,ply) && place_meeting(global.plyx,global.plyy+4,nonsl) &&global.diag<13.5&&global.events=6
{
	global.diag=13
	global.ply_ready=2
	global.cut=1
}
else if global.diag>14.4&&global.events=6
{
	point=1
	script_execute(elev_mov)
}

//rest of the time
else if global.events>6 script_execute(elev_mov)