/// @description Insérez la description ici
draw_set_font(ft_damage);
draw_set_color(c_black);
draw_text(x+1,y+1, string(text)); //shadow
draw_set_color(color);
draw_text(x,y-ia, string(text)); // text