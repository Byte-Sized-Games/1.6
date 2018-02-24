global.cam = view_camera[0];
var cam_x = camera_get_view_x(global.cam);
var cam_y = camera_get_view_y(global.cam);
var cam_w = camera_get_view_width(global.cam);
var cam_h = camera_get_view_height(global.cam);
global.newtarget_x = argument0-cam_w/2;
global.newtarget_y = argument1-cam_h/2;
//check
if cam_x-global.newtarget_x<argument3&&cam_x-global.newtarget_x>-1*argument3 global.diag+=0.1
//align
if cam_x-global.newtarget_x<0
{
	if cam_x-(lerp(cam_x,global.newtarget_x,global.lerp_rate))>argument2 global.newtarget_x=argument2
}
else
{
	if cam_x-(lerp(cam_x,global.newtarget_x,global.lerp_rate))<-1*argument2 global.newtarget_x=-1*argument2
}
if cam_y-global.newtarget_y<0
{
	if cam_y-(lerp(cam_y,global.newtarget_y,global.lerp_rate))>argument2 global.newtarget_y=argument2
}
else
{
	if cam_x-(lerp(cam_x,global.newtarget_x,global.lerp_rate))<-1*argument2 global.newtarget_y=-1*argument2
}

camera_set_view_pos(global.cam,lerp(cam_x, global.newtarget_x,global.lerp_rate),lerp(cam_y, global.newtarget_y,global.lerp_rate));