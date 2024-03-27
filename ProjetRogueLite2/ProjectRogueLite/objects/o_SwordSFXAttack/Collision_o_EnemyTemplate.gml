with (other) {
	
    if (can_BeHit = 0) {
		//sword sfx collision

    if !(global.bonus27 = 0) 
	{
		global.bonus27 += 1 
	}
    if global.bonus27 = 4
	{ 
		global.bonus27 = 1 
	} //crée l'explosion

    if !(global.bonus20 = 0) 
	{ 
		global.bonus20 += 1
	}
    if global.bonus20 = 5 
	{
		global.bonus20 = 1
	} //crée l'explosion

	alarm[3] = 25
	var bonus_Damage = 1
    can_BeHit = 1
	if global.bonus7 = 1
	{
		
	}
	
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
	
    character_Health -= (o_Jester.character_Attack - character_Armor) * bonus_Damage;
    
	
	var total_Damage = (o_Jester.character_Attack - character_Armor) * bonus_Damage
	if crit_Chance <= o_Jester.character_Luck
	{
		total_Damage = round(total_Damage) * 2
		other.luck = 1;
	}
		if total_Damage <= 0 { total_Damage = 1; }
	character_Health -= total_Damage

	var aaa = instance_create_depth(other.x+random_range(-20,20),other.y+random_range(-30,10),-2,o_damagetext);
    aaa.text = total_Damage;
	aaa.color = c_white;
	if other.luck = 1 { aaa.color = c_yellow;}
	
	if global.bonus15 = 1
	{
        //o_Jester.luck_Buff = o_Jester.character_Luck * 1.1
		//o_Jester.character_Luck = o_Jester.luck_Buff;
		if other.luck = 1
			{
				
				var nearest_enemy = instance_nearest(x, y, o_EnemyTemplate);
				var aim_angle = point_direction(o_Jester.x, o_Jester.y, nearest_enemy.x, nearest_enemy.y); // Calcul de l'angle entre la flèche et l'ennemi le plus proche
				var distance = instance_create_depth(o_Jester.x, o_Jester.y, -1, o_Fireball2); // Création de la flèche
				with (distance) {
				speed = 6; //vitesse de la boule de feu
				direction = aim_angle; 
				image_angle = direction;
			}
	}
	
	}
	if global.bonus18 = 1 
	{
		global.bonus18 = 2
		o_EnemyTemplate.speed_Debuff = o_EnemyTemplate.speed_Debuff * 0.8
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
}
var knockback_Buff = 1
if global.bonus13 = 1
	{
		var knockback_Buff = 1.25
	}  
	if !(other == o_Roi) {
character_Distance = point_direction(o_Jester.x,o_Jester.y, other.x, other.y);
knockback_Distance = -10 * knockback_Buff; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)

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

if global.bonus20 = 3
{
x -= lengthdir_x(other.character_Speed * -10, character_Distance);
y -= lengthdir_y(other.character_Speed * -10, character_Distance); 
} 

if global.bonus27 = 3 {
	global.bonus27 = 4;
instance_create_depth(x,y,-1,o_CaCExplosion);	
}
