/// @description Insert description here
// You can write your code in this editor
if (sprite_exists(playerPic)){
	draw_sprite(playerPic, 0, 128, 128);
}

if (playerName != ""){
	draw_set_font(fontDefault);
	draw_text(320, 400, playerName);
}