// Direction
var hdir = keyRight + keyLeft;
var hsp = moveSpeed * hdir;

// Jump
if keyJump and !place_free(x,y+1)
{
	vsp = -jumpSpeed;
}

// Gravity
vsp = clamp(vsp+grav, -jumpSpeed, fallSpeed);

// Ladder climbing
if canClimb
{
	if abs(keyUp) or keyDown or place_free(x,y)
	{
		if place_meeting(x,y,obj_ladder) STATE = "climbing";
	}
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