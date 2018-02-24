if (time < text_length){
 time +=myspd;
 print = string_copy(text,0,time);
 show_debug_message(global.diag)
}
else 
{
	done=1
}
if done=1
{
if keyboard_check(global.shootkey)&&global.shootkey_time=1
{
	if global.diag=global.diag_round+0.5
	{
		global.diag+=0.5
		instance_destroy()
	}
	else instance_destroy()
}
}
if keyboard_check(global.shootkey)&&global.shootkey_time=2 myspd=spd*2
else myspd=spd
///Render textbox and text
draw_set_alpha(alpha);
if (alpha < 1) alpha += spd/10; else alpha = 1;
draw_set_font(font);
draw_set_color(c_gray);
draw_rectangle(x,y,x+boxwidth,y+boxheight,0);
draw_set_color(c_black);
draw_rectangle(x,y,x+boxwidth,y+boxheight,1);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(
 x + padding,
 y + padding,
 print,
 font_size+(font_size/2),
 maxlength
);

draw_set_alpha(1);