/// @description
// get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

// calculate movement
hsp += (right - left) * walk_spd;

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

// apply movement
x += hsp;
y += vsp;

// apply animations
if (hsp != 0) {
	image_xscale = facing;
	sprite_index = s_player_walk;
} else {
	sprite_index = s_player_idle;
}
