//ALARM 3 DU JESTER :
if can_dash = 2 
{ 
    can_dash = 0; exit;
}

can_dash -= 1;
    can_BeHit = 0;
    var cd = 40; //CD DU DASH
    if !global.bonus25 = 0 {
if global.bonus25 = 1 || 0.5 {
    global.bonus25 = 8
	instance_create_depth(x,y,-1,o_DashExplosion);
}else{
global.bonus25 = 1
}
alarm[3] = cd/global.bonus25 //CD DU DASH
    }else{
alarm[3] = cd
}