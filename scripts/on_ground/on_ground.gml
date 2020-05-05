/// on_ground()
/// returns true if on ground

var side = bbox_bottom;
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);
var t3 = tilemap_get_at_pixel(global.map, bbox_left, side);
var t4 = tilemap_get_at_pixel(global.map, bbox_right, side);

if ((t1 == SOLID || t1 == PLATFORM) && (t3 != SOLID && t3 != PLATFORM) || (t1 == SOLID && t3 == PLATFORM) ||
	(t2 == SOLID || t2 == PLATFORM) && (t4 != SOLID && t4 != PLATFORM) || t2 == SOLID && t4 == PLATFORM) {
	return true;
} else {
	return false;
}