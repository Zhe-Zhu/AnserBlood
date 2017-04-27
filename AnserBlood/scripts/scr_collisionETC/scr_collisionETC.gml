// Actual collision checks + movement
var i;

// Vertical
for (i = 0; i < abs(vspd); ++i) {
    // UP slope
    if (place_meeting(x, y + sign(vspd), objBarrierPar) && !place_meeting(x - 1, y + sign(vspd), objBarrierPar))
        --x;
    
    if (place_meeting(x, y + sign(vspd), objBarrierPar) && !place_meeting(x + 1, y + sign(vspd), objBarrierPar))
        ++x;

    if (!place_meeting(x, y + sign(vspd), objBarrierPar))
        y += sign(vspd);
    else {
        vspd = 0;
        break;
    }
}

// Horizontal
for (i = 0; i < abs(hspd); ++i) { 
    // Slopes
    if (place_meeting(x + sign(hspd), y, objBarrierPar) && !place_meeting(x + sign(hspd), y - 1, objBarrierPar))
        --y;
    
    if (place_meeting(x + sign(hspd), y, objBarrierPar) && !place_meeting(x + sign(hspd), y + 1, objBarrierPar))
        ++y;
         
    if (!place_meeting(x + sign(hspd), y, objBarrierPar))
        x += sign(hspd); 
    else {
        hspd = 0;
        break;
    }
}

///////////////////////////////////////////////////////////////////////////////