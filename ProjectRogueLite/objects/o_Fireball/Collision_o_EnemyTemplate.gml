 with (other) {
    if (can_BeHit = 0) {
	alarm[3] = 25	
	var bonus_Damage = 1
    can_BeHit = 1
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
	
	var fireBallDamage = ((o_Jester.character_Attack / 2) - character_Armor)
	if fireBallDamage < 0
	
	{
		fireBallDamage = 1
	}
	
	fireBallDamage =  ((o_Jester.character_Attack / 2) - character_Armor)
	
    if crit_Chance <= character_Luck
    {
        fireBallDamage = fireBallDamage * 2
    }
    character_Health -= fireBallDamage
    
    if global.bonus15 = 1
    {
        o_Jester.luck_Buff = o_Jester.luck_Buff * 1.1
        if crit_Chance <= character_Luck
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


//DECOMMENTE SI TU VEUT UNE INTERRACTION MARRANTE 
//x -= lengthdir_x(other.character_Speed * -10, character_Distance);
//y -= lengthdir_y(other.character_Speed * -10, character_Distance);


if !(once = 3) {
// Définissez les variables pour stocker la position de l'objet le plus proche
var nearest_x, nearest_y;
var nearest_distance = -1; // Initialisé à une valeur négative pour la première comparaison
var touch = other.id
 once = 1;

// Boucle à travers toutes les instances d'objets
with(o_EnemyTemplate) {
    // Vérifie si l'instance est différente de celle avec laquelle vous êtes en collision
    if (id != touch) {
        // Calcule la distance entre l'objet courant et l'objet avec lequel vous êtes en collision
        var distance = point_distance(x, y, other.x, other.y);
        
        // Si c'est le premier objet trouvé ou s'il est plus proche que l'objet précédent
        if (nearest_distance == -1 || distance < nearest_distance) {
            // Met à jour les coordonnées de l'objet le plus proche et sa distance
            nearest_x = x;
            nearest_y = y;
            nearest_distance = distance;
        }
    }
}

// Vérifie si un objet a été trouvé
if (nearest_distance != -1) {
    // Calcul de l'angle entre la boule de feu et l'objet le plus proche
    var direction_to_nearest = point_direction(x, y, nearest_x, nearest_y);
    
    // Utilisez cet angle pour diriger la boule de feu vers l'objet le plus proche
    // Par exemple, modifiez la vitesse et la direction de la boule de feu
    once = 2; // Définissez la vitesse de la boule de feu
    direction = direction_to_nearest; // Dirigez la boule de feu vers l'objet le plus proche
}else{
instance_destroy();    
}

if speed < 2.5 {
    speed = 2.5;
    if !once = 3 {
instance_destroy()
    }else{alarm[0]= 2; once = 5} 
}
 }
 