if global.bonus17 = 1 and can_dash = 2
{
	var bonus_Damage = 1
	if global.bonus7 = 1
	{
		
	}
	
	if instance_exists(o_Spider) {
	if global.bonus9 = 1 and other = o_Spider
	{
		var bonus_Damage = 1.1	
	}
	}
	
	if instance_exists(o_Orc) {
	if global.bonus10 = 1 and other = o_Orc
	{ 
		
		var bonus_Damage = 1.1	
	} 
	}
	var crit_Chance = irandom_range(character_Luck, 100)
	
    other.character_Health -= (character_Attack - other.character_Armor) * bonus_Damage;
    
	
	var total_Damage = (character_Attack - other. character_Armor) * bonus_Damage
	if crit_Chance <= character_Luck
	{
		total_Damage = total_Damage * 2
	}
	other.character_Health -= total_Damage
	
	if global.bonus15 = 1
	{
		luck_Buff = luck_Buff * 1.1
		if crit_Chance <= character_Luck
			{
				var nearest_enemy = instance_nearest(x, y, o_EnemyTemplate);
				var aim_angle = point_direction(o_Jester.x, o_Jester.y, nearest_enemy.x, nearest_enemy.y); // Calcul de l'angle entre la flèche et l'ennemi le plus proche
				var distance = instance_create_depth(x,y, -1, o_Fireball2); // Création de la flèche
				with (distance) {
				speed = 6; //vitesse de la boule de feu
				direction = aim_angle; 
				image_angle = direction;
			}
	}
}
}