block_Spread = 0
burn = 0
if room = r_W1_L1
{
	sprite_index = s_StoneBlock
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_StoneBlock2
	}
}

var otherr = o_StoneBlock
if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
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

if room = r_W1_L2
{
	sprite_index = s_StoneBlock2
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_StoneBlock
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_StoneBlock
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
            sprite_index = s_StoneBlock
} 

if room = r_W1_L3
{
	sprite_index = s_StoneBlock3
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_StoneBlock4
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_StoneBlock4
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
            sprite_index = s_StoneBlock
} 

if room = r_W1_L4
{
	sprite_index = s_StoneBlock4
}
alarm[0] = 5