//DO ALL THIS IN CREATION
lefttime=20
righttime=20
//DO ALL THIS IN STEP
if (lefttime=20)
{
	global.partwaveform=1
	instance_create_depth(x,y,1,part_wave_blue)
	lefttime=2
}
else lefttime+=1
if (righttime=20)
{
	global.partwaveform=2
	instance_create_depth(x,y,1,part_wave_blue)
	righttime=2
}
else righttime+=1