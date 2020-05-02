/// player_attack_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
// image_index starts at 0
// image_number, total number of frames, starts at 1

if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed) {
	// because we can be in the air after we come out from the attack state
	if (!on_ground()) {
		state = states.JUMP;
	} else {
		if (hsp != 0) {
			state = states.WALK;
		} else {
			state = states.IDLE;
		}
	}
}

if (jump) {
	jumped();
	state = states.ATTACK; // reset state so that we don't stay in jump state
}

// enable smaller jumps while in attack state
if (vsp < 0 and !jump_held) {
	vsp = max(vsp, jump_spd/jump_dampner);
}

// apply movement
collision();

// apply animations
anim();