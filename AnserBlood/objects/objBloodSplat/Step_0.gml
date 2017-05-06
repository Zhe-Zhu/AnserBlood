if animating {
	image_index += imgSpd;
	if image_index > image_number-1 {
		image_index = image_number-1;
		animating = false;
	}
}

image_alpha  -= 0.002;
if image_alpha <= 0.1 {instance_destroy()}
