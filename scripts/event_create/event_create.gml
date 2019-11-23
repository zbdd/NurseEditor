/// @param x
/// @param y
/// @param type

var xx = argument0
var yy = argument1
var type = argument2

var object = instance_create_layer(xx,yy,"Development",o_event)
object.name = type
if type == "on_click" object.sprite_index = sp_click

return object