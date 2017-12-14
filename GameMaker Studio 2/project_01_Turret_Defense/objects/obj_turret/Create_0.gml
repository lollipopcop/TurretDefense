/// @description  Initialize Turret Variables
range = CELL_WIDTH*3; // Distance turret can fire
rateOfFire = 30;
my_health = 75;
my_turretHole = noone;

//choose correct sprite image
image_speed = 0;
image_index = 0;

/*this is set to true when it is placed in the world using a button
once set to true it will enable the step event to function normally*/
created = false;

/* */
/*  */
