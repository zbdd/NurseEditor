var size = argument0

var menu = instance_create_layer(room_width*0.1,room_height*0.9,"Menus",o_menu)

for (var i=0;i<size;i++) {
	ds_list_add(menu.objects,instance_create_layer(x,y,"Buttons",o_spawn))
}
menu_set_for(menu,"spawn_menu")

var menu2 = instance_create_layer(room_width*0.2,room_height*0.9,"Menus",o_menu)
with menu2 image_blend = c_red

for (var i=0;i<size;i++) {
	ds_list_add(menu2.objects,instance_create_layer(x,y,"Buttons",o_condition))
}