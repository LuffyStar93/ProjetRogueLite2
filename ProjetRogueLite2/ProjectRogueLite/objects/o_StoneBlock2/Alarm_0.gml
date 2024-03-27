var otherr = o_StoneBlock
if sprite_index = s_StoneBlock2 
{
if collision_circle(x, y, 100, self, false, true)
    {
    var chance = irandom_range(1, 2)
    if chance = 1 
        {
            sprite_index = s_StoneBlock2
        }
    }

}

