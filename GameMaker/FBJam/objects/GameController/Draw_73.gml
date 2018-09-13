/// @description Insert description here
// You can write your code in this editor

// HUD
draw_sprite(sprFooter, 0, 360, 1280);
draw_sprite(sprHeader, 0, 360, 0);
draw_sprite(sprBorder, 0, 0, 0);
draw_sprite_ext(sprBorder, 0, 720, 0, -1, 1, 0, c_white, 1);

// Score
draw_set_font(fontNumbers);
draw_text_transformed(320, 22, string(score), 0.7, 0.7, 0);

// Top
var i = nextShapeT + nextColorT * shapeN;
draw_sprite_ext(sprMiniIcons, i, 670, 35, 1.3, 1.3, 1, c_white, 1);

// Bottom
var i = nextShapeB + nextColorB * shapeN;
draw_sprite_ext(sprMiniIcons, i, 670, 85, 1.3, 1.3, 1, c_white, 1);

//Pause Menu
if(paused)
	draw_sprite(sprMenuPause, 0, 360, 0);
else if(gameOver)
	draw_sprite(sprGameOver, 0, 360, 0);