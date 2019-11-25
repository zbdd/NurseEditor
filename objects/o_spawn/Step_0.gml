/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if left_click and can_spawn next_state = "spawning"

if state == "spawning" {
	if mouse_check_button_pressed(mb_left) instance_create_layer(mouse_x,mouse_y,"Instances",o_object)
	else if mouse_check_button_pressed(mb_right) next_state = "active"
}