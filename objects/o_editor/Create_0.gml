/// @description Insert description here
// You can write your code in this editor
global.log = ds_list_create()
name = "EDITOR"
state = "inactive"
next_state = "development"
prev_state = "inactive"
command = noone

menu_items = ds_list_create()

instance_create_layer(0,0,"Instances",o_gui)
instance_create_layer(544,160,"Objects",o_mouse)

btn = instance_create_layer(200,30,"Objects",o_gui_button)
btn.name = "btn_live"
btn.text = "development"
btn.is_editor_button = true

btn = instance_create_layer(350,30,"Objects",o_gui_button)
btn.name = "btn_save"
btn.text = "save"
btn.is_editor_button = true

btn = instance_create_layer(400,30,"Objects",o_gui_button)
btn.name = "btn_clear"
btn.text = "clear"
btn.is_editor_button = true

save_map = ds_map_create()

test = 2
if file_exists("dev.dat") {
	next_state = "load_game"
}
else {
	if test == 1 testenv1()
	if test == 2 testenv2()
}