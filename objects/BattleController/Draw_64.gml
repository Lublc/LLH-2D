if (battle_active)
{
    draw_set_colour(c_black);

    draw_rectangle(
        0,
        0,
        display_get_gui_width(),
        display_get_gui_height(),
        false
    );

    draw_set_colour(c_white);

    draw_text(
        100,
        100,
        "Fighting " + current_enemy.enemy_name
    );

    draw_text(
        100,
        130,
        "Enemy HP: " + string(enemy_hp)
    );

    draw_text(
        100,
        160,
        "Player HP: " + string(PlayerTestObject.hp)
    );

    draw_text(
        100,
        190,
        display_message
    );
}