global.cam = view_camera[0];
var cam_x = camera_get_view_x(global.cam);
var cam_y = camera_get_view_y(global.cam);
var cam_w = camera_get_view_width(global.cam);
var cam_h = camera_get_view_height(global.cam);
if global.cam_control=0{
global.newtarget_x = global.plyx;
global.newtarget_y = global.plyy;
//align
if(global.newtarget_x < cam_x + global.border_size_x)
{
    global.target_x = global.newtarget_x - global.border_size_x;
}
else if(global.newtarget_x > cam_x + cam_w - global.border_size_x)
{
    global.target_x = global.newtarget_x + global.border_size_x - cam_w;
}

if(global.newtarget_y < cam_y + global.border_size_y)
{
    global.target_y = global.newtarget_y - global.border_size_y;
}
else if(global.newtarget_y > cam_y + cam_h - global.border_size_y)
{
    global.target_y = global.newtarget_y + global.border_size_y - cam_h;
}
if ((0<lerp(cam_x, global.target_x, global.lerp_rate))&&(lerp(cam_x, global.target_x, global.lerp_rate)<room_height)&&(lerp(cam_x, global.target_x, global.lerp_rate)<room_width)) camera_set_view_pos(global.cam, lerp(cam_x, global.target_x, global.lerp_rate),cam_y);
if ((0<lerp(cam_y, global.target_y, global.lerp_rate))&&(lerp(cam_y, global.target_y, global.lerp_rate)<room_height)) camera_set_view_pos(global.cam, camera_get_view_x(global.cam), lerp(cam_y, global.target_y, global.lerp_rate));
}
//other
if (keyboard_check(global.jumpkey) = 1) global.jumpkey_time=1
else global.jumpkey_time=0
if (!global.ply_hsp=0)
{
	if (global.ply_vsp=0)
	{
		if (animframe=6) animframe=1
		else animframe+=0.2
		image_index=(move*round(animframe))
	}
	else image_index=7
}
else image_index=7
//floofer
if (global.floofer=1) 
{
	if (!place_meeting(x+global.floof,y,nonsl)) x+=global.floof
}