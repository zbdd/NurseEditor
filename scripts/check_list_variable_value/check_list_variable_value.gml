/// @param list
/// @param variable_name
/// @param value_to_check

var _list = argument0
var _variable_name = argument1
var _value_to_check = argument2

var _size = ds_list_size(_list)

for(var i=0;i<_size;i++) {
	var _item = _list[| i]
	if instance_exists(_item) {
		if variable_instance_exists(_item,_variable_name)
			if variable_instance_get(_item,_variable_name) == _value_to_check return true
	}
}

return false