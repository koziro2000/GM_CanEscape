/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
hsp_f = .0;
vsp_f = .0;
grv = 0.2;
frc = 0.1;
acc = 0.5;
jmp = -5
hsp_max = 3;
vsp_max = 5;
jbuff = 0;
isHit = 0;

image_index = 0;
image_speed = 1;

enum enemyState
{
	idle,
	walk,
	hit
}

myState = enemyState.idle;