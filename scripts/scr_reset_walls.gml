///scr_reset_walls()

with(obj_wall) {
    instance_destroy();
}

with(obj_hexagon) {
    ds_list_clear(walls);
}

with(obj_game) {
    for (var i = 0; i < ds_list_size(hexList); i++) {
        var hex = ds_list_find_value(hexList, i);
        var hex_inst = hexs[? hex];
        with(instance_create(hex_inst.x, hex_inst.y, obj_collider)) {
            creator = hex_inst;
        }
    }
}
