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


if room = r_W2_L1
{
	sprite_index = s_DirtBlock
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_GrassBlock
	}
}

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

if block_Spread = 1
{
            sprite_index = s_StoneBlock
} 


if room = r_W2_L2
{
	sprite_index = s_DirtBlock
}



if room = r_W2_L3
{
	sprite_index = s_GrassBlock2
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_GrassBlock
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_GrassBlock
    
    var chance = irandom_range(1, 2)
    if chance = 1 
        {
            block_Spread = 1

        }
    }


if block_Spread = 1
{
            sprite_index = s_GrassBlock2
} 


if room = r_W2_L4
{
	sprite_index = s_GrassBlock2
}


if room = r_W3_L1
{
	sprite_index = s_WoodBlock
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_WoodBlock2
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_WoodBlock2
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
            sprite_index = s_WoodBlock2
}

if room = r_W3_L2
{
	sprite_index = s_WoodBlock2
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_WoodBlock3
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_WoodBlock3
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
            sprite_index = s_WoodBlock3
} 

if room = r_W3_L3
{
	sprite_index = s_WoodBlock2
var chance2 = irandom_range(1,15)
	if chance2 = 1
	{
			sprite_index = s_WoodBlock2
	}
}

if (place_meeting(otherr.x+10,otherr.y+10,self) or place_meeting(otherr.x-10,otherr.y+10,self) or place_meeting(otherr.x+10,otherr.y-10,self) or place_meeting(otherr.x-10,otherr.y-10,self)) 
{
if sprite_index = s_WoodBlock2
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
            sprite_index = s_WoodBlock2
} 

if room = r_W3_L1
{
	sprite_index = s_WoodBlock3
}
alarm[0] = 5