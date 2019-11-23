/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if sprite_index !=  object_get_sprite(spawn_object) {
	sprite_index = object_get_sprite(spawn_object)
	name = "btn_spawn_" + object_get_name(spawn_object)		
}

if state == "on_click" {

	var obj = instance_create_layer(mouse_x,mouse_y,"Development",o_spawnlet)
	obj.spawn_object = spawn_object
	obj.sprite_index = sprite_index
	obj.next_state = "on_click"
	next_state = "active"
}