if ((keyboard_check(global.downkey))&&(hit=0))
{
	if ((place_meeting(x,y,ply)&&(round(global.ply_hsp)=0)&&(round(global.ply_vsp)=0))) 
	{
		hit=1
		if (!place_meeting(x+30,y,elev))&&(!place_meeting(x-30,y,elev))
		{
			
		}
	}
}
if !hit=0 
{
	hit+=1
	if hit=30 hit=0
}
