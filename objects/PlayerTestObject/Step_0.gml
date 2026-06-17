var spd = keyboard_check(vk_shift) ? 8 : 4;

var moving_w = keyboard_check(ord("W"));
var moving_s = keyboard_check(ord("S"));
var moving_a = keyboard_check(ord("A"));
var moving_d = keyboard_check(ord("D"));

// block diagonal movement
if ((moving_w && moving_a) || (moving_w && moving_d) || (moving_s && moving_a) || (moving_s && moving_d)) {
    // do nothing
} else {
    if (moving_w && place_free(x, y - spd)) y -= spd;
    if (moving_s && place_free(x, y + spd)) y += spd;
    if (moving_a && place_free(x - spd, y)) x -= spd;
    if (moving_d && place_free(x + spd, y)) x += spd;
}
// enemy chase
if (x != xprevious || y != yprevious)
{
    array_push(move_history, [x, y]);
}