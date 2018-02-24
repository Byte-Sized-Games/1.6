if (place_meeting(x,y+(yospeed*point),nonply))
{
	if (global.vertplat=point) global.vertplat=point
	if (place_meeting(x,y-4,ply))
	{
		if global.vertplat=0
		{
			y-=yospeed*point
			point*=-1
			global.vertplat=point
		}
	}
	else global.vertplat=0
}
else
	if (global.vertplat=1)||(global.vertplat=-1)
	{
		y+=yospeed*point
		global.vertplat=point
	}