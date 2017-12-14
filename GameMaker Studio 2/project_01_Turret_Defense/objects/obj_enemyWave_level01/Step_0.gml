/// @description set alarms to spawn enemies

//if all of the enemies have been defeated wait for timing/room_speed seconds

if(wave < array_height_2d(arrayWave)){
	if( (alarm[0] == -1) && (arrayWave[wave, 0] > 0)){
		alarm[0] = room_speed + irandom_range(10, 20);
	}

	if( (alarm[1] == -1) && (arrayWave[wave, 1] > 0)){
		alarm[1] = room_speed*4 + irandom_range(10, 20);
	}

	if( ((arrayWave[wave, 0] + arrayWave[wave, 1]) <= 0) && (wave < 4 ) &&  !waveGap){
		alarm[2] = room_speed*20;	
		waveGap = true;
	}
}

if ( (wave = array_height_2d(arrayWave)) && !(instance_exists(obj_enemies))){
	room_goto(rm_win);	
}