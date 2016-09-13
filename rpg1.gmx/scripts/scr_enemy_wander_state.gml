///scr_enemy_wander_state
scr_check_for_player();
if (point_distance(x, y, targetx, targety)) {
    scr_enemy_move_to_player();
}
