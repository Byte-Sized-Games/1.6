//loading
{
if mode=6 {
if global.diag=9
{
	x=474
	y=85
}
else
if global.diag=10
{
	global.cam_control=1
	script_execute(cam_center,x,y,1,2)
}
else
if global.diag=10.1
{
	scr_text("Right here.",1,villager)
	global.diag=10.5
	global.diag_round=global.diag-0.5
}
else
if global.diag=11
{
	global.plyx = x;
	global.plyy = y;
	scr_text("Everyone, please board this platform!",1,villager)
	global.diag=11.5
	global.diag_round=global.diag-0.5
	count=0
}
else
if global.diag=14
{
	count+=1
	if count=90 
	{
		global.diag=14.5
		diagprog=7
		mode=7
	}
}
}
//choose a group
if mode=7 {
if (keyboard_check(global.downkey))&&global.cut=0&&global.ply_door=0
{
	if (place_meeting(x,y,ply)&&(round(global.ply_hsp=0))&&(round(global.ply_vsp=0))) global.cut=1
}
if global.ply_ready=1&&global.diag=0
{
	if global.diag=0
	{
		scr_text("Hey man. Can’t believe you’re actually an Explorer. I remember, a couple years ago, right before I left, you came over to my house asking to borrow some nitroglycerine.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=1
	{
		scr_text("When I told you that I didn’t give it away to anyone who wasn’t trained to use it, you just said that you wanted to know if I had any.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=2
	{
		scr_text("Heh.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=3
	{
		scr_text("Good times.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=4
	{
		global.diag_round=0
		ready=0
		global.ply_ready=0
		global.events=7
		mode=8
		move=1
		global.cut=0
		diagprog=8
		if global.diag_reset=0 global.diag_reset=1
	}
}
script_execute(npc_mov)
}
//take off
if mode=8 {
if x>805 
{
move=0
if (keyboard_check(global.downkey))&&global.cut=0&&global.ply_door=0
{
	if (place_meeting(x,y,ply)&&(round(global.ply_hsp=0))&&(round(global.ply_vsp=0))) 
	{
		global.cut=1
		ready=2
	}
}
if global.ply_ready=1
{
if !diagprog=mode
{
	if global.diag=0 
	{
		scr_text("This is my favorite spot in the village.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=1 
	{
		scr_text("It's always fun to sit here and watch all the takeoffs.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=2
	{
		scr_text("I know it's kinda weird... but I can't get over the marvels we've created.",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=3
	{
		scr_text("",1,villager)
		global.diag+=0.5
		global.diag_round=global.diag-0.5
	}
	else
	if global.diag=4
	{
		global.diag_round=0
		ready=0
		global.ply_ready=0
		diagprog=mode+1
		global.cut=0
		if global.diag_reset=0 global.diag_reset=1
	}
}
else 
{
	if global.diag=0
	{
	while diagr=ran
	{
		ran=random_range(1,3)
	}
	diagr=ran
	if diagr=1 
	{
		scr_text("Good luck, man.",1,villager)
		global.diag=1.5
		global.diag_round=global.diag-0.5
	}
	if diagr=2
	{
		scr_text("Make sure to enjoy yourself.",1,villager)
		global.diag=1.5
		global.diag_round=global.diag-0.5
	}
	if diagr=3
	{
		scr_text("Tell him I say hi.",1,villager)
		global.diag=1.5
		global.diag_round=global.diag-0.5
	}
	}
	else if global.diag>1.5
	{
		global.diag=0
		global.diag_round=0
		ready=0
		global.ply_ready=0
		global.cut=0
	}
}
}
}
}
script_execute(npc_mov)
}