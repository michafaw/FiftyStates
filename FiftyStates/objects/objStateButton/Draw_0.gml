/// @description Insert description here
// You can write your code in this editor

if(status == 0)
	sprite_index = spr44x44White;
else
	sprite_index = spr44x44Check;

draw_self();


draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(f_std);

//var statusString = "[ ]";
//if(status > 0)
//	statusString = "[" + string(status) + "]";
//draw_text(x, y + 8, statusString + "  " + name);

draw_text(bbox_right + 8, y, name);