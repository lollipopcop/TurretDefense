/// @description  Set and check enemies movement and health


/*
// Move enemy set direction and speed
motion_set(direction, my_speed);
*/
// Check to see if the enemy has died
if(my_health <= 0){
    instance_destroy();
    global.money += 1;
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




/* */
/*  */
