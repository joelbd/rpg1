/// scr_get_input

//  Keyboard input
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('X'));
interact_key = keyboard_check_pressed(ord('R'));
pause_key = keyboard_check_pressed(vk_escape);

// Get axis
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key);

//  Controller input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    right_key = gamepad_button_check_pressed(0, gp_padr);
    left_key = gamepad_button_check_pressed(0, gp_padl);
    up_key = gamepad_button_check_pressed(0, gp_padu);
    down_key = gamepad_button_check_pressed(0, gp_padd);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    interact_key = gamepad_button_check_pressed(0, gp_face2);
    pause_key = gamepad_button_check_pressed(0, gp_start);
}
