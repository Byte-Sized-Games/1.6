if ((keyboard_check(global.downkey))&&(global.ply_door=0))
{
	if ((place_meeting(x,y,ply)&&(round(global.ply_hsp)=0)&&(round(global.ply_vsp)=0))) 
	{
		global.ply_door=2
		global.fade=0.05
		global.faderange=0
		global.plyx=target_x
		global.plyy=target_y
		instance_create_depth(x,y,layer,interdorman)
	}
}