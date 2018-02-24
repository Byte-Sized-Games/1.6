if fr=delay
{
	if image_index=finalframe instance_destroy();
	image_index+=1
	fr=0
}
else fr+=1