show_debug_message("x: " + string(x))
show_debug_message("y: " + string(y))
show_debug_message("Timer: " + string(timer))
show_debug_message("State: " + string(state))

//fix this shit
if state=="intro"{
	x=lerp(x,room_width/2,0.1)
	y=lerp(y,room_height/2,0.1)
	spin=3
	if x=960.00{
		spin=0 timer+=0.1 if timer>1{state="TProom"}
	}
	image_angle+=spin
}