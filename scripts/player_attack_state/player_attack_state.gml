/// player_attack_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
// image_index starts at 0
// image_number, total number of numbers, starts at 1

if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed) {
	if (hsp != 0) {
		state = states.WALK;
	} else {
		state = states.IDLE;
	}
}

// apply movement
collision();

// apply animations
anim();