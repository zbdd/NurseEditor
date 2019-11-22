/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == "on_click" {
	next_state = "wait_for_click"
	mouse_set_variable("inst_focus",self)	

}
if state = "wait_for_click" {
	var left_click = mouse_check_button_pressed(mb_left)
	var right_click = mouse_check_button_pressed(mb_right)
	
	x = mouse_x
	y = mouse_y

	var collision = collision_circle(mouse_x,mouse_y,abs(bbox_left)-abs(bbox_right),all,false,true)
	if instance_exists(collision)
		can_spawn = false
	else can_spawn = true
	
	if left_click and can_spawn {
		var obj = instance_create_layer(mouse_x,mouse_y,"Objects",spawn_object)
		next_state = "self_destruct"
	}
	if right_click next_state = "self_destruct"	
}
if state == "self_destruct" {
	mouse_set_variable("inst_focus",noone)	
	instance_destroy()
}