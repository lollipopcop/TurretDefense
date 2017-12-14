if(instance_exists(other)){
    other.my_health -= damage;
    instance_create(x, y, obj_explosion);
    instance_destroy();
}

