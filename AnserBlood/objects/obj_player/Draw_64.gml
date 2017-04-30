///Draw Debug Text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(5,5,string_hash_to_newline("Walk Speed "+string(walk_speed)
            +"#Friction Enabled: "+string(friction_enabled)
            +"##X "+string(x)
            +"#Y "+string(y)
            +"#Left "+string(left_button)
            +"#Right "+string(right_button)
            +"#Up "+string(up_button)
            +"#Down "+string(down_button))
            
            );
draw_set_halign(fa_right);
draw_text(room_width-5,5,string_hash_to_newline("Use the arrow keys to move around in 8 directions."
                       +"#Use mouse wheel to change movement speed."
                       +"#Left click to push player away from cursor."
                       +"#Right Click to toggle friction.")
                        );
                        
                       
            


