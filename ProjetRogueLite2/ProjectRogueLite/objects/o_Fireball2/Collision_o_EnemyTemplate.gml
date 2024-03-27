 with (other) {
    if (can_BeHit = 0) {
	alarm[3] = 25	
    can_BeHit = 1
	var fireBallDamage = ((o_Jester.character_Attack / 2) - character_Armor)
	if fireBallDamage < 0
	{
		fireBallDamage = 1
	}
    character_Health -= fireBallDamage;
		var aaa = instance_create_depth(other.x+random_range(-20,20),other.y+random_range(-20,20),-2,o_damagetext);
    aaa.text = fireBallDamage;
	aaa.color = c_aqua;
    }
    if (canAttack = 0) {
if (canMove = 0 or 1) { 
alarm[1] = 25;
canMove = 2;
canAttack = 2;
speed -= 0;
path_delete(path);
  }
}
}
 
character_Distance = point_direction(o_Jester.x,o_Jester.y, other.x, other.y);
knockback_Distance = -30; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)
instance_destroy()

//DECOMMENTE SI TU VEUT UNE INTERRACTION MARRANTE 
//x -= lengthdir_x(other.character_Speed * -10, character_Distance);
//y -= lengthdir_y(other.character_Speed * -10, character_Distance);


if place_free(other.x+other.character_Speed * 1.1,other.y+other.character_Speed * 1.1) {
other.x -= lengthdir_x((other.character_Speed/2) * knockback_Distance, character_Distance);
other.y -= lengthdir_y((other.character_Speed/2) * knockback_Distance, character_Distance);
    }