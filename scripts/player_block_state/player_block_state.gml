/// player_block_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
if (attack) {
	state = states.ATTACK;
	image_index = 0; // play the attack animation from the first frame
}

if (block) {
	hsp = 0;
} else {
	if (hsp != 0) {
		if (!on_ground()) {
			state = states.JUMP;
		} else {
			state = states.WALK;
		}
	} else {
		state = states.IDLE;
	}
}

if (jump) {
	jumped();
}

// apply movement
collision();

// apply animations
anim();