/// calc_movement();
hsp += (right - left) * walk_spd;
vsp += global.grav;

// drag
hsp = lerp(hsp, 0, drag);

// stop
if (abs(hsp) <= 0.1) {
	hsp = 0;
}

// face correct way
if (hsp != 0) {
	facing = sign(hsp); // sign produces 1 or -1 based on whether value is negative
}

// limit speed
hsp = min(abs(hsp), max_hsp) * facing; // facing puts it back to negative if it is a negative