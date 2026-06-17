var bc = instance_find(BattleController, 0);

if (!bc.battle_active)
{
    bc.battle_active = true;
    bc.current_enemy = other;
	
    bc.player_damage = 10;

    bc.enemy_hp = other.hp;
    bc.enemy_damage = other.attack;

    bc.state = "player_turn";
    bc.display_message = "Press SPACE to attack!";
    bc.wait_timer = 0;

    can_move = false;
}