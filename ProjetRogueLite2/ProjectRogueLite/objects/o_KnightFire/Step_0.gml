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
}

if canAttack = 0 
{
	

if (y > focus.y)
{ 
sprite_index = s_KnightFireBackWalk
}else if y < focus.y {
sprite_index =	s_KnightFireFrontWalk
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
   sprite_index = s_KnightFireFrontWalk
	} 
	else 
	{
	sprite_index = s_KnightFireBackWalk	
	}
   lastDirectionX = 1
   image_xscale = 1   
}


else if (xprevious > x) 
{
	if lastDirectionY = 1
{
   sprite_index = s_KnightFireFrontWalk
	} 
	else 
	{
	sprite_index = s_KnightFireFrontWalk	
	}
	lastDirectionX = -1
	image_xscale = -1
} 


if (yprevious < y)
{
    sprite_index = s_KnightFireFrontWalk
	lastDirectionY = 1
 } 

else if (yprevious > y) 
{
    sprite_index = s_KnightFireBackWalk 
	lastDirectionY = -1
}
	


if distance_ToPlayer < 500 and canAttack = 0
{
	if instance_exists(o_Jester) 
	{
		lastSprite = sprite_index
		image_index = 0
		if lastDirectionY = 1
		{
		sprite_index = s_KnightFireFrontAttack
		}
		else sprite_index = s_KnightFireFrontAttack
		canMove = 1 
		canAttack = 1
		alarm[0] = 400
		alarm[1] = 15
		var nearest_player = instance_nearest(x, y, o_Jester );
        var aim_angle = point_direction(x, y, nearest_player.x, nearest_player.y); // Calcul de l'angle entre la flèche et l'ennemi le plus proche
        var distance = instance_create_depth(x, y, -1, o_ArrowFire);// Création de la flèche
		distance.inflict_Damage = character_Attack; distance.damage_Author = self;
        with (distance) {
            speed = 6; //vitesse de la boule de feu
            direction = aim_angle; 
            image_angle = direction;
     }
   }
} 


