/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if sprite_index != -1 {
	
}

if state == "on_click" {

	var obj = instance_create_layer(mouse_x,mouse_y,"Objects",o_spawnlet)
	obj.spawn_object = spawn_object
	obj.sprite_index = object_get_sprite(spawn_object)
	obj.next_state = "on_click"
	next_state = "active"
}