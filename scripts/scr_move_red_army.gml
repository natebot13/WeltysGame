///scr_move_red_army(hex);
var toHex = argument0;
var fromHex = onHex;

var amount = real(get_string("How many toops?", count));
if (amount) {
    count = count - amount;
    toHex.claimedBy = player;
    if (moves_remaining - 1) {
        if (toHex.red_army != noone) {
            toHex.red_army.count += amount;
        } else {
            scr_init_army(toHex, 'red', amount, moves_remaining - 1);
        }
    } else {
        if (toHex.red_army_dis != noone) {
            toHex.red_army_dis.count += amount;
        } else {
            scr_init_army(toHex, 'red', amount, moves_remaining - 1);
        }
    }
    if (count == 0) {
        fromHex.red_army = noone;
        instance_destroy();
    }
}
