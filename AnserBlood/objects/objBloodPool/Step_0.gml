if animating 
{
	image_xscale += 0.001;
	image_yscale += 0.001;
	image_index += imgSpd;
	if image_index > image_number-1 
	{
		image_index = image_number-1;
		animating = false;
	}
}

if animating = false
{
image_alpha  -= 0.003;
	if image_alpha <= 0.1 
	{instance_destroy()}
}
