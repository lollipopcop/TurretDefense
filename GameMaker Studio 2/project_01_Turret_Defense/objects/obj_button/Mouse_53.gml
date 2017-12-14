/// @description spawn the turret based on the button

//indicates how many times the left mouse button has been pressed
leftPressed++;

//local variable to check if the created turret is going to collide with anything
var isCollision = false;
var turretHoleID = noone;

//create the turret to be placed in the world
if(cost <= global.money){
    if ( (position_meeting( mouse_x, mouse_y, id)) && (buttonPressed == false)){
        turret = instance_create(mouse_x, mouse_y, my_turret);
        turret.image_index = 1;
        leftPressed = 1;
        buttonPressed = true;
    } 
    
    //spawn the turret in the world properly if it doesn't collide with things
    if ( leftPressed == 2 && instance_exists(turret)) {
    
    //evaluate to see if there is any collision between the turret and any obj_turretHole
        if(place_meeting(mouse_x, mouse_y, obj_turretHole)){
            
            //set collision with turrethole to true
            isCollision = true;
            
            //grab the instance of the turrethole
            turretHoleID = instance_place(mouse_x, mouse_y, obj_turretHole);
        }
            //if there isn't any collision reset all variables effectively spawning the turret at that location                        
        if((isCollision) && (turretHoleID.full == false))
        {
            turret.x = turretHoleID.x;
            turret.y = turretHoleID.y;
            turretHoleID.full = true;
            turret.my_turretHole = turretHoleID;
            global.money -= cost;
            turret.image_index = 0;
            turret.created = true;
                
            turret = noone;
            leftPressed = 0;
            buttonPressed = false;
            isCollision = false;
            turretHoleID = noone;
        }

        //if there is collision reset number of left mouse presses to 1
        else {
            leftPressed = 1;
        }
    }
}

