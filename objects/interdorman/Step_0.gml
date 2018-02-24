if (global.ply_door=3)
{
	if (((global.plyx-camera_get_view_x(0)<global.border_size_x)||(global.plyx-camera_get_view_x(0)>-1*global.border_size_x))&&((global.plyy-camera_get_view_y(0)<global.border_size_y)||(global.plyy-camera_get_view_y(0)>-1*global.border_size_y))) 
	{
		global.ply_door=4
		instance_destroy();
	}
}