/// @description set alarms to spawn enemies

//if all of the enemies have been defeated wait for timing/room_speed seconds

//as long as we haven't completed the last wave
if(wave < array_height_2d(arrayWave)){
	
	//spawn a number of normal enemies at short, randomized intervals
	if( (alarm[0] == -1) && (arrayWave[wave, 0] > 0)){
		alarm[0] = room_speed + irandom_range(10, 20);
	}
	
	//spawn a number of shock enemies at longer, randomized intervals
	if( (alarm[1] == -1) && (arrayWave[wave, 1] > 0)){
		alarm[1] = room_speed*4 + irandom_range(10, 20);
	}
	
	//if all enemies from the current wave have been spawned start the wave gap
	if( ((arrayWave[wave, 0] + arrayWave[wave, 1]) <= 0) && (wave < 4 ) &&  !waveGap){
		alarm[2] = room_speed*20;	
		waveGap = true;
	}
}

//if all enemies in all waves have been defeated you have won the level!
if ( (wave = array_height_2d(arrayWave)) && !(instance_exists(obj_enemies))){
	room_goto(rm_win);	
}