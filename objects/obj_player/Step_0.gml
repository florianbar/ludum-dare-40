// User input
keyUp	 = -keyboard_check(ord("W"));
keyDown  =  keyboard_check(ord("S"));
keyRight =  keyboard_check(ord("D"));
keyLeft  = -keyboard_check(ord("A"));
keyJump  =  keyboard_check_pressed(vk_space);

switch STATE
{
	case "default":
		PlayerStateNormal();
		break;
		
	case "climbing":
		PlayerStateClimbing();
		break;
}
