/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_circle(x,y,sprite_width/2,false)

if sprite_index > 0 draw_self()

if state == "wait_for_click" {
	draw_sprite(object_get_sprite(spawn_object),0,mouse_x,mouse_y)
}