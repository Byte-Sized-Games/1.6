
if (global.faderange=1)
{
	if (global.fade<0.01)
	{
		global.ply_door=0
		global.faderange=0
		instance_destroy();
	}
	else
		global.fade-=0.05
		image_alpha=global.fade
}