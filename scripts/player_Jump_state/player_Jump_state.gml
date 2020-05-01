/// player_jump_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
if (on_ground()) {
	if (hsp != 0) {
		state = states.WALK;
	} else {
		state = states.IDLE;
	}
}

if (attack) {
	state = states.ATTACK;
	image_index = 0; // play the attack animation from the first frame
}

// apply movement
collision();

// apply animations
anim();