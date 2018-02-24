if (dupe=1) instance_destroy();
if !instance_exists(ply) instance_create_depth(x,y,depth,ply)
//cutscene management
if keyboard_check(global.shootkey) 
{
	if global.shootkey_time=0 global.shootkey_time=1
	else global.shootkey_time=2
}
else global.shootkey_time=0
if global.diag=-1
{
	event+=1
	if event=5
	{
		event=0
		global.diag=0
	}
}
if global.diag_reset>0
{
	global.diag_reset+=1
	if global.diag_reset=4
	{
		global.cut=0
		global.diag=0
		global.diag_reset=0
	}
}