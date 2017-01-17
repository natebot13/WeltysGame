///scr_init_army(hex, color, amount, [moves])
var hex = argument[0];
if (is_string(hex)) {
    hex = scr_get_hex(hex);
}
var army_obj = noone;
if (argument[1] == "red") {
    army_obj = obj_army_token_red;
} else if (argument[1] == "blue") {
    army_obj = obj_army_token_blue;
}

with(instance_create(hex.x, hex.y, army_obj)) {
    if (argument_count == 4) {
        moves_remaining = argument[3];
    }
    onHex = hex;
    count = argument[2];
    if (moves_remaining) {
        if (argument[1] == "red") {
            hex.red_army = id;
        } else if (argument[1] == "blue") {
            hex.blue_army = id;
        }
    } else {
        if (argument[1] == "red") {
            hex.red_army_dis = id;
        } else if (argument[1] == "blue") {
            hex.blue_army_dis = id;
        }
    }
    return id;
}
