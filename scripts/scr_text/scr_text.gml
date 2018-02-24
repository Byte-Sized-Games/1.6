//scr_text("Text",speed,x,y);
layer=1
txt = instance_create_depth(global.border_size_x+(camera_get_view_x(global.cam))-85,(global.border_size_y+(camera_get_view_y(global.cam)/2)+80),depth,obj_text);
with (txt){

padding = 11;
maxlength = global.border_size_x*2;
text = argument0;
global.spd = argument1;
font = argument2;

text_length = string_length(text);
font_size = font_get_size(argument2);

draw_set_font(argument2);

text_width = string_width_ext(text, font_size+(font_size/8), maxlength);
text_height = string_height_ext(text, font_size+(font_size/8), maxlength);

boxwidth = text_width + (padding*2);
boxheight = text_height + (padding*2);
};