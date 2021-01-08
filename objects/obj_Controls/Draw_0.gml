switch(room){
	case rm_howtoplay:
	draw_set_font(fnt_x)
			draw_set_halign(fa_center);
		var w = c_white
		var r = c_red
		var b = c_blue
		var o = c_orange
		var p = c_purple
		var g = c_green
		var k = c_black
		
		draw_text_transformed_color(
			room_width/2,230, "Directions",
			2, 2, 0, o,o,o,o, 1
		);
	draw_set_font(fnt_2)
		draw_text_transformed_color(
			room_width/2,300, 
@"A: Move left
D: Move right
R: Restart
ESC: Pause
Space: Jump
Left Click: Shoot",
			2, 2, 0, w, w, w, w, 1
		);
}

