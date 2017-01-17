///scr_move_blue_general(hex);
var toHex = argument0;
var fromHex = onHex;

x = toHex.x;
y = toHex.y;
onHex = toHex;
onHex.claimedBy = player;
moves_remaining--;

fromHex.blue_general = noone;
toHex.blue_general = id;
