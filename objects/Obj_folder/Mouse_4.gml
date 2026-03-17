if (state == "Options") {
    var _len = array_length(buttons);
    
    for (var i = 0; i < _len; i++) {
        var _btn = buttons[i];
        
        // Calculate the same boundaries you used for drawing
        var _w = string_width(_btn.text);
        var _h = string_height(_btn.text);
        var _pad = 5;
        
        var _x1 = _btn.x - _pad;
        var _y1 = _btn.y - _pad;
        var _x2 = _btn.x + _w + _pad;
        var _y2 = _btn.y + _h + _pad;

        // Check if the mouse is within this specific button's area
        if (point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2)) {
            // This button was clicked!
            show_debug_message("Clicked: " + _btn.text);
            
            // Handle different button actions
            if (_btn.text == "incidents") { 
				with(Obj_Menucam){pos=1}
				
				
				
				}
			
			
			
			
            if (_btn.text == "finish")    { game_end(); }
            
            // Stop the loop once we find a click to save performance
            break; 
        }
    }
}