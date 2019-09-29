/// player_walk_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
if (hsp == 0) {
	state = states.IDLE;
}

// apply movement
collision();

// apply animations
anim();