// User input
var keyRight =  keyboard_check(vk_right) or keyboard_check(ord("D"));
var keyLeft  = -(keyboard_check(vk_left) or keyboard_check(ord("A")));
var keyJump  = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));

var hdir = keyRight + keyLeft;
var hsp = moveSpeed * hdir;

if keyJump and !place_free(x,y+1)
{
	vsp = -jumpSpeed;
}

vsp = clamp(vsp+grav, -jumpSpeed, fallSpeed);



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