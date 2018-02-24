if (place_meeting(x+(yospeed*pt),y,hitobj)) pt=-1*pt
x+=yospeed*pt
if (place_meeting(x,y-2,ply))
{
	global.floofer=1
	global.floof=yospeed*pt
}
else global.floofer=0