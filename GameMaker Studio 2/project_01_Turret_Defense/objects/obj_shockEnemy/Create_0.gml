/// @description  Initialize Enemy variables
range = CELL_WIDTH; // Distance turret can fire
rateOfFire = 30;
damage = 10;

// Define an enemies health / speed for each instance
my_health = 75;
my_speed = 1.25; //+ random(1);

image_speed = 0.5;
last_position = x;
current_position = x;

my_path = scr_choosePath(room);
path_start(my_path, my_speed, path_action_stop, true);

