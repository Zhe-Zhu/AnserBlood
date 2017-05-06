image_angle += speed *30;

speed *= 0.8;

image_alpha -= 0.01;

if image_alpha <=0.1 {instance_destroy()}