function music_play(argument0,argument1){
	if global.state="running"{
	
		if !audio_is_playing(argument0){
			audio_play_sound(argument0,1,argument1)
		}
	
	}else if global.state="rage"{
		
		if !audio_is_playing(Snd_ragedtheme){
			audio_play_sound(Snd_ragedtheme,1,false)
		}
	}else{audio_stop_sound(argument0) audio_stop_sound(Snd_ragedtheme)}
}