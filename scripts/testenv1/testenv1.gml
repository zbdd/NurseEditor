//default test items

var obj = instance_create_layer(544,160,"Objects",o_body)
obj.allow_add = true

var little_obj = instance_create_layer(544,300,"Objects",o_body)
little_obj.name = "little one"
ds_list_add(obj.relations,little_obj)
little_obj = instance_create_layer(544,600,"Objects",o_body)
little_obj.name = "little two"
ds_list_add(obj.relations,little_obj)

obj = instance_create_layer(200,160,"Objects",o_body)
obj.allow_add = true

instance_create_layer(0,0,"Instances",o_gui)
instance_create_layer(544,160,"Objects",o_mouse)

btn = instance_create_layer(200,30,"Objects",o_gui_button)
btn.name = "btn_live"
btn.text = "development"
btn.is_editor_button = true