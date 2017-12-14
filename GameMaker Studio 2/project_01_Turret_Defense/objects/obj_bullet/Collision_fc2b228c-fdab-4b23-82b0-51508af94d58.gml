/// @description  Deal Damage
if (instance_exists(other)){
    other.my_health -= damage;
    instance_destroy();
}

