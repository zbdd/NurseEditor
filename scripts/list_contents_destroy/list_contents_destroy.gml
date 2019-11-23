///@param list
var list = argument0

for(var i=0;i<ds_list_size(list);i++) {
	var inst = list[| i]
	
	if instance_exists(inst) with inst next_state = "destroy_self"
	
}
ds_list_clear(list)