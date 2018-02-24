if (global.ply_door=1)
{
	if (global.faderange=0)
	{
		if (global.fade>2.58)
		{
			global.fade=1
			global.faderange=1
			global.plyx=global.plydoorx
			global.plyy=global.plydoory
			instance_create_depth(global.plyx,global.plyy,depth,fadein)
			room_goto(global.nextroom)
			instance_destroy();
		}
	}
}