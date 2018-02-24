/// @description Insert description here
dirPlayer = sign(obj_player.x - x);
switch(myState)
{
	case enemyState.hit:
	{
		if (isHit != 0)
		{
			if (sprite_index != spr_enemy_hit)
			{
				sprite_index = spr_enemy_hit;
			}
			image_xscale = dirPlayer;
			isHit =  lerp(isHit, 0, 0.5);
			image_index = 1;
			x += hsp;
		}
		else
		{
			myState = enemyState.idle;
		}
		break;
	}
	
	case enemyState.idle:
	{
		hsp = 0;
		if (sprite_index != spr_enemy_idle)
		{
			image_speed = 1;
			sprite_index = spr_enemy_idle;
		}
		image_xscale = dirPlayer;		
		
		if (distance_to_object(obj_player) <= detect_player_range)
		{
			myState = enemyState.walk;
		}
		
		break;
	}
	
	case enemyState.walk:
	{		
		if (sprite_index != spr_enemy_walk)
		{
			image_speed = 1;
			sprite_index = spr_enemy_walk;
		}		
		//Figure out where is the player
		if (dirPlayer <> 0) {
			x += hsp_max * dirPlayer;
			image_xscale = dirPlayer;
		}
		
		if (distance_to_object(obj_player) > detect_player_range) 			
		{
			myState = enemyState.idle;
		}
		
		if (distance_to_object(obj_player) <= detect_attack_range)
		{
			attack_sig = random(10) mod 3;
			if (attack_sig <> 0)
			{
				myState = enemyState.attack;	
			}
		}
		break;		
	}
	
	case enemyState.attack:
	{
		if (sprite_index != spr_enemy_attack)
		{
			image_speed = 1;
			sprite_index = spr_enemy_attack;
		}
		
		//summon hit box		
		if (image_index >= 1 and image_index <= 2)
		{					
			with(instance_create_depth(x, y, -1000,obj_enemy_attack_hitbox))
			{
				image_xscale = other.image_xscale;
				with(instance_place(x, y, obj_player))
				{
					if (isHit == 0)
					{
						image_speed = 0;
						isHit = 1;
						myState = playerState.hit;
						hsp = sign(x - other.x) * 1.5;
					}			
				}
			}
		}
		
		
		if (distance_to_object(obj_player) > detect_attack_range)
		{
			//Todo: introduce attack state
			myState = enemyState.walk;	
		}		
	}
}