/// @description Insert description here

move_speed = 5
image_speed = move_speed / 3;

enum playerState
{
	idle,
	walk,
	attack,
	hit
}

myState = playerState.idle;