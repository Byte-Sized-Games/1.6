layer=3
while (instance_number(ply)=2) instance_destroy(ply)
if global.ply_dmg>0
{
	global.ply_dmg+=1;
	if global.ply_dmg=dmgtim
	{
		global.ply_dmg=0
		image_alpha=0
	}
	else 
		if ((global.ply_dmg/12.5)=int)
		{
			if (image_alpha=0.5) image_alpha=0
			else image_alpha=0.5
		}
}