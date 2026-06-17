if (keyboard_check(vk_shift)) {
    if (keyboard_check(ord("W")) && place_free(x, y - spd)) y -= hspd;
    if (keyboard_check(ord("S")) && place_free(x, y + spd)) y += hspd;
    if (keyboard_check(ord("A")) && place_free(x - spd, y)) x -= hspd;
    if (keyboard_check(ord("D")) && place_free(x + spd, y)) x += hspd;
} else {
    if (keyboard_check(ord("W")) && place_free(x, y - spd)) y -= spd;
    if (keyboard_check(ord("S")) && place_free(x, y + spd)) y += spd;
    if (keyboard_check(ord("A")) && place_free(x - spd, y)) x -= spd;
    if (keyboard_check(ord("D")) && place_free(x + spd, y)) x += spd;
}

