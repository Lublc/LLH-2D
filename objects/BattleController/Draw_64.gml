// Shows player, enemy hp and the message
draw_text(50, 50, "PLAYER HP: " + string(player_hp)); 
draw_text(50, 75, "LESTER HP: " + string(enemy_hp));
draw_text(50, 150, display_message);


// Attack message - should be changed to buttons later ? but testing out with space
if state == "player_turn" {
	draw_text(50, 175, "Press space to attack")
}