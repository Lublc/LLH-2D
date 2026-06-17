// Don't allow movement during battle
if (!can_move) exit;

// Movement speed
var spd = keyboard_check(vk_shift) ? 8 : 4;

// Input
var moving_w = keyboard_check(ord("W"));
var moving_s = keyboard_check(ord("S"));
var moving_a = keyboard_check(ord("A"));
var moving_d = keyboard_check(ord("D"));

// Disable diagonal movement
if (!((moving_w && moving_a) ||
      (moving_w && moving_d) ||
      (moving_s && moving_a) ||
      (moving_s && moving_d)))
{
    // Up
    if (moving_w && place_free(x, y - spd))
    {
        y -= spd;
    }

    // Down
    if (moving_s && place_free(x, y + spd))
    {
        y += spd;
    }

    // Left
    if (moving_a && place_free(x - spd, y))
    {
        x -= spd;
    }

    // Right
    if (moving_d && place_free(x + spd, y))
    {
        x += spd;
    }
}

// Record movement history for enemies to follow
if (x != xprevious || y != yprevious)
{
    array_push(move_history, [x, y]);
}