///scr_end_turn(nextState)
with(obj_general_red) {
    if (onHex.red_army == noone && onHex.red_army_dis == noone) {
        instance_destroy();
    } else {
        moves_remaining = max_moves;
    }
}

with(obj_general_blue) {
    if (onHex.blue_army == noone && onHex.blue_army_dis == noone) {
        instance_destroy();
    } else {
        moves_remaining = max_moves;
    }
}

with(obj_hexagon) {
    if (red_army_dis != noone) {
        if (red_army != noone) {
            red_army.count += red_army_dis.count;
            with(red_army_dis) instance_destroy();
        } else {
            red_army = red_army_dis;
            red_army.moves_remaining = red_army.max_moves;
        }
        red_army_dis = noone;
    }
    if (blue_army_dis != noone) {
        if (blue_army != noone) {
            blue_army.count += blue_army_dis.count;
            with(blue_army_dis) instance_destroy();
        } else {
            blue_army = blue_army_dis;
            blue_army.moves_remaining = blue_army.max_moves;
        }
        blue_army_dis = noone;
    }
}
state = argument0;
