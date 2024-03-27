if !(place_meeting(x, y, o_StoneBlock)) {
instance_create_depth(x,y,-1,o_Smoke)
x = 1220;
y = 700;
}

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
sprite_index = s_KingBackWalk
}else if y < focus.y {
sprite_index =	s_KingFrontWalk
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
   sprite_index = s_KingFrontWalk
	} 
	else 
	{
	sprite_index = s_KingBackWalk	
	}
   lastDirectionX = 1
   image_xscale = 1   
}


else if (xprevious > x) 
{
	if lastDirectionY = 1
{
   sprite_index = s_KingFrontWalk
	} 
	else 
	{
	sprite_index = s_KingFrontWalk	
	}
	lastDirectionX = -1
	image_xscale = -1
} 


if (yprevious < y)
{
    sprite_index = s_KingFrontWalk
	lastDirectionY = 1
 } 

else if (yprevious > y) 
{
    sprite_index = s_KingBackWalk 
	lastDirectionY = -1
}
	


if distance_ToPlayer < 100 and canAttack = 0
{
	lastSprite = sprite_index	
	
	if (y > focus.y)
	{ 
	sprite_index = s_KingBackAttack
	}
	
	else if y < focus.y 
	{
	sprite_index =	s_KingFrontAttack
	} 

	canMove = 1
	canAttack = 1
	alarm[0] = 80/character_AttackSpeed
	alarm[1] = 120/character_AttackSpeed
	
}

if boss = 0 && character_Health < 100 { boss = 1; character_Speed += 1; character_AttackSpeed += 1; character_Armor += 2; }