/// @description Insert description here
// You can write your code in this editor
if state == "load_next" {
	if prev_state == "development" next_state = "live"
	else next_state = "development"
	
	if next_state == "live" {
		var count = instance_number(o_body)
		for(var i=0;i<count;i++) {
			var inst = instance_find(o_body,i)
			if instance_exists(inst) {
				create_object_live_from(inst)
				
				inst.next_state = "destroy_self"
			}
		}
	}
}

if state == "development" {
	if ds_list_size(menu_items) == 0 {
		show_debug_message("sadasd")
		var btn_spawn = instance_create_layer(50,425,"Objects",o_spawn)
		btn_spawn.spawn_object = o_button
		ds_list_add(menu_items,btn_spawn)

		btn_spawn = instance_create_layer(50,490,"Objects",o_spawn)
		btn_spawn.spawn_object = o_body
		ds_list_add(menu_items,btn_spawn)

		btn_spawn = instance_create_layer(50,555,"Objects",o_spawn)
		btn_spawn.spawn_object = o_event
		ds_list_add(menu_items,btn_spawn)
	}
}