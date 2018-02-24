if delay=wait
{
	instance_create_depth(rightem,y,1,part_wave_blue)
	instance_create_depth(leftem,y,10,part_wave_blue)
	//dep 1 means part goes left, dep 10 means part goes right
	wait=0
}
else wait+=1