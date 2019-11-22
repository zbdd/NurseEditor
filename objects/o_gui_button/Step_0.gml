/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = string_width(text)/sprite_width
image_yscale = string_height(text)/sprite_height

if state == "on_click" {
	
	if is_editor_button {
		var inst = instance_find(o_editor,0)
		inst.command = name
	}
	next_state = "waiting"
	alarm[0] = room_speed * 0.2
}