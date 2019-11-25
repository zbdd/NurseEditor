/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

menu = instance_create_layer(x,y,"Menus",o_menu)
menu.sprite_index = -1
var btn = instance_create_layer(x,y,"Buttons",o_button)
ds_list_add(menu.objects,btn)