/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)

var game = instance_find(o_game,0)
draw_text(x,y,"Log size: " + string(array_length_1d(game.log)))	

var text_size = 16
for (var i=1;i<array_length_1d(game.log) and i<10 ;i++) {
	if array_length_1d(game.log) - i < 0 break
	
	var text = game.log[array_length_1d(game.log) - i]
	text_size = string_height(text)
	draw_text(x,y+(i)*text_size,text)	
}