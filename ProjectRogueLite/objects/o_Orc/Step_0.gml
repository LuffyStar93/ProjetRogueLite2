character_Speed = 1 * speed_Debuff

if instance_exists(o_Jester) {
focus = instance_nearest(x, y, o_Jester);
var distance_ToPlayer = point_distance(x, y, focus.x, focus.y+20);

//CHASE
if (distance_ToPlayer < pursuit_Range) {
    var direction_ToPlayer = sign(focus.x - x);

if canMove = 0 {
    if (mp_grid_path(global.grid,path,x,y,focus.x,focus.y,1)) {
        xgoto = path_get_point_x(path, 1);
        ygoto = path_get_point_y(path, 1);
    mp_potential_step(xgoto, ygoto, character_Speed, false);
    } else {
    mp_potential_step(focus.x,focus.y,character_Speed,false);
    }

 
  }
 }
}

if character_Health <= 0 
{
	instance_destroy()
	kill_Count ++
}

if canAttack = 0 
{
	

if (y > focus.y)
{ 
sprite_index = s_OrcBackWalk
}else if y < focus.y {
sprite_index =	s_OrcFrontWalk
} 

}




if (x > focus.x) {
        image_xscale = -1;
} else if (x < focus.x) {
image_xscale = 1;
}

if (xprevious < x) {
	if lastDirectionY = 1
	{
   sprite_index = s_OrcFrontWalk
	} 
	else 
	{
	sprite_index = s_OrcBackWalk	
	}
   lastDirectionX = 1
   image_xscale = 1   
}


else if (xprevious > x) 
{
	if lastDirectionY = 1
{
   sprite_index = s_OrcFrontWalk
	} 
	else 
	{
	sprite_index = s_OrcFrontWalk	
	}
	lastDirectionX = -1
	image_xscale = -1
} 


if (yprevious < y)
{
    sprite_index = s_OrcFrontWalk
	lastDirectionY = 1
 } 

else if (yprevious > y) 
{
    sprite_index = s_OrcBackWalk 
	lastDirectionY = -1
}
	


if distance_ToPlayer < 50 and canAttack = 0
{
	lastSprite = sprite_index	
	
	if (y > focus.y)
	{ 
	sprite_index = s_OrcBackAttack
	}
	
	else if y < focus.y 
	{
	sprite_index =	s_OrcFrontAttack
	} 

	canMove = 1
	canAttack = 1
	alarm[0] = 25/character_AttackSpeed
	alarm[1] = 40/character_AttackSpeed
	
}

