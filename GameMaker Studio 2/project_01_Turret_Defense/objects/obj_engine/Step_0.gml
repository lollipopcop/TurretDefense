if ( global.cores <= 0 ){
    room_persistent = false;
    room_goto(rm_lose);
}

if(global.money > 40){
    room_goto(rm_win);
}

