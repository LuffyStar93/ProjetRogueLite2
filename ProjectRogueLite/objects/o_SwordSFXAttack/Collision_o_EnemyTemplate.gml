with (other) {
    if (can_BeHit = 0) {
	alarm[3] = 25
    can_BeHit = 1
    character_Health -= o_Jester.character_Attack - character_Armor;
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
knockback_Distance = -10; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)
if place_free(other.x+other.character_Speed * 1.1,other.y+other.character_Speed * 1.1)
{ 
other.x -= lengthdir_x(other.character_Speed * knockback_Distance, character_Distance);
other.y -= lengthdir_y(other.character_Speed * knockback_Distance, character_Distance);
}

//DECOMMENTE SI TU VEUT UNE INTERRACTION MARRANTE 
//x -= lengthdir_x(other.character_Speed * -10, character_Distance);
//y -= lengthdir_y(other.character_Speed * -10, character_Distance);
