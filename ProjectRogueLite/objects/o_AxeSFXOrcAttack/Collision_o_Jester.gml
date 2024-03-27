if other.can_BeHit = 0 
{
    if other.canMove = 0 or 1 {
    other.can_BeHit = 1
    other.hit = id;
    other.alarm[2] = 75
    other.character_Health -= damage_Author.character_Attack - other.character_Armor;
    other.alarm[1] = 25;
    other.canMove = 2;
    }
}

if global.bonus16 = 1
{
	global.bonus16 = 2
	o_Jester.armor_Buff = o_Jester.armor_Buff * 2 
}

if (other.can_BeHit = 1 && other.hit = id) {
    character_Distance = point_direction(damage_Author.x,damage_Author.y, other.x, other.y);
    knockback_Distance = -10; // DISTANCE DU KNOCKBACK (-10 = MINIMUM)
    if place_free(other.x+other.character_Speed * 1.1,other.y+other.character_Speed * 1.1) {
other.x -= lengthdir_x((other.character_Speed/2) * knockback_Distance, character_Distance);
other.y -= lengthdir_y((other.character_Speed/2) * knockback_Distance, character_Distance);
    }
} 
