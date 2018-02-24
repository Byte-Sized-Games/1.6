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
hsp=movespeed
//vm
if (vsp < 10) 
{
	vsp += global.grav;
	image_index=7;
}
if (place_meeting(x+hsp,y,nonsl))
{
	while (!place_meeting(x+sign(hsp),y,nonsl)) x+=sign(hsp);
	hsp=0;
	movespeed=0;
	veltime=1;
}
x+=hsp
if (place_meeting(x,y+1,hitobj)) 
{
	vsp = key_jump * -jumpSpeed;
	image_index=7;
}
if (place_meeting(x,y+vsp,pix))
{
	while (place_meeting(x,y+vsp,pix))
		{
			vsp-=1
		}
}
while (place_meeting(x,y+vsp,hitobj))
{
	while(!place_meeting(x,y+sign(vsp),hitobj)) y += sign(vsp);
	vsp = 0;
	image_index=7;
}
y+=vsp;
if (move=-1)||(move=1) image_xscale=move