with (other) {
if (canMove = 0 or 1) && (canAttack = 0) {
character_Health -= o_Jester.character_Attack - character_Armor;
alarm[1] = 25;
alarm[0] = 25;
canMove = 2;
canAttack = 2;
speed -= 0;
  }
} 

character_Distance = point_direction(o_Jester.x,o_Jester.y, other.x, other.y);
knockback_Distance = -30; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)
other.x -= lengthdir_x(other.character_Speed * knockback_Distance, character_Distance);
other.y -= lengthdir_y(other.character_Speed * knockback_Distance, character_Distance);
instance_destroy()

//DECOMMENTE SI TU VEUT UNE INTERRACTION MARRANTE 
//x -= lengthdir_x(other.character_Speed * -10, character_Distance);
//y -= lengthdir_y(other.character_Speed * -10, character_Distance);
