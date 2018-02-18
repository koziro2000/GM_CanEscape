/// @description Insert description here
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_attack = keyboard_check_pressed(vk_space);
move_dir = key_right - key_left;

switch(myState) 
{
	case playerState.idle:
	{
		if (sprite_index != spr_player_idle)
		{
			sprite_index = spr_player_idle;
		}
		
		if (key_attack != 0)
		{
			image_index = 0;
			myState = playerState.attack;
			break;
		}		
		if (move_dir != 0)
		{
			image_index = 0;
			myState = playerState.walk;
			break;
		}
		
		break;
	}

	case playerState.walk:
	{
		if (sprite_index != spr_player_walk) 
			sprite_index = spr_player_walk;
			
		if (move_dir != 0) {
			x += move_speed * move_dir;
			image_speed = move_speed / 3;
			image_xscale = move_dir;
		}

		if (move_dir == 0) {			
			image_index = 0;
			myState = playerState.idle;
		}
		
		if (key_attack != 0)
		{
			image_index = 0;			
			myState = playerState.attack;
			break;
		}	
		
		break;
	}
	
	case playerState.attack:
	{		
					
		if (sprite_index != spr_player_attack) 
		{
			sprite_index = spr_player_attack;
		}
		
		break;
	}
	
	case playerState.hit:
	{
		if (sprite_index != spr_player_hit) 
		{
			sprite_index = spr_player_hit;
		}
		break;
	}
	
	default:
	{
		//myState = playerState.idle;
	}
}



