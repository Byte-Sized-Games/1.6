depth+=20
show_debug_message(global.diag)
show_debug_message(global.plyx)
key_right = keyboard_check(global.rightkey)
key_left = -(keyboard_check(global.leftkey))
yup=0
//imp
if ((global.cut=0)&&(global.ply_door=0))
{
	move=key_left+key_right;
	if (global.jumpkey_time=0) key_jump = keyboard_check(global.jumpkey);
	else key_jump=0
	script_execute(ply_mov)
	global.plyx=x
	global.plyy=y
}
else
{
	move=0
	if (global.ply_door=1) 
	{
		x=global.plyx
		y=global.plyy
		script_execute(ply_mov)
	}
	else if (global.ply_door=2)
	{
	if (image_alpha>0) image_alpha-=0.02
	else 
	{
		global.ply_door=3
		x=global.plyx
		y=global.plyy
	}
	script_execute(ply_mov)
	}
	else if (global.ply_door=4)
	{
		if (image_alpha<1) image_alpha+=0.02
		else
		{
			image_alpha=1
			global.ply_door=0
		}
		script_execute(ply_mov)
	}
	else if (global.cut=1)
	{
		if (place_meeting(x,y,npc))&&global.ply_ready<2
		{
			if !place_meeting(x-1,y,hitobj) move=-1
			else move=1
			flip=move
			global.ply_ready=0
		}
		else if global.ply_ready<2 global.ply_ready=1
		if global.ply_ready=0
		{
			global.ply_ready=1
			global.diag=1
			
		}
		if move=0
		{
			if flip =1 
			{
				move=-1
				flip=0
			}
			if flip =-1 
			{
				move=1
				flip=0
			}
		}
	}
	script_execute(ply_mov)
}