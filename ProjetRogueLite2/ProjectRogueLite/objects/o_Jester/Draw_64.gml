//draw_set_color(c_red); // Couleur de la barre de vie
//draw_rectangle(view_xview[0] + view_wview[0] - 150, view_yview[0] + view_hview[0] - 50, view_xview[0] + view_wview[0] - 50, view_yview[0] + view_hview[0] - 30, false); // Dessine la barre de vie pleine
//draw_set_color(c_green); // Couleur de la barre de vie restante
//draw_rectangle(view_xview[0] + view_wview[0] - 150, view_yview[0] + view_hview[0] - 50, view_xview[0] + view_wview[0] - 150 + (character_Health / character_MaxHealth) * 100, view_yview[0] + view_hview[0] - 30, true); // Dessine la barre de vie restante

//// Dessine le texte des points de vie
//draw_set_color(c_white); // Couleur du texte
//draw_set_font(Font1); // Police de caractères
//draw_text(view_xview[0] + view_wview[0] - 45, view_yview[0] + view_hview[0] - 45, string(character_Health)); // Affiche le nombre de points de vie

// Définir la position de la barre de vie (par exemple, en bas à gauche)
var bar_x = 35; // Position X de la barre de vie
var bar_y = 825; // Position Y de la barre de vie (en bas)
draw_set_font(Font1)
draw_set_color(c_white)
// Dessiner la barre de vie
draw_text(580,825,string(character_Health) +"/"+ string(character_MaxHealth));
draw_healthbar(bar_x, bar_y, bar_x + 500, bar_y + 45, (character_Health/ character_MaxHealth)*100, $29292a,$4e4ec1,$02b80b,-1, true, true);
draw_set_color(c_white);
draw_text(60,30,"ATK:" + string(character_Attack));
draw_text(170,30,"DEF:" + string(character_Armor));
draw_text(270,30,"VIT:" + string(character_Speed));
draw_text(370,30,"LUCK:" + string(character_Luck));