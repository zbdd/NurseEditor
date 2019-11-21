/// @description Insert description here
// You can write your code in this editor
name = "object"
is_moveable = true
is_clickable = true
state = "inactive"
next_state = "active"
button_pressed = false
allow_add = false
relations = ds_list_create()
radius = point_distance(bbox_left,bbox_top,bbox_right,bbox_bottom)/2 + 1
can_place = false
size = 0
force_relations_position = false
orig_x = x
orig_y = y