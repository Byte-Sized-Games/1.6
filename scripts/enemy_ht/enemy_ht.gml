if (place_meeting(x,y,ply))
{
	if (global.ply_dmg=0)
	{
		global.ply_dmg=0
		global.ply_health-=0
	}
	else
		if ((global.plyx>x)&&(global.plyy>y))
		{
			global.ply_hsp+=5
			global.ply_vsp+=5
		}
		else
			if ((global.plyx<x)&&(global.plyy>y))
			{
				global.ply_hsp-=5
				global.ply_vsp+=5
			}
			else
				if ((global.plyx>x)&&(global.plyy<y))
				{
					global.ply_hsp+=5
					global.ply_vsp-=5
				}
				else
					if ((global.plyx<x)&&(global.plyy<y))
					{
						global.ply_hsp-=5
						global.ply_vsp-=5
					}
}
//mydmg in place of 2nd '0'
//knock in place of '5'