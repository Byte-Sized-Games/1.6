if (move=1 || move=-1)
{        
	if (movespeed<maxspeed)
	{
		if (movespeed>(-1*maxspeed)) 
		{
			if (veltime=5) 
			{
				movespeed+=(move*vel);
				veltime=1;
			}
			else veltime+=1
		}
	}
}
else
	if (movespeed>0)
	{
		if (veltime=5)
		{
			movespeed-=vel;
			veltime=1;
		}
		else veltime+=1;
	}
	else 
		if (movespeed<0)
		{
			if (veltime=5)
			{
				movespeed+=vel;
				veltime=1;
			}
			else veltime+=1;
		}
global.ply_hsp=movespeed
//vm
if (global.ply_vsp < 10) 
{
	global.ply_vsp += global.grav;
	image_index=7;
}
if (place_meeting(x+global.ply_hsp,y,nonsl))
{
	while (!place_meeting(x+sign(global.ply_hsp),y,nonsl)) x+=sign(global.ply_hsp);
	global.ply_hsp=0;
	movespeed=0;
	veltime=1;
}
x+=global.ply_hsp
if (place_meeting(x,y+1,hitobj)) 
{
	global.ply_vsp = key_jump * -jumpSpeed;
	image_index=7;
}
if (place_meeting(x,y+global.ply_vsp,pix))
{
	while (place_meeting(x,y+global.ply_vsp,pix))
		{
			global.ply_vsp-=1
		}
}
while (place_meeting(x,y+global.ply_vsp,hitobj))
{
	while(!place_meeting(x,y+sign(global.ply_vsp),hitobj)) y += sign(global.ply_vsp);
	global.ply_vsp = 0;
	image_index=7;
}
y+=global.ply_vsp;
if (move=-1)||(move=1) image_xscale=move