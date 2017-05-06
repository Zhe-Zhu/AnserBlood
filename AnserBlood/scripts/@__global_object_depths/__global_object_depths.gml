// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -100; // obj_Aura_Light_Parent
global.__objectDepths[1] = 0; // Aura_DEMO_Control
global.__objectDepths[2] = -100; // obj_Aura_Light_Parent_Fast
global.__objectDepths[3] = -100; // obj_Aura_Mouse_Light
global.__objectDepths[4] = -110; // obj_Aura_ShadowCaster_Parent
global.__objectDepths[5] = -110; // obj_Aura_ShadowCaster_Rotate
global.__objectDepths[6] = -100; // obj_Aura_Point_Light
global.__objectDepths[7] = 0; // obj_Aura_Fast_Light
global.__objectDepths[8] = -110; // obj_Aura_ShadowCaster_Circle
global.__objectDepths[9] = 0; // obj_Aura_Torch_Light
global.__objectDepths[10] = -110; // obj_Aura_ShadowCaster_Box
global.__objectDepths[11] = -110; // obj_Aura_ShadowCaster_Poly
global.__objectDepths[12] = 0; // obj_Aura_ShadowCaster_Door
global.__objectDepths[13] = -100; // obj_Aura_Control


global.__objectNames[0] = "obj_Aura_Light_Parent";
global.__objectNames[1] = "Aura_DEMO_Control";
global.__objectNames[2] = "obj_Aura_Light_Parent_Fast";
global.__objectNames[3] = "obj_Aura_Mouse_Light";
global.__objectNames[4] = "obj_Aura_ShadowCaster_Parent";
global.__objectNames[5] = "obj_Aura_ShadowCaster_Rotate";
global.__objectNames[6] = "obj_Aura_Point_Light";
global.__objectNames[7] = "obj_Aura_Fast_Light";
global.__objectNames[8] = "obj_Aura_ShadowCaster_Circle";
global.__objectNames[9] = "obj_Aura_Torch_Light";
global.__objectNames[10] = "obj_Aura_ShadowCaster_Box";
global.__objectNames[11] = "obj_Aura_ShadowCaster_Poly";
global.__objectNames[12] = "obj_Aura_ShadowCaster_Door";
global.__objectNames[13] = "obj_Aura_Control";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for