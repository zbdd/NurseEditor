/// @param do_merge
/*	1 = did merge
	0 = did de-merge
	-1 = nothing happened
*/
var do_merge = -1
if argument_count > 0
	do_merge = argument[0]
	
var inst_list = ds_list_create()
instance_position_list(x,y,o_object,inst_list,false)
			
if inst_list != noone
for(var i=0;i<ds_list_size(inst_list);i++) {
	var inst = inst_list[| i]

	if instance_exists(inst) {
		var position = ds_list_find_index(relations,inst)
		if  position <= -1 {
			if inst != self
				if inst.allow_add {
					if !do_merge return 1
					
					ds_list_add(relations,inst)
					log_add(name,"connected to: " + inst.name)
					
					return 1
				}
		} else {
			if inst != self
			if !do_merge return 1
			
			ds_list_delete(relations,position)
			log_add(name,"disconnected from: " + inst.name)
					
			return 0
		}
	}
}
return -1