//字体变大消失
image_xscale *= 1.03
image_yscale =image_xscale;

if image_xscale > 2 {image_alpha *= 0.7};

if image_alpha < 0.2 {instance_destroy()};