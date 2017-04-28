image_alpha -= 0.1;
//if image_alpha <= 0.2 {instance_destroy();}

image_xscale += 0.05;
image_yscale += 0.05;
if image_xscale >= 1.7 {instance_destroy();}