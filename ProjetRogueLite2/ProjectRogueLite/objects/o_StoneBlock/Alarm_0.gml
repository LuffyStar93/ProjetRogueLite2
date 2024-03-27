var otherr = o_StoneBlock

if room = r_W1_L1
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

if room = r_W1_L2
if sprite_index = s_StoneBlock
{
if collision_circle(x, y, 100, self, false, true)
    {
    var chance = irandom_range(1, 2)
    if chance = 1 
        {
            sprite_index = s_StoneBlock
        }
    }

}

if room = r_W1_L3
if sprite_index = s_StoneBlock4
{
if collision_circle(x, y, 100, self, false, true)
    {
    var chance = irandom_range(1, 2)
    if chance = 1 
        {
            sprite_index = s_StoneBlock4
        }
    }

}

if room = r_W2_L1 && r_W2_L2 && r_W2_L3 && r_W2_L4
{
    sprite_index = s_DirtBlock
var chance2 = irandom_range(1,15)
    if chance2 = 1
    {
            sprite_index = s_GrassBlock
    }
}

