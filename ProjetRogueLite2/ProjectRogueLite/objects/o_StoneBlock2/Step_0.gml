var otherr = o_StoneBlock2
if (otherr.x >= 0 && otherr.x <= 85&& otherr.y >= 0 && otherr.y <= 95)
{
if sprite_index = s_StoneBlock3

	{
	var chance = irandom_range(1, 2)
	if chance = 1 
		{
			block_Spread = 1
			
		}
	}

}

if block_Spread = 1
{
			sprite_index = s_StoneBlock3
}