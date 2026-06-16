if (keyboard_check(vk_shift)) {
    if (keyboard_check(ord("W"))) y -= hspd;
    if (keyboard_check(ord("S"))) y += hspd;
    if (keyboard_check(ord("A"))) x -= hspd;
    if (keyboard_check(ord("D"))) x += hspd;
} else {
    if (keyboard_check(ord("W"))) y -= spd;
    if (keyboard_check(ord("S"))) y += spd;
    if (keyboard_check(ord("A"))) x -= spd;
    if (keyboard_check(ord("D"))) x += spd;
}