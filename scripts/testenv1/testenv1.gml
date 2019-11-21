//default test items

var obj = instance_create_layer(544,160,"Objects",o_object)
obj.allow_add = true
var little_obj = instance_create_layer(544,300,"Objects",o_object)
little_obj.name = "little one"
ds_list_add(obj.relations,little_obj)
little_obj = instance_create_layer(544,600,"Objects",o_object)
little_obj.name = "little two"
ds_list_add(obj.relations,little_obj)
little_obj = instance_create_layer(544,600,"Objects",o_object)
little_obj.name = "little three"
ds_list_add(obj.relations,little_obj)

obj = instance_create_layer(200,160,"Objects",o_object)
obj.allow_add = true

instance_create_layer(0,0,"Instances",o_gui)
instance_create_layer(544,160,"Objects",o_mouse)
instance_create_layer(64,352,"Objects",o_spawn)
instance_create_layer(110,25,"Objects",o_gui_button)

//
var btn_spawn = instance_create_layer(64,460,"Objects",o_spawn)
btn_spawn.sprite_index = sp_button
btn_spawn.name = "btn_spawn"
btn_spawn.spawn_object = o_button