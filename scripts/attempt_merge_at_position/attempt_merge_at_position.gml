/// @param instance

var merger = argument0
var inst_list = ds_list_create()
instance_position_list(x,y,o_object,inst_list,false)


show_debug_message("Merge attempt")
if inst_list != noone
for(var i=0;i<ds_list_size(inst_list);i++) {
	var inst = inst_list[| i]

	if instance_exists(inst) {
		var position = ds_list_find_index(merger.relations,inst)
		if  position <= -1 {
			if inst != self
				if inst.allow_add {
					ds_list_add(merger.relations,inst)
					log_add(merger.name,"connected to: " + inst.name)
					
					return 1
				}
		} else {
			if inst != self
			
			ds_list_delete(merger.relations,position)
			log_add(merger.name,"disconnected from: " + inst.name)
					
			return 0
		}
	}
}