var otherr = o_StoneBlock
if (otherr.x >= 0 && otherr.x <= 85&& otherr.y >= 0 && otherr.y <= 95)
{
if sprite_index = s_StoneBlock2 

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
			sprite_index = s_StoneBlock2
}

var otherr = o_StoneBlock
if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_GrassBlock
    {
    var chance = irandom_range(1, 2)
    if chance = 1 
        {
            block_Spread = 1

        }
    }

}

//ETAPE BLOCK 
burn -= 1;