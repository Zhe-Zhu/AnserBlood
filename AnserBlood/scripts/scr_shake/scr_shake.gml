///Screen shake(shakeMin,shakeMax)
//调用这个脚本之后，屏幕就会抖动
var shakeMin = argument[0];
var shakeMax = argument[1];

objCamera.shake += random_range(shakeMin,shakeMax);