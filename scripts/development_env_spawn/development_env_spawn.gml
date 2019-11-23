var btn_spawn = instance_create_layer(50,425,"Development",o_spawn)
btn_spawn.spawn_object = o_button
ds_list_add(menu_items,btn_spawn)

btn_spawn = instance_create_layer(50,490,"Development",o_spawn)
btn_spawn.spawn_object = o_body
ds_list_add(menu_items,btn_spawn)

btn_spawn = instance_create_layer(50,555,"Development",o_spawn)
btn_spawn.spawn_object = o_event
ds_list_add(menu_items,btn_spawn)

btn_spawn = instance_create_layer(50,620,"Development",o_spawn)
btn_spawn.spawn_object = o_item
ds_list_add(menu_items,btn_spawn)

event_test = event_create(300,685,"on_click")
ds_list_add(menu_items,btn_spawn)

btn = instance_create_layer(200,30,"Buttons",o_gui_button)
btn.name = "btn_live"
btn.text = "development"
btn.is_editor_button = true

btn = instance_create_layer(350,30,"Buttons",o_gui_button)
btn.name = "btn_save"
btn.text = "save"
btn.is_editor_button = true

btn = instance_create_layer(400,30,"Buttons",o_gui_button)
btn.name = "btn_clear"
btn.text = "clear"
btn.is_editor_button = true

btn = instance_create_layer(450,30,"Buttons",o_gui_button)
btn.name = "btn_delete"
btn.text = "delete"
btn.stays_pressed = true
btn.is_editor_button = true