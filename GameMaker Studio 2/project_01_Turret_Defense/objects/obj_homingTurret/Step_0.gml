

/// Aim at closest Enemy (in range) and shoot projectile

if(created){
    enemy = instance_nearest(x, y, obj_enemies);
    
    // if enemy is in range shoot at it
    if ((distance_to_object(enemy) < my_range) && (alarm[0] == -1)) {
        //This sets the firing rate eto be slightly random
        alarm[0] = irandom_range(rateOfFire-5, rateOfFire+5);
    }
    
    if( my_health <= 0){
        my_turretHole.full = false;
        instance_destroy();
    }
}

