/// @description Insert description here
// You can write your code in this editor

var count = array_length_1d(objStateData.names);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for(var i = 0; i < count; i++) {
	var status = "[ ]";
	if(objStateData.status[i] > 0)
		status = "[" + string(objStateData.status[i]) + "]";
	draw_text(x, y + i*20, status + "  " + objStateData.names[i])
}