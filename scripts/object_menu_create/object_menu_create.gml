/// @param parent
var parent = argument0
var list = ds_list_create()

var event = ""
event = instance_create_layer(x,y,"Buttons",o_button)
event.name = "on_click"
event.text = "on_click"
ds_list_add(event.relations,parent)
ds_list_add(list,event)

event = instance_create_layer(x,y,"Buttons",o_button)
event.name = "rename"
event.text = "rename"
ds_list_add(event.relations,parent)
ds_list_add(list,event)

event = instance_create_layer(x,y,"Buttons",o_button)
event.name = "delete"
event.text = "delete"
ds_list_add(event.relations,parent)
ds_list_add(list,event)

event = instance_create_layer(x,y,"Buttons",o_button)
event.name = "move"
event.text = "move"
ds_list_add(event.relations,parent)
ds_list_add(list,event)

return list