//Add rotation of sprite based on player location
//Add interactive button with object that sends you into another room with object instance spawned
//and a battle system, hp system, for that specific event

var dir = point_direction(x, y, PlayerTestObject.x, PlayerTestObject.y);

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);