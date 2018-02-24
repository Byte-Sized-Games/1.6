t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
xx += hspeed;
yy += vspeed;
 
//apply the shift
x +=2*dir
y = yy + (lengthdir_y(shift, direction + 90));

if ((place_meeting(x,y,hitobj))&&(!place_meeting(x,y,elev))) instance_destroy();