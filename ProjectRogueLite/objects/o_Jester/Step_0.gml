
if (os_type = os_windows)
{
moveUp = keyboard_check(ord("Z")) or gamepad_button_check(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.5);
moveDown = keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd) or (gamepad_axis_value(0, gp_axislv) > 0.5);
moveRight = keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr) or (gamepad_axis_value(0, gp_axislh) > 0.5)
moveLeft = keyboard_check(ord("Q")) or gamepad_button_check(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.5); 
attack = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("J")) or gamepad_button_check(0, gp_face3);
moveDash = keyboard_check(vk_space) or gamepad_button_check(0, gp_face1);
special_Attack = keyboard_check(ord("K")) or mouse_check_button_pressed(mb_right) or gamepad_button_check(0, gp_face4);
}

else if (os_type = os_macosx)
{
moveUp = keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.5);
moveDown = keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd) or (gamepad_axis_value(0, gp_axislv) > 0.5);
moveRight = keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr) or (gamepad_axis_value(0, gp_axislh) > 0.5)
moveLeft = keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.5); 
attack = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("J")) or gamepad_button_check(0, gp_face3);
moveDash = keyboard_check(vk_space) or gamepad_button_check(0, gp_face1)
special_Attack = keyboard_check(ord("K")) or mouse_check_button_pressed(mb_right) or gamepad_button_check(0, gp_face4);
}


if canMove = 0
{
if moveUp && place_free(x,y-character_Speed)
{
    y -= character_Speed
}

if moveDown && place_free(x,y+character_Speed)
{
    y += character_Speed
}

if moveLeft && place_free(x-character_Speed,y)
{
    x -= character_Speed
}

if moveRight && place_free(x+character_Speed,y)
{
    x += character_Speed

}
}


if (xprevious < x) {
	if lastDirectionY = 1
	{
   sprite_index = s_JesterFrontSwordWalk
	} 
	else 
	{
	sprite_index = s_JesterBackSwordWalk	
	}
   lastDirectionX = 1
   image_xscale = 1
} else if (xprevious > x) {
	if lastDirectionY = 1
	{
   sprite_index = s_JesterFrontSwordWalk
	} 
	else 
	{
	sprite_index = s_JesterBackSwordWalk	
	}
	lastDirectionX = -1
	image_xscale = -1
} if (yprevious < y) {
    sprite_index = s_JesterFrontSwordWalk 
	lastDirectionY = 1
} else if (yprevious > y) {
    sprite_index = s_JesterBackSwordWalk 
	lastDirectionY = -1
}


if attack and canAttack = 0
{
	lastSprite = sprite_index
	image_index = 0
	if lastDirectionY = 1
	{
	sprite_index = s_JesterFrontSwordAttack
	}
	else sprite_index = s_JesterBackSwordAttack
	canMove = 1
	canAttack = 1
	if lastDirectionX = 1 and lastDirectionY = 1 { var angle = instance_create_depth(x+45, y+35, -1, o_SwordSFXAttack)  angle.image_angle = 200 }
    if lastDirectionX = -1 and lastDirectionY = 1 { var angle = instance_create_depth(x-45, y+35, -1, o_SwordSFXAttack)  angle.image_angle = -225 }
    if lastDirectionX = 1 and lastDirectionY = -1 { var angle = instance_create_depth(x+45, y-35, -1, o_SwordSFXAttack)  angle.image_angle = -25 }
    if lastDirectionX = -1 and lastDirectionY = -1 { var angle = instance_create_depth(x-45, y-35, -1, o_SwordSFXAttack)  angle.image_angle = 25}
	alarm[0] = 40/character_AttackSpeed
	alarm[1] = 25/character_AttackSpeed
	
}

if !(place_meeting(x, y, o_StoneBlock)) {
x = 1220;
y = 700;
}


if character_Health <= 0 
{
game_restart()
can_BeHit = 0
}

if can_BeHit = 1
{
	image_alpha = 0.55
}

else 
{
	image_alpha = 1
}

// Déterminer la direction
if (moveUp && moveRight) {
    moveDir = 45; // Diagonale haut-droite
} else if (moveUp && moveLeft) {
    moveDir = 135; // Diagonale haut-gauche
} else if (moveDown && moveRight) {
    moveDir = 315; // Diagonale bas-droite
} else if (moveDown && moveLeft) {
    moveDir = 225; // Diagonale bas-gauche
} else if (moveUp) {
    moveDir = 90; // Haut
} else if (moveDown) {
    moveDir = 270; // Bas
} else if (moveRight) {
    moveDir = 0; // Droite
} else if (moveLeft) {
    moveDir = 180; // Gauche
} else {
    // Aucune touche de déplacement enfoncée, direction inchangée
}

var directionnel = moveDown && moveLeft && moveUp && moveRight

if moveDash && can_dash = 0 
{
	instance_create_depth(x, y, 0, o_Smoke)
    can_dash = 3;
    can_BeHit = 1;
    alarm[3] = 15; //durée dash
}

if can_dash = 3 && place_free(x+xspd,y+yspd) && place_free(x+character_Speed,y+character_Speed)
{
    xspd = lengthdir_x(10,moveDir);
    yspd = lengthdir_y(10,moveDir);
    x += xspd;
    y += yspd; 
    if directionnel 
		{	
			can_dash = 0; 
		} 
	
}

if special_Attack && can_SpecialAttack = 0 
{
    if instance_exists(o_EnemyTemplate) 
	{
		lastSprite = sprite_index
		image_index = 0
		if lastDirectionY = 1
		{
		sprite_index = s_JesterFrontStaffAttack
		}
		else sprite_index = s_JesterBackStaffAttack
        alarm[4] = 40; //CD DU TRUC DISTANCE
		canMove = 1
        can_SpecialAttack = 1;
		canAttack = 1
		alarm[0] =   15
		alarm[1] = 15
        var nearest_enemy = instance_nearest(x, y, o_EnemyTemplate);
        var aim_angle = point_direction(x, y, nearest_enemy.x, nearest_enemy.y); // Calcul de l'angle entre la flèche et l'ennemi le plus proche
        var distance = instance_create_depth(x, y, -1, o_Fireball); // Création de la flèche
        with (distance) {
            speed = 6; //vitesse de la boule de feu
            direction = aim_angle; 
            image_angle = direction;
     }
   }
}
