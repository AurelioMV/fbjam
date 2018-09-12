/// @description Insert description here
// You can write your code in this editor
draw_self();

// Top
var i = shapeTop * colorN + colorTop;
draw_sprite_ext(sprIcons, i, x, y - 73, 0.85, 0.85, 0, c_white, 1);
draw_sprite(sprMiniIcons, i, x - 70, y - 120);

// Bottom
var i = shapeBottom * colorN + colorBottom;
draw_sprite_ext(sprIcons, i, x, y + 73, 0.85, 0.85, 0, c_white, 1);
draw_sprite(sprMiniIcons, i, x + 70, y + 120);