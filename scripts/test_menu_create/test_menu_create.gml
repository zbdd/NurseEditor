var size = argument0

var menu = instance_create_layer(x,y,"Menus",o_menu)

for (var i=0;i<size;i++) {
	ds_list_add(menu.objects,instance_create_layer(x,y,"Buttons",o_spawn))
}