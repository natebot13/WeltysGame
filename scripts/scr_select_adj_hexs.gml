///scr_select_adj_hex(hex)
for (var dx = -1; dx <= 1; dx++) {
    for (var dd = -1; dd <= 1; dd++) {
        if (dx + dd != 0) {
            var map = global.game.hexs;
            var name = scr_get_hex_name(argument0.coordX + dx, argument0.coordDiag + dd);
            if (ds_map_exists(map, name)) {
                (ds_map_find_value(map, name)).selectedBy = id;
            }
        }
    }
}
