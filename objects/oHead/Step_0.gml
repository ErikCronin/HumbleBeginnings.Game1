x = oPlayer.x;
y = oPlayer.y+6;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}