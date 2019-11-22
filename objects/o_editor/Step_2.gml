/// @description Insert description here
// You can write your code in this editor
if state != next_state {
	global.event = noone
	log_add(name,"state change to: " + string(next_state))
	prev_state = state
	state = next_state
	
	for(var i=0;i<ds_list_size(menu_items);i++) {
		var item = menu_items[| i]
		with item instance_destroy()
	}
	ds_list_clear(menu_items)
}