//etape de la boule de feu
if (!place_meeting(x,y,o_EnemyTemplate) && once = 0) { speed += 0.2; }
if once = 2 { speed -= 0.5; once = 1 }
image_angle = direction;
if once = 4 {
var direction_to_player = point_direction(x, y, o_Jester.x, o_Jester.y);
   direction = direction_to_player; // Dirigez la boule de feu vers l'objet le plus proche
}
