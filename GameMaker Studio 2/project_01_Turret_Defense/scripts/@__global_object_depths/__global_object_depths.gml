// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_turrets
global.__objectDepths[1] = 0; // obj_bullet
global.__objectDepths[2] = 0; // obj_turret
global.__objectDepths[3] = 0; // obj_homingTurret
global.__objectDepths[4] = 0; // obj_homingBullet
global.__objectDepths[5] = 10000; // obj_turretHole
global.__objectDepths[6] = 1000; // obj_coreSystem
global.__objectDepths[7] = -1000; // obj_explosion
global.__objectDepths[8] = 0; // obj_enemy
global.__objectDepths[9] = 0; // obj_shockEnemy
global.__objectDepths[10] = 0; // obj_electrocution
global.__objectDepths[11] = 0; // obj_enemies
global.__objectDepths[12] = 0; // obj_button
global.__objectDepths[13] = 0; // obj_wall
global.__objectDepths[14] = 0; // obj_exitButton
global.__objectDepths[15] = 0; // obj_startButton
global.__objectDepths[16] = 0; // obj_collision
global.__objectDepths[17] = 0; // obj_engine
global.__objectDepths[18] = 0; // obj_enemySpawn
global.__objectDepths[19] = 0; // obj_enemyWave_level01


global.__objectNames[0] = "obj_turrets";
global.__objectNames[1] = "obj_bullet";
global.__objectNames[2] = "obj_turret";
global.__objectNames[3] = "obj_homingTurret";
global.__objectNames[4] = "obj_homingBullet";
global.__objectNames[5] = "obj_turretHole";
global.__objectNames[6] = "obj_coreSystem";
global.__objectNames[7] = "obj_explosion";
global.__objectNames[8] = "obj_enemy";
global.__objectNames[9] = "obj_shockEnemy";
global.__objectNames[10] = "obj_electrocution";
global.__objectNames[11] = "obj_enemies";
global.__objectNames[12] = "obj_button";
global.__objectNames[13] = "obj_wall";
global.__objectNames[14] = "obj_exitButton";
global.__objectNames[15] = "obj_startButton";
global.__objectNames[16] = "obj_collision";
global.__objectNames[17] = "obj_engine";
global.__objectNames[18] = "obj_enemySpawn";
global.__objectNames[19] = "obj_enemyWave_level01";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for