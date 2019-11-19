/// @param object
/// @param log_text
var object = argument0
var log_text = argument1

if variable_global_exists("log")
	ds_list_add(global.log,string(object) + "::" + log_text)