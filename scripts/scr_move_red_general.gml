///scr_move_red_general(hex);
var toHex = argument0;
var fromHex = onHex;

x = toHex.x;
y = toHex.y;
onHex = toHex;
onHex.claimedBy = player;
moves_remaining--;

fromHex.red_general = noone;
toHex.red_general = id;
