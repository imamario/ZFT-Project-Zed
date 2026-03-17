state="intro"
timer=0
timer2=0
spin=3

buttons=[
	{//play
		x: 224,
		y: 288,
		text: "incidents"
	},
	
	{//options
		x: 224,
		y: 388,
		text: "registry"
	},
	
	{//quit
		x: 224,
		y: 488,
		text: "finish"
	}
]


if room!=Rm_menu{
state="intro"
timer=0
timer2=0
}else{
state="start"
x = 976;
y = 528;
image_index=1;
}