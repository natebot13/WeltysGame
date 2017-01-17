///scr_move_blue_army(hex);
var toHex = argument0;
var fromHex = onHex;

var amount = real(get_string("How many toops?", count));
if (amount) {
    count = count - amount;
    toHex.claimedBy = player;
    if (moves_remaining - 1) {
        if (toHex.blue_army != noone) {
            toHex.blue_army.count += amount;
        } else {
            scr_init_army(toHex, 'blue', amount, moves_remaining - 1);
        }
    } else {
        if (toHex.blue_army_dis != noone) {
            toHex.blue_army_dis.count += amount;
        } else {
            scr_init_army(toHex, 'blue', amount, moves_remaining - 1);
        }
    }
    if (count == 0) {
        fromHex.blue_army = noone;
        instance_destroy();
    }
}
