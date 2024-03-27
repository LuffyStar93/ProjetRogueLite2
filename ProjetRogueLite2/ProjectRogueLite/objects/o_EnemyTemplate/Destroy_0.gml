var healing_Chance = irandom_range(1,100)
	if global.bonus8 = 1 and healing_Chance = irandom_range(1, 15)
	{
		character_Health = character_Health * 1.15
	} 
	
if global.bonus30 = 1 {
	var chance = random_range(1,50)
	for (var i = 0; i < chance; i += 1)
instance_create_depth(x+random_range(-700,700),y+random_range(-600,600),-1,o_DeadExplosion)	
}