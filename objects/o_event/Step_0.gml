/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();
for (var i=0;i<ds_list_size(relations);i++) {
	var inst = relations[| i]	
	with (inst) {
		if state == other.name {
			events_add(other.id,"on_click_trigger")	
		}
	}
}