/// @description Insert description here
// You can write your code in this editor
draw_self();

// Top
var i = shapeTop * colorN + colorTop;
draw_sprite(sprIcons, i, x, y - 50);

// Bottom
var i = shapeBottom * colorN + colorBottom;
draw_sprite(sprIcons, i, x, y + 50);