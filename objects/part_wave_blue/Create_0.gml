if (depth=1) dir=-1
else dir=1
t = 0;
increment = 20; //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = 5; //pixels of peak oscillation
xx = x;
yy = y;
while ((place_meeting(x,y,hitobj))&&(!place_meeting(x,y,elev))) x+=dir