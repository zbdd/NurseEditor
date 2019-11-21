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