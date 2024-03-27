//if room = r_W1_L1
//if stop_Spawn = 1 {vague = 0}
//else vague = 1
//if vague = 1 {
//for (var i = 0; i < nombreennemi; i++) 
//{
//stop_Spawn = 0
//instance_create_depth(1300, 700,-1, o_Spider)
//stop_Spawn = 1
//}
//for (var i = 0; i < nombreennemi/2; i++) {
//instance_create_depth(1300, 700,-1, o_Orc)
//}
//}

//if vague = 2 {
////idem
//}
if instance_number(o_EnemyTemplate) < 1 and fin = 0
{
    instance_create_depth(1300, 400, 0, o_ChestClosed)
	instance_create_depth(1100, 400, 0, o_ChestClosed)
	instance_create_depth(900, 400, 0, o_ChestClosed)
	fin = 1
}

