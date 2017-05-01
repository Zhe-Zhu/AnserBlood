image_alpha -= 0.03;
//if image_alpha <= 0.2 {instance_destroy();}

image_xscale += 0.02;
image_yscale += 0.02;
if image_xscale >= 1.6 {instance_destroy();}