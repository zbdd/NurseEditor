/// @param var_name
/// @param value

var var_name = argument0
var value = argument1

var mouse = instance_find(o_mouse,0)
if instance_find(mouse,0)
	if variable_instance_exists(mouse,var_name)
		variable_instance_set(mouse,var_name,value)