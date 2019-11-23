/// @param inst
var _inst = argument0
if position_meeting(_inst.x,_inst.y,o_object_live) return noone
				
var new = instance_create_layer(_inst.x,_inst.y+40,"Objects",_inst.object_index)
var new_vars = variable_instance_get_names(new)
new.x = _inst.x
new.y = _inst.y
				
for(var aa=0;aa<array_length_1d(new_vars);aa++) {
	if new_vars[aa] == "relations" {
		var list = variable_instance_get(_inst,new_vars[aa])
		if ds_list_size(list) < 1 continue
		
		for (var bb=0;bb<ds_list_size(list);bb++) {
			var new_from_list = create_object_live_from(list[| bb]) {
				ds_list_add(new.relations,new_from_list)	
			}
		}
	}
	else variable_instance_set(new,new_vars[aa],variable_instance_get(_inst,new_vars[aa]))	
}
return new