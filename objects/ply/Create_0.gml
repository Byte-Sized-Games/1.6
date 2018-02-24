global.ply_door=0
x=global.plyx
y=global.plyy
global.ply_id=id
//spr
image_index = 7
image_speed = 0
image_alpha=1
animframe = 1
flip=0
global.ply_ready=0
//phys
global.grav = 0.2
global.cut=0
global.ply_hsp = 0
global.ply_vsp = 0
global.ply_vsp_max = 10
global.hit_dwn = 0
move=0
jumpSpeed = 4;
vel = 0.5
yup=0
movespeed=0
veltime=1
maxspeed=1.2
//health
dmgtim=150
myroom=room
camera_destroy(view_camera[0]);
global.border_size_x = 119;
global.border_size_y = 64;
global.cam_control=0
//Establish the interpolation rate
global.lerp_rate = 0.1;

//Create and bind the camera
if(x<0+(global.border_size_x/2))
	while (x<0+(global.border_size_x/2)) x+=2
else 
	if(x>room_width-(global.border_size_x/2))
		while (x>room_width-(global.border_size_x/2)) x-=2
		
if(y<0+(global.border_size_y/2))
	while (y<0+(global.border_size_y/2)) y+=2
else 
	if(y>room_height-(global.border_size_y/2))
		while (y>room_height-(global.border_size_y/2)) y-=2
		
global.cam = camera_create_view(x,y, 300, 225, 0, -1, -1, -1, 32, 32)
view_enabled = 1
view_visible[0] = 1
view_set_camera(0, global.cam)

//Initialize camera target position vars
global.newtarget_x = global.plyx;
global.newtarget_y = global.plyy;
global.target_x=global.plyx
global.target_y=global.plyy