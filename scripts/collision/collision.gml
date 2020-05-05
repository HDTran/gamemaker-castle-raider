/// collision();
if (hsp == 0) {
	hsp_decimal = 0;
}
if (vsp == 0) {
	vsp_decimal = 0;	
}

// apply carried over decimals
hsp += hsp_decimal;
vsp += vsp_decimal;

// floor decimals
// save and subtract decimals
hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_decimal;
vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_decimal;

// horizontal collision
var side;
// determine which side to test
// going right
if (hsp > 0) {
	side = bbox_right;
} else {
	side = bbox_left;
}

// check top and bottom of side
var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);


if ((t1 != VOID && t1 != PLATFORM) || (t2 != VOID && t2 != PLATFORM)) {
	// collision found
	if (hsp > 0) {
		x = x - (x mod global.tile_size) + global.tile_size - 1 - (side - x)
	} else {
		x = x - (x mod global.tile_size) - (side - x);
	}
	hsp = 0;
}

x += hsp;

// vertical collision
var side;
// determine which side to test
if (vsp > 0) {
	side = bbox_bottom;
} else {
	side = bbox_top;
}

// check left and right of side
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
var t3 = tilemap_get_at_pixel(global.map, bbox_left, bbox_bottom);
var t4 = tilemap_get_at_pixel(global.map, bbox_right, bbox_bottom);

// if t1 isn't a void, it's a solid or platform
// if vsp > 0, it means we're going downward
// if t1 isn't a platform, so it's a solid, so we have a collision
// and t3 doesn't equal a platform
if (t1 != VOID && (((vsp > 0 || t1 != PLATFORM)) && t3 != PLATFORM) || (t1 == SOLID && t3 == PLATFORM) ||
	(t2 != VOID && (((vsp > 0 || t2 != PLATFORM)) && t4 != PLATFORM) || (t2 == SOLID && t3 == PLATFORM))) {
	// collision found
	if (vsp > 0) {
		y = y - (y mod global.tile_size) + global.tile_size - 1 - (side - y)
	} else {
		y = y - (y mod global.tile_size) - (side - y);
	}
	vsp = 0;
}

y += vsp;