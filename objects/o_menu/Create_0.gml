/// @description Insert description here
// You can write your code in this editor
event_inherited()

objects = ds_list_create()
// sets the below variables to some pre-set ones I've made during 'active' states
menu_type = "spawn_menu"
// whether or not to force an organisation on objects in the menu
order_objects = true
// order along x axis before y
order_by_x_first = false
// distance between each items x value
y_buffer = sprite_get_height(o_cube)*1.5
// distance between each items y value
x_buffer = sprite_get_height(o_cube)*1.5
// how many objects to align x by y
items_along_x = 4
items_along_y = 4
// where the x and y origin coordinates start
popup_x = x + x_buffer * 1
popup_y = y - y_buffer * 1
// how many objects on either axis before looping around
max_h = (room_height - y_buffer)/y_buffer
max_w = (room_width - x_buffer)/x_buffer
// counts the object increments
count_x = 0
count_y = 0