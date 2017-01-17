///scr_state_init_game()
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
randomize();

var xx = 64;
var yy = 55;
var yOffset = 55;
var diagNum = 0;
var diagNumStart = -1;

var evenNum = 7;
var oddNum = 8;
var num = evenNum;

//Init Junk
for (var i = 0; i < 9; i++) {
    if (i % 2 == 0) {
        yOffset = 55;
        num = evenNum;
        diagNumStart += 1
    } else {
        yOffset = 0;
        num = oddNum;
    }
    diagNum = diagNumStart;
    for (var j = 0; j < num; j++) {
        inst = instance_create(xx, yy + yOffset, obj_hexagon);
        inst.coordX = i;
        inst.coordDiag = diagNum;
        hexs[? string(i) + '-' + string(diagNum)] = inst;
        ds_list_add(hexList, string(i) + '-' + string(diagNum));
        yy += 110;
        diagNum += 1
    }
    xx += 96;
    yy = 55;
}

//Create forts
var inst = hexs[? '0-0'];
var fort = instance_create(inst.x, inst.y, obj_fort_red);
fort.hex = inst;
var inst = hexs[? '8-10'];
var fort = instance_create(inst.x, inst.y, obj_fort_blue);
fort.hex = inst;

//Add generals
scr_init_general('0-1', 'red');
scr_init_army('0-1', 'red', 10);
scr_init_general('1-0', 'red');
scr_init_army('1-0', 'red', 10);

scr_init_general('7-10', 'blue');
scr_init_army('7-10', 'blue', 10);
scr_init_general('8-9', 'blue');
scr_init_army('8-9', 'blue', 10);

hexs[? '0-0'].claimedBy = global.player_red;
hexs[? '0-1'].claimedBy = global.player_red;
hexs[? '1-0'].claimedBy = global.player_red;
hexs[? '8-10'].claimedBy = global.player_blue;
hexs[? '7-10'].claimedBy = global.player_blue;
hexs[? '8-9'].claimedBy = global.player_blue;
scr_reset_walls();

if (global.debug) scr_debug_init();

state = scr_state_start_game;
