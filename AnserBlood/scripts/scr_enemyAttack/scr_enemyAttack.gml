sprite_index = attackSprite;

if (image_index == (image_number - 1))
{
	show_debug_message(image_index);
	state = scr_enemyFollow;
}
else if (image_index == 2)
{
	with(instance_create_depth(x, y, -y, objEnemyHitbox))
	{
		speed = other.speed;
		direction = other.direction;
		image_angle = other.image_angle;
	}

}