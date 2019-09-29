// execute state
switch (state) {
	case states.IDLE:
		script_execute(player_idle_state);
	break;
	case states.WALK:
		script_execute(player_walk_state);
	break;
}