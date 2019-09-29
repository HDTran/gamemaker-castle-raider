/// player_idle_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
if (hsp != 0) {
	state = states.WALK;
}

// apply movement
collision();

// apply animations
anim();