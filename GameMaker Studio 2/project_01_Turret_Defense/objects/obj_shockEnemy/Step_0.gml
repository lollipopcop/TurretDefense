/// @description  Set and check enemies movement and health

// Check to see if the enemy has died
if(my_health <= 0){
    instance_destroy();
    global.money += 2;
}

// Set image direction based on movement direction
current_position = x; // Check current x position
if(current_position == last_position) {
    // Keep image as is
} else if(current_position < last_position) {
    image_xscale = 1;
} else {
    image_xscale = -1;
}

last_position = x; // Set last_x to current position for next calculation

// damage nearby turrets
enemy = instance_nearest(x, y, obj_turrets);

// if enemy is in range shoot at it
if ((distance_to_object(enemy) < range) && (alarm[0] == -1) && (enemy.created = true) ) {
    //This sets the firing rate eto be slightly random
    alarm[0] = irandom_range(rateOfFire-3, rateOfFire+3);
}


