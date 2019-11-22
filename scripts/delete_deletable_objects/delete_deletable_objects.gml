var objs = instance_number(o_object)
for(var i=0;i<objs;i++) {
	var obj = instance_find(o_object,i)
	obj.next_state = "destroy_self"
}