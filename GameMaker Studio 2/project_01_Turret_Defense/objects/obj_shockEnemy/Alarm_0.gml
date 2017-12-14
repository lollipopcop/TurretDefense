// Check enemy (still) exists, if so, create projectile
if(instance_exists(enemy) && (distance_to_object(enemy) < range)) {
    enemy.my_health -= damage;
    instance_create(x, y, obj_electrocution);
}

