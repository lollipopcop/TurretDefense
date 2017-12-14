/// @description  Creates / Fires Projectile when created

// Check enemy (still) exists, if so, create projectile
if(instance_exists(enemy) && (distance_to_object(enemy) < my_range)) {
    bullet = instance_create(x, y, obj_homingBullet);
    bullet.speed = obj_homingBullet.my_speed;
    bullet.my_turret = id;
    bullet.my_enemy = enemy;
}

