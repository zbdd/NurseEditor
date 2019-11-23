/// @description Insert description here
// You can write your code in this editor
name = "object"
is_moveable = true
is_clickable = true
state = "inactive"
next_state = "active"
prev_state = "inactive"
button_pressed = false
allow_add = true
relations = ds_list_create()
radius = point_distance(bbox_left,bbox_top,bbox_right,bbox_bottom)/2 + 1
can_place = false
size = 0
force_relations_position = true
orig_x = x
orig_y = y
old_id = self
can_delete = true
is_live = false
options = ds_list_create()
has_menu = false