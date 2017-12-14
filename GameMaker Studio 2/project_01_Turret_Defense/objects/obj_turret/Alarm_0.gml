/// @description  Creates / Fires Projectile when created

// Check enemy (still) exists, if so, create projectile
if(instance_exists(enemy) && (distance_to_object(enemy) < range)) {
    bullet = instance_create(x, y, obj_bullet);
    bullet.speed = obj_bullet.my_speed;
    bullet.direction = point_direction(x, y, enemy.x, enemy.y);
}

