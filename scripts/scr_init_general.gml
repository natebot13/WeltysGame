///scr_init_general(hex, color)
var hex = argument0;
if (is_string(hex)) {
    hex = scr_get_hex(hex);
}
var general = noone;
if (argument1 == "red") {
    general = obj_general_red;
} else if (argument1 == "blue") {
    general = obj_general_blue;
}
with(instance_create(hex.x, hex.y, general)) {
    onHex = hex;
    if (argument1 == "red") {
        hex.red_general = id;
    } else if (argument1 == "blue") {
        hex.blue_general = id;
    }
    return id;
}
