if (place_meeting(x,y,ply))
{
	global.ply_door=1
	global.fade=0.05
	global.faderange=0
	global.plydoorx=target_x
	global.plydoory=target_y
	global.nextroom=(targetroom)
	instance_create_depth(x,y,layer,doormanagement)
	instance_create_depth(x,y,layer,fadeout)
	instance_destroy();
}