// Player's turn where space does damage to enemy and checks for win condition
if state == "player_turn" { 
	if keyboard_check_pressed(vk_space) {
		enemy_hp -= player_damage;
	
		if enemy_hp <= 0 {
			enemy_hp = 0; 
			state = "won";
			display_message = "YOu molested the lester!";
		}
// Puts 1 second delay timer between messages and attacks
		else {
			state = "player_attack_wait";
			display_message = "Player used suck!";
			wait_timer = 60; 
		}
	}
}

// Interval between enemy attack and player attack 
else if state = "player_attack_wait" { 
	wait_timer -= 1 
	
	if wait_timer <= 0 { 
		state = "enemy_turn"; 
		display_message = "Lester getting ready to molest.."
		wait_timer = 60; 
	}
}
		

// Enemy turn - does dmg to player and checks for loss condition 
else if state == "enemy_turn" { 
	wait_timer -= 1 
	
	if wait_timer <= 0 { 
		player_hp -= enemy_damage;
	
		if player_hp <= 0 { 
			player_hp = 0;
			state = "lost";
			display_message = "You got molested by the lester..";
		} 
	
		else {
			state = "player_turn";
			display_message = "Molestation attack by lester!" 
		}
	}
}