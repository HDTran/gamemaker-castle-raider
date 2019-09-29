/// @description
// speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;

// friction
drag = .12;

// facing direction
facing = 1; // 1 = facing right, -1 = facing left

// movement
left = 0;
right = 0;
up = 0;
down = 0;

// states
enum states {
	IDLE,
	WALK
}

state = states.IDLE;