/// @description Insert description here
// You can write your code in this editor

if state != "inactive" {
	//handle events
	for(var i=0;i<ds_list_size(global.events);i++) {
		global.event = global.events[| i]
		var event = global.event
		
		if event == "btn_live::pressed" next_state = "load_next"
		if event == "btn_save::pressed" next_state = "save_game"
		if event == "btn_clear::pressed" { delete_deletable_objects() }
		if event == "btn_close::pressed" { }
		if event == "btn_delete::pressed" { with instance_find(o_mouse,0) if delete_mode delete_mode = false else delete_mode = true }
		
		ds_list_add(global.done_events,event)	
		ds_list_delete(global.events,i)
	}
	
	if state == "load_game" {
		var json = ""
		var size = instance_number(o_object)
		var inst_map = ds_map_create()
		
		
		var file = file_text_open_read("/Users/zbdd/GameMakerStudio2/NurseEditor/dev.json")
		if file != -1 {
		var old_id_key = ""
		
		
		
		if !file_text_eof(file) {
			json = file_text_readln(file)
		var old_ids = json_decode(json)
		old_id_key = ds_map_find_first(old_ids)
		do {		

			inst = noone
			var old_json = old_ids[? old_id_key]
			var inst_map = json_decode(old_json)
			var inst_key = ds_map_find_first(inst_map)
			
			do {
				var asset = asset_get_index(inst_key)
				if !asset {
					old_json = old_ids[? asset]
					inst_map = json_decode(old_json)
					inst_key = ds_map_find_first(inst_map)
				}
				inst = instance_create_layer(x,y,"Objects",asset)
					
				do {
					var var_json = inst_map[? inst_key]
					var var_map = json_decode(var_json)
					var var_key = ds_map_find_first(var_map)

					do {
						var var_value = var_map[? var_key]
							
						if is_undefined(var_key) continue
						
						if var_key == "relations" {
							var rel_map = json_decode(var_value)
							var rel_key = ds_map_find_first(rel_map)
							new_relations = ds_list_create()
							do {
								var old_id = rel_map[? rel_key]
								ds_list_add(new_relations,old_id)
								rel_key = ds_map_find_next(rel_map,rel_key)
							} until (is_undefined(rel_key))
							inst.relations = new_relations
						} else {
							if var_key == "orig_x" {
								inst.x = var_value
							}
							if var_key == "orig_y" {
								inst.y = var_value
							}
							variable_instance_set(inst,var_key,var_value)
						}
						var_key = ds_map_find_next(var_map,var_key)
					} until (is_undefined(var_key))
				
					var_key = ds_map_find_next(var_map,var_key)
				} until (is_undefined(var_key))
				inst_key = ds_map_find_next(inst_map,inst_key)
			} until (is_undefined(inst_key))
				
			old_id_key = ds_map_find_next(old_ids,old_id_key)
		} until (is_undefined(old_id_key))

		file_text_close(file)
		
		
		var size = instance_number(o_object)
		for(var i=0;i<size;i++) {
			var inst = instance_find(o_object,i)
			var new_r = ds_list_create()
			var rel_list = inst.relations
			
			for(var aa=0;aa<ds_list_size(rel_list);aa++) {
				var old_id = rel_list[| aa]
				if is_undefined(old_id) continue
				
				for(var bb=0;bb<size;bb++) {
					var inst_compare = instance_find(o_object,bb)
					
					if inst_compare.old_id == old_id { ds_list_add(new_r,inst_compare.id); break }		
				}	
			}
			inst.relations = new_r
		}
		}
		}
		
		next_state = "development"
	}
	if state == "save_game" {
		var json = ""
		var var_map = ds_map_create()
		var size = instance_number(o_object)
		var inst_map = ds_map_create()
		var obj_map = ds_map_create()
		var inst_map = ds_map_create()
		
		for (var i=0;i<size;i++) {
			var inst = instance_find(o_object,i)
			if instance_exists(inst) {
				if inst.object_index == o_gui_button continue
				if inst.object_index == o_spawn continue
				
				var inst_var_names = variable_instance_get_names(inst)
				
				for (var aa =0; aa<array_length_1d(inst_var_names);aa++) {
					var var_name = inst_var_names[aa]
					var var_value = variable_instance_get(inst,var_name)
					if var_name == "orig_x" var_value = inst.x
					if var_name == "orig_y" var_value = inst.y
					if var_name == "old_id" var_value = inst.id
					if var_name == "relations" {
						var related_ids = ds_map_create()
						for(var mi=0;mi<ds_list_size(var_value);mi++) {
							ds_map_add(related_ids,mi,var_value[| mi])
						}
						var related_json = json_encode(related_ids)
						var_value = related_json
					}
					
					ds_map_add(var_map,var_name,var_value)
				}	
			}
			json = json_encode(var_map)
			ds_map_add(obj_map,object_get_name(inst.object_index),json)
			json = json_encode(obj_map)
			ds_map_add(inst_map,string(inst.id),json)
			
			json = ""
			ds_map_clear(var_map)
			ds_map_clear(obj_map)
		}
		
		json = json_encode(inst_map)
		var file = file_text_open_write("/Users/zbdd/GameMakerStudio2/NurseEditor/dev.json")
		file_text_write_string(file,json)
		file_text_close(file)
		
		next_state = prev_state
	}
}

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
		development_env_spawn()
	}
}