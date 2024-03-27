 canAttack = 0
sprite_index = lastSprite
 if  (x < focus.x)and (y < focus.y) { var angle = instance_create_depth(x+40, y+20, -1,  o_SFXDKAttack)  angle.image_angle = 200 angle.inflict_Damage = character_Attack; angle.damage_Author = self;  }
 if (x > focus.x)  and (y < focus.y){ var angle = instance_create_depth(x-40, y+20, -1,  o_SFXDKAttack)  angle.image_angle = -225 angle.inflict_Damage = character_Attack; angle.damage_Author = self;  }
 if  (x < focus.x) and (y > focus.y) { var angle = instance_create_depth(x+40, y-20, -1,  o_SFXDKAttack)  angle.image_angle = -25 angle.inflict_Damage = character_Attack; angle.damage_Author = self;  }
 if (x > focus.x)  and (y > focus.y) { var angle = instance_create_depth(x-40, y-20, -1,  o_SFXDKAttack)  angle.image_angle = 25 angle.inflict_Damage = character_Attack; angle.damage_Author = self; }