///scr_move_piece(hex)
var hex = argument0;
x = hex.x;
y = hex.y;
onHex = hex;
hex.claimedBy = player;
moves_remaining--;
