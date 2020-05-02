/// get_input();
// keyboard input
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
attack = keyboard_check_pressed(vk_shift);
jump = keyboard_check_pressed(vk_space);
jump_held = keyboard_check(vk_space);
block = keyboard_check(ord("Z"));

// controller input
var _dev = 0; // up to 4
if (gamepad_is_connected(_dev)) {
		var _deadzone = 0.3; // needed for analog, analog is between 0 and 1
		// use help to show definitions
		left = gamepad_axis_value(_dev, gp_axislh) < -_deadzone || left;
		right = gamepad_axis_value(_dev, gp_axislh) > _deadzone || right;
		up = gamepad_axis_value(_dev, gp_axislv) < -_deadzone || up;
		down = gamepad_axis_value(_dev, gp_axislv) > _deadzone || down;
		attack = gamepad_button_check_pressed(_dev, gp_face2) || attack;
		jump = gamepad_button_check_pressed(_dev, gp_face1) || jump;
		jump_held = gamepad_button_check(_dev, gp_face1) || jump_held;
		block = gamepad_button_check_pressed(_dev, gp_shoulderr) || block;
}