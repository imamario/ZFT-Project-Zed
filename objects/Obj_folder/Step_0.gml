
switch(state){

case "start":
	image_angle+=spin
	x=lerp(x,288,0.1);
	y=lerp(y,128,0.1);
	if x=288 && y=128{timer+=0.01}
	if timer>2{state="start2"}
	break;	
	
case "start2":
	timer+=0.01
	image_angle=lerp(image_angle,360,0.1)
	if timer>4{image_index=1}
	if timer>5{
		image_xscale=lerp(image_xscale,1.4,0.1)
		image_yscale=image_xscale
		if image_xscale=1.4 && timer>10{room_goto(Rm_menu)}
	}
	break;	
}