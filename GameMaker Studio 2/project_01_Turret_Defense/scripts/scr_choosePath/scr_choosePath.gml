/// @description choosePath(roomName)
/// @function choosePath
/// @param roomName

var roomName = argument0;

var paths;

//based on the input room set up the path array
switch(roomName){
    case rm_AlphaRoom:
        paths[0] = AlphaLevelPath1;
        break;
    case rm_testLevel:
        paths[0] = path_left;
        paths[1] = path_middle;
        paths[2] = path_right;
        break;
    case rm_level01:
        paths[0] = path_level01_01;
        paths[1] = path_level01_02;
        paths[2] = path_level01_03;
        paths[3] = path_level01_04;
        break;
}

//choose a random path from the created array

var randomPath = paths[ irandom(array_length_1d(paths)-1) ];

paths = 0;

return randomPath;
