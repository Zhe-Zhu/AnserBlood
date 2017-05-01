// Rotate when thrown
image_angle += (3 * speed) * dir;

// Friction
speed = Approach(speed, 0, 0.15);

//可以拾取的cd
if speed = 0 {cantPick = 0;}