if ( instance_exists(my_enemy) ){
    direction = point_direction(x, y, my_enemy.x, my_enemy.y);
    image_angle = direction - 90;
}

if ( distance_to_object(my_turret) > my_turret.my_range ){
    instance_destroy();
    instance_create(x, y, obj_explosion);
}

