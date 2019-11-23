/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = string_width(text)/sprite_width
image_yscale = string_height(text)/sprite_height

if state != "inactive" {
	if state == "on_click" {
		if global.event == "mouse::left_click_pressed_pressed"  {
			events_add(name,"pressed")
			next_state = "waiting"
		
			if prev_state == "waiting" next_state = "active"
			if !stays_pressed alarm[0] = room_speed * 0.2
		} else next_state = "active"
		
	}
	if state == "waiting" {
		if global.event == "mouse::right_click_pressed_pressed" next_state = "active"
	}
}