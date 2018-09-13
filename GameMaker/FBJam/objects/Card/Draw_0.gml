/// @description Insert description here
// You can write your code in this editor
draw_self();

// Top
var i = shapeTop + colorTop * shapeN;
draw_sprite_ext(sprIcons, i, x, y - 73, 0.85, 0.85, 0, c_white, 1);
draw_sprite(sprMiniIcons, i, x - 70, y - 120);

// Bottom
var i = shapeBottom + colorBottom * shapeN;
draw_sprite_ext(sprIcons, i, x, y + 73, 0.85, 0.85, 0, c_white, 1);
draw_sprite(sprMiniIcons, i, x + 70, y + 120);

// Dropping effect
if (droppingDown > 0) {
	draw_sprite_ext(sprSlideDown, floor(droppingDown * 2.99), x, y - 100, 1, 1, 0, c_white, 0.2);
	droppingDown -= 5 * dt;
}

// Sliding effect
if (sliding != 0) {
	draw_sprite_ext(sprSlide, floor(abs(sliding) * 2.99), x - 80 * sign(sliding), y, sign(sliding) * 0.6, 1, 0, c_white, 0.2);
	if (sliding > 0){
		sliding -= 5 * dt;
		if (sliding < 0) sliding = 0;
	} else {
		sliding += 5 * dt;
		if (sliding > 0) sliding = 0;		
	}
}

// Flipping effect
if (flipping > 0) {
	draw_sprite_ext(sprFlip, floor(flipping * 2.99), x, y, 1, 1, 0, c_white, 0.3);
	flipping -= 5 * dt;
}