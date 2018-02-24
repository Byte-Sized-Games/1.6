//choose a group
if mode=6 {
if (keyboard_check(global.downkey))&&global.cut=0&&global.ply_door=0
{
	if (place_meeting(x,y,ply)&&(round(global.ply_hsp=0))&&(round(global.ply_vsp=0)))&&global.diag<12
	{
		global.cut=1
	}
}
if global.ply_ready=1||global.ply_ready=2
{
	if global.diag=1
	{
		image_xscale=-1
		scr_text("Ok, you're finally here. I count 5, so we're all present and accounted for.",1,villager)
		global.diag=1.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=2 
	{
		scr_text("Right - first off, welcome to Alpha Team. We're all going to be going to the WASTELANDS.",1,villager)
		global.diag=2.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=3 
	{
		scr_text("I'll be monitoring you all for a day or too, and then I'll leave.",1,villager)
		global.diag=3.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=4
	{
		scr_text("well, i feel safe now, knowing that we're going to be abandoned.",1,villager)
		global.diag=4.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=5
	{
		scr_text("Actually, not exactly dude. When I was an Explorer, my group was left alone.",1,villager)
		global.diag=5.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=6
	{
		scr_text("We were pretty clueless - half of my friends got food poisoning and my best friend Albert almost died.",1,villager)
		global.diag=6.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=7
	{
		scr_text("But, lucky for you all, R&D over at the Archives has a solution.",1,villager)
		global.diag=7.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=8
	{
		scr_text("I'll explain it all once we get there.",1,villager)
		global.diag=8.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=9
	{
		scr_text("MATT!",1,villager)
		global.diag=9.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag>11.9&&global.diag<12.5
	{
		global.cam_control=0
		global.plyx=(global.ply_id).x
		global.plyy=(global.ply_id).y
		global.cut=0
		if global.diag>11.9&&global.diag<12.5 move=1
		if global.diag>12.4 move=0
	}
	else
	if global.diag=12.50 move=0
	else
	if global.diag=13
	{
		scr_text("Ok, send us down, Matt.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag>13.9 &&global.diag<15
	{
		global.cam_control=1
		script_execute(cam_center,(global.ply_id).x,(global.ply_id).y,)
		if y>342
		{
			image_xscale=-1
			global.diag=15
			scr_text("Welcome to the Hanger. We store our 4 StratoJets in here.",1,villager)
			global.diag=15.5
			global.diag_round=global.diag-0.5
		}
	}
	else
	if global.diag=16&&y>342
	{
		scr_text("Well . . . I should really say 3. The 4th one was . . . lost.",1,villager)
		global.diag=16.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=17&&y>342
	{
		scr_text("Anyway, please go through that leftmost door and get into the StratoJet. I'll meet you there.",1,villager)
		global.diag=17.5
		global.diag_round=global.diag-0.5
		count=0
	}
	else
	if global.diag=18
	{
		if x<362
		{
			move=0
			global.diag=19
		}
		else move=-1
	}
	else
	if global.diag=19
	{
		count+=1
		if count=38 image_xscale=1
		else if count=48 global.diag+=1
	}
	else
	if global.diag=20
	{
		scr_text("Also, this is the last time you're going to see this place for a little while.",1,villager)
		global.diag=20.5
		global.diag_round=global.diag-0.5
		count=0
	}
	else
	if global.diag=21
	{
		scr_text("So make sure you have everything you need, cause Maurice isn't going to turn the Jet around if anyone forgets anynthing.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=22
	{
		move=-1
		if x<336
		{
			move=0
			global.diag+=1
		}
	}
	else
	if global.diag=23
	{
		count+=1
		if count=38 image_xscale=1
		else if count=48 global.diag+=1
	}
	else
	if global.diag=24
	{
		scr_text("And anyone who asks if there's a bathroom once we're in the air gets thrown out of the exit hatch.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=25
	{
		move=-1
		if x<280
		{
		global.cam_control=0
		global.cut=0
		global.ply_ready=0
		global.events=7
		global.ply_door=0
		instance_create_depth(x,x,depth,diagmanager)
		instance_destroy()
		}
	}
}
script_execute(npc_mov)
}