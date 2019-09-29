/// player_idle_state();
// get input
get_input();

// calculate movement
calc_movement();

// check state
if (hsp != 0) {
	state = states.WALK;
}

if (attack) {
	state = states.ATTACK;
	image_index = 0; // play the attack animation from the first frame
}

// apply movement
collision();

// apply animations
anim();