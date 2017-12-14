/// @description  Initialize Enemy variables

// Define an enemies health / speed for each instance
my_health = 100;
my_speed = 1;

image_speed = 0.5;
last_position = x;
current_position = x;

//choose a random path based on the current room and follow it to the end
my_path = scr_choosePath(room);
path_start(my_path, my_speed, path_action_stop, true);

