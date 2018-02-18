/// @description Insert description here

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
		break;
	}
	
	case enemyState.walk:
	{
		if (sprite_index != spr_enemy_walk)
		{
			image_speed = 1;
			sprite_index = spr_enemy_walk;
		}
		break;
	}
}