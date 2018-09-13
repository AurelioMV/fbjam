/// @description Insert description here
// You can write your code in this editor
frame += dt * 5;

if (paused) return;

if (!checked){
	switch (tutorialStep){
		case 0: case 1: case 2:
			draw_sprite(sprHand, frame, 320, 640);
			break;
		case 3:
			draw_sprite_ext(sprHand, frame, 320, 640, 1, 1, 90, c_white, 1);
			break;
		case 4:
			draw_sprite_ext(sprHand, frame, 320, 640, 1, 1, -90, c_white, 1);
			break;
	}
}

if (tutorialHint){
	var xx = 420;
	var yy = 490;
	switch (tutorialStep){
		case 1:
			draw_sprite(sprHint, 0, -15, 1000 - 285);
			draw_sprite(sprMessages, 0, xx, yy);
			break;
		case 2:
			draw_sprite(sprHint, 0, -15, 1000 - 285);
			draw_sprite(sprMessages, 1, xx, yy);
			break;
		case 3:
			draw_sprite(sprHint, 0, -15, 1000 - 285);
			draw_sprite(sprMessages, 2, xx, yy);
			break;
		case 4:
			tutorialHint = false;
			break;
		case 5:
			tutorialHint = false;
			break;
		case 6:
			draw_sprite(sprHint, 0, -15, 1000 - 285);
			draw_sprite(sprMessages, 3, xx, yy);
			break;
	}
}