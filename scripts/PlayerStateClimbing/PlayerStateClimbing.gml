var hdir = keyRight + keyLeft;
var vdir = keyDown + keyUp;
hsp = moveSpeed * hdir;
vsp = climbSpeed * vdir;

if (!place_meeting(x,y,obj_ladder)) 
{ 
	STATE = "default"; 
}

// Allow player to off from ladder
if (keyJump) 
{
	vsp = -jumpSpeed;
	STATE = "default";
	
	canClimb = false;
	alarm[0] = Seconds(0.4);
}

// Horizontal collision
if !place_free(x+hsp,y)
{
	while place_free(x+sign(hsp),y)
	{
	    x += sign(hsp);
	}
    
	hsp = 0;
}

x += hsp;
 
// Vertical collision
if !place_free(x,y+vsp)
{	
	while place_free(x,y+sign(vsp))
	{
	    y += sign(vsp);
	}
	
	vsp = 0;
}

y += vsp;