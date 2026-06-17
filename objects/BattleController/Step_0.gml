if (battle_active)
{
    if (current_enemy != noone)
    {
        // PLAYER TURN
        if (state == "player_turn")
        {
            if (keyboard_check_pressed(vk_space))
            {
                enemy_hp -= player_damage;

                if (enemy_hp <= 0)
                {
                    enemy_hp = 0;
                    state = "won";
                    display_message = "The monster falls... Press ENTER.";
                }
                else
                {
                    state = "player_attack_wait";
                    display_message = "Player used Slash!";
                    wait_timer = 60;
                }
            }
        }

        // WAIT AFTER PLAYER ATTACK
        else if (state == "player_attack_wait")
        {
            wait_timer--;

            if (wait_timer <= 0)
            {
                state = "enemy_turn";
                display_message = "The monster gets ready to attack...";
                wait_timer = 60;
            }
        }

        // ENEMY TURN
        else if (state == "enemy_turn")
        {
            wait_timer--;

            if (wait_timer <= 0)
            {
                with (PlayerTestObject)
                {
                    hp -= other.enemy_damage;
                }

                if (PlayerTestObject.hp <= 0)
                {
                    with (PlayerTestObject)
                    {
                        hp = 0;
                    }

                    state = "lost";
                    display_message = "You fell... Press ENTER.";
                }
                else
                {
                    display_message = "The monster slashed you!";
                    state = "enemy_attack_wait";
                    wait_timer = 60;
                }
            }
        }

        // WAIT AFTER ENEMY ATTACK
        else if (state == "enemy_attack_wait")
        {
            wait_timer--;

            if (wait_timer <= 0)
            {
                state = "player_turn";
                display_message = "Press SPACE to attack!";
            }
        }

        // WIN
        else if (state == "won")
        {
            if (keyboard_check_pressed(vk_enter))
            {
                if (instance_exists(current_enemy))
                {
                    instance_destroy(current_enemy);
                }

                current_enemy = noone;

                battle_active = false;
                state = "";
                display_message = "";

                with (PlayerTestObject)
                {
                    can_move = true;
                }
            }
        }

        // LOSE
        else if (state == "lost")
        {
            if (keyboard_check_pressed(vk_enter))
            {
                game_restart();
            }
        }
    }
}