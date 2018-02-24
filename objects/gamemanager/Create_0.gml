global.partwaveform=1
global.plyx = 5
global.plyy = 0
dupe=0
if (instance_number(ply)=2) dupe=1
if (instance_number(gamemanager)>1) instance_destroy();
//health
global.ply_dmg=0
global.ply_maxhealth=10
global.ply_health=global.ply_maxhealth
//keys
global.leftkey =ord("A")
global.rightkey =ord("D")
global.downkey =ord("S")
global.jumpkey =ord("J")
global.shootkey =ord("K")
global.hitkey =ord("L")
global.jumpkey_time=0
global.shootkey_time=0
global.gameprog=1
global.gamepath=0
global.savefil=1
//lists
global.ply_door=0
//effects
global.fade=0
global.faderange=1
gamemanager.persistent=true
//story
global.events=6
event=0
global.spd=0
global.diag=0
global.diag_round=0
global.diag_reset=0
//platforms
global.floofer=0
global.floof=0
global.test=0