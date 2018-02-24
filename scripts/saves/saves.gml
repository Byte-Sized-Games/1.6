if (keyboard_check(global.downkey))
{
	if ((place_meeting(x,y,ply)&&(round(global.ply_hsp)=0)&&(round(global.ply_vsp)=0)))
	{
		ini_open("saveData"+string(global.savefil)+".ini");
		ini_write_real("Player","health",global.ply_health);
		ini_write_real("Player","maxhealth",global.ply_maxhealth);
		ini_write_real("Game","progress",global.gameprog);
		ini_write_real("Game","path",global.gamepath);
		ini_write_real("Game","room",room);
		ini_close();
	}
}