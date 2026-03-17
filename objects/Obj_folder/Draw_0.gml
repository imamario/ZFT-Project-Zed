draw_self()
if (state == "Options") {
    for (var i = 0; i < array_length(buttons); i++) {
        var _btn = buttons[i];
        
        // 1. Draw the text
        draw_text(_btn.x, _btn.y, _btn.text);
        
        // 2. Calculate the width and height of this specific text
        var _w = string_width(_btn.text);
        var _h = string_height(_btn.text);
        
        // 3. Draw the rectangle using absolute coordinates
        // We add a small padding (like 5 pixels) so the box isn't touching the letters
        var _pad = 5;
        draw_rectangle(_btn.x - _pad, _btn.y - _pad, _btn.x + _w + _pad, _btn.y + _h + _pad, true);
		var _collision = collision_rectangle(_btn.x - _pad, _btn.y - _pad, _btn.x + _w + _pad, _btn.y + _h + _pad, self, false , false);
		
		show_debug_message(_collision)
    }
}

