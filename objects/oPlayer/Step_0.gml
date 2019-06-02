//Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//Double Jump
if(double_jump_check = 0) && (key_jump)
{
	vsp = jumpheight;
	double_jump_check = 1;
}

//Floor Jump
if(place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = jumpheight;
	double_jump_check = 0;
}

//Wall Jump
if(place_meeting(x+hsp,y,oWall)) && (key_jump)
{
	vsp = jumpheight;
}

//Horizontal Collision
if(place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;