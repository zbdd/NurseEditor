/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == "on_click" {

	var obj = instance_create_layer(mouse_x,mouse_y,"Objects",o_spawnlet)
	obj.next_state = "on_click"
	next_state = "active"
}