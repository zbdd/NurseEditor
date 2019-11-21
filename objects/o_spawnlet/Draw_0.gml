/// @description Insert description here
// You can write your code in this editor
if state == "wait_for_click" {
	if can_spawn
		draw_set_colour(c_green)
	else draw_set_colour(c_red)

	draw_circle(mouse_x,mouse_y,abs(bbox_left)-abs(bbox_right),false)
	draw_sprite(object_get_sprite(spawn_object),0,mouse_x,mouse_y)
}
if sprite_index > 0 draw_self()