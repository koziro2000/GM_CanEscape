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
			image_speed = 1;
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
		hsp = move_speed;	
		if (move_dir != 0) {
			x += hsp * move_dir;
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
		
		//summon hit box
		if (image_index >= 1 and image_index <= 2)
		{					
			with(instance_create_depth(x, y, -1000,obj_player_attack_hitbox))
			{
				image_xscale = other.image_xscale;
				with(instance_place(x, y, obj_enemy_root))
				{
					if (isHit == 0)
					{
						image_speed = 0;
						isHit = 1;
						myState = enemyState.hit;
						hsp = sign(x - other.x) * 1.5;
						image_xscale = sign(hsp);						
					}			
				}
			}
		}
		
		break;
	}
	
	case playerState.hit:
	{
		
		if (isHit != 0)
		{
			if (sprite_index != spr_player_hit) 
			{
				sprite_index = spr_player_hit;
			}			
			isHit =  lerp(isHit, 0, 0.5);
			image_index = 1;
			x += hsp;
		}
		else
		{
			myState = playerState.idle;
		}
		break;
	}
	
	default:
	{
		//myState = playerState.idle;
	}
}



