if (aspeed=0)
{
	intspeed = random_range(30,90)
	aspeed+=1
}
else        
	if (aspeed > intspeed)
	{
		if (col% 2 == 1) col -=1
		else col +=1
		aspeed=0
	}
	else aspeed+=1
image_index=col