with (other) {
	
    if (can_BeHit = 0) {
		//sword sfx collision

	alarm[3] = 25
	var bonus_Damage = 1
    can_BeHit = 1

	if instance_exists(o_Spider) 
	{
	if global.bonus9 = 1 and other.id = o_Spider.id
		{ 
		var bonus_Damage = 1.1	
		}
	}
	if instance_exists(o_Orc) 
	{
	if global.bonus10 = 1 and other.id = o_Orc.id 
		{
		var bonus_Damage = 1.1	
		} 
	}
	var crit_Chance = irandom_range(0, 100)
	
    character_Health -= ((o_Jester.character_Attack/2) - character_Armor) * bonus_Damage;
    
	
	var total_Damage = ((o_Jester.character_Attack/2)  - character_Armor) * bonus_Damage
		if total_Damage <= 0 { total_Damage = 1; }
	character_Health -= total_Damage

	var aaa = instance_create_depth(other.x+random_range(-20,20),other.y+random_range(-20,20),-2,o_damagetext);
    aaa.text = total_Damage;
	aaa.color = c_white;
	
	
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
}
var knockback_Buff = 1
if global.bonus13 = 1
	{
		var knockback_Buff = 1.25
	}  
	if !(other.id == o_Roi) {
character_Distance = point_direction(o_Jester.x,o_Jester.y, other.x, other.y);
knockback_Distance = -2 * knockback_Buff; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)

if place_free(other.x+other.character_Speed * 1.1,other.y+other.character_Speed * 1.1)
{ 
	
other.x -= lengthdir_x(other.character_Speed * knockback_Distance, character_Distance);
other.y -= lengthdir_y(other.character_Speed * knockback_Distance, character_Distance);
}
}
//DECOMMENTE SI TU VEUT UNE INTERRACTION MARRANTE 
//x -= lengthdir_x(other.character_Speed * -10, character_Distance);
//y -= lengthdir_y(other.character_Speed * -10, character_Distance);
//TOUT EN BAS
