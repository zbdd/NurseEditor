/// @param object
/// @param event_text
var object = argument0
var event_text = argument1

if variable_global_exists("events")
	ds_list_add(global.events,string(object) + "::" + event_text)