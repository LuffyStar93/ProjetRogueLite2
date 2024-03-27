if attack 
{
	if (other.impact == 1) {
    global.bonus1 = 1; character_Luck += 10;
} else if (other.impact == 2) {
    global.bonus2 = 1; character_SpecialAttackSpeed += 2;
} else if (other.impact == 3) {
    global.bonus3 = 1; character_AttackSpeed += 0.5;
} else if (other.impact == 4) {
    global.bonus4 = 1; character_Attack += 2;
} else if (other.impact == 5) {
    global.bonus5 = 1; character_Armor += 2;
} else if (other.impact == 6) {
    global.bonus6 = 1; character_Speed += 1;
} else if (other.impact == 7) {
    global.bonus7 = 1;
} else if (other.impact == 8) {
    global.bonus8 = 1;
} else if (other.impact == 9) {
    global.bonus9 = 1;
} else if (other.impact == 10) {
    global.bonus10 = 1;
} else if (other.impact == 11) {
    global.bonus11 = 1; character_MaxHealth += 2;
} else if (other.impact == 12) {
    global.bonus12 = 1;
} else if (other.impact == 13) {
    global.bonus13 = 1;
} else if (other.impact == 14) {
    global.bonus14 = 1;
} else if (other.impact == 15) {
    global.bonus15 = 1; character_Luck += 10;
} else if (other.impact == 16) {
    global.bonus16 = 1;
} else if (other.impact == 17) {
    global.bonus17 = 1;
} else if (other.impact == 18) {
    global.bonus18 = 1;
} else if (other.impact == 19) {
    global.bonus19 = 1; 
} else if (other.impact == 20) {
    global.bonus20 = 1;
} else if (other.impact == 21) {
    global.bonus21 = 1;
} else if (other.impact == 22) {
    global.bonus22 = 1;
} else if (other.impact == 23) {
    global.bonus23 = 1;
} else if (other.impact == 24) {
    global.bonus24 = 1;
} else if (other.impact == 25) {
    global.bonus25 = 1;
} else if (other.impact == 26) {
    global.bonus26 = 1;
} else if (other.impact == 27) {
    global.bonus27 = 1;
} else if (other.impact == 28) {
    global.bonus28 = 1; character_Attack += 5; character_AttackSpeed += 0.7; character_Luck += 100; character_Speed += 2;
} else if (other.impact == 29) {
    global.bonus29 = 1; character_Armor += 4; character_Attack += 4; character_Speed -= 1; character_MaxHealth += 3;
} else if (other.impact == 30) {
    global.bonus30 = 1;
}
instance_destroy(o_ChestClosed);
instance_create_depth(1200,600,-1,o_Door);
}