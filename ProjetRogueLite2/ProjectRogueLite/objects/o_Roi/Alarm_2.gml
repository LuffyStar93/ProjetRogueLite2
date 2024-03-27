/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
	lastSprite = sprite_index
		image_index = 0
		if lastDirectionY = 1
		{
		sprite_index = s_KingFrontAttack
		}
		else sprite_index = s_KingFrontAttack
		alarm[2] = 1500
		var nearest_player = instance_nearest(x, y, o_Jester );
        var aim_angle = point_direction(x, y, nearest_player.x, nearest_player.y); // Calcul de l'angle entre la flèche et l'ennemi le plus proche
        var distance = instance_create_depth(x+choose(1800,1800), y, -1, o_ArrowFireBossFinal);// Création de la flèche
		distance.inflict_Damage = character_Attack/2; distance.damage_Author = self;
        with (distance) {
            speed = 2.2; //vitesse de la boule de feu
            direction = aim_angle; 
            image_angle = direction;
     }