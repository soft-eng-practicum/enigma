/// @description movement / collision

//----------ALTER SPEED
if (input_walk or input_run) {
	spd = abs((input_walk * w_spd) - (input_run * r_spd));	
}
else { spd = n_spd; }

//----------RESET MOVEMENT VARIABLES
moveX = 0;
moveY = 0;

//----------INTENDED MOVEMENT
moveY = (input_down - input_up) * spd;
if (moveY == 0) { moveX = (input_right - input_left) * spd; }

//----------COLLISION CHECKER

/** Horizontal */
if (moveX != 0) {
<<<<<<< HEAD
	if (place_meeting(x + moveX, y, obj_wall)) {
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, obj_wall)) { x += sign(moveX); }
=======
	if (place_meeting(x + moveX, y, oCollision)) {
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, oCollision)) { x += sign(moveX); }
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
			else { break; }
		}
		moveX = 0;
	}
}

/** Vertical */
if (moveY != 0) {
<<<<<<< HEAD
	if (place_meeting(x, y + moveY, obj_wall)) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), obj_wall)) { y += sign(moveY); }
=======
	if (place_meeting(x, y + moveY, oCollision)) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), oCollision)) { y += sign(moveY); }
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
			else { break; }
		}
		moveY = 0;
	}
}

//----------OBJECTS
var inst = instance_place(x, y, oTransition);

if (inst != noone) {
	// Goes to rm_grass_0
	with(oGame) {
		if (!doTransition) {
			room_goto(inst.targetRoom);
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			doTransition = true;
		}
	}
}

//----------APPLY MOVEMENT
x += moveX;
y += moveY;