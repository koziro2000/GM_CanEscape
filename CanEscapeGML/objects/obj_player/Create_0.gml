/// @description Insert description here

move_speed = 5
image_speed = 1;
isHit = 0;
hsp = 0;
enum playerState
{
	idle,
	walk,
	attack,
	hit
}

myState = playerState.idle;