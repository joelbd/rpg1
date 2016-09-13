///scr_interact_state

xx = 0;
yy = 0;

switch (sprite_index) {
    case spr_player_down:
        xx = x;
        yy = (y + 14);
        break;
        
    case spr_player_up:
        xx = x;
        yy = (y - 8);
        break;
        
    case spr_player_right:
        xx = (x + 12);
        yy = (y + 2)
        break;
        
    case spr_player_left:
        xx = (x - 12);
        yy = (y + 2);        
        break;
}

instance_create(xx, yy, obj_interact);
