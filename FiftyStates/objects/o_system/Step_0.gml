/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_up))
	level++;
if(keyboard_check(vk_down))
	level--;
if(keyboard_check(vk_left))
	hp--;
if(keyboard_check(vk_right))
	hp++;
if(keyboard_check(vk_space))
	ep++;




text = "Name: " + string(name) + "\r\n";
text += "Level: " + string(level) + "\r\n";
text += "HP: " + string(hp) + "\r\n";
text += "MP: " + string(mp) + "\r\n";
text += "EXP: " + string(ep) + "\r\n";
for (var i=0; i<10; i++) {
	text += "Item " + string(i) + ": " + string(item[i]) + "\r\n";
}