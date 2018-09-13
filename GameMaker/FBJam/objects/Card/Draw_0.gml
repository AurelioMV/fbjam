/// @description Insert description here
// You can write your code in this editor

if (poof > 0) {
	draw_sprite_ext(sprPoof, floor(poof * 3.99), x, y, 1, 1, 0, c_white, 1);
	poof -= 5 * dt;
	
	if (poof <= 0){
		instance_destroy(self);	
	}
	return;
} else {
	draw_self();
}

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
	draw_sprite_ext(sprFlip, floor(flipping * 2.99), x, y, 1, 1, 0, c_white, 0.7);
	flipping -= 7 * dt;
}

// Attaching effect
if (attaching > 0) {
	draw_sprite_ext(sprAttach, floor(attaching * 3.99), x, y + 70, 1, 1, 0, c_white, 1);
	attaching -= 5 * dt;
}
if (attground > 0) {
	draw_sprite_ext(sprAttachGround, floor(attground * 4.99), x, y + 30, 1, 1, 0, c_white, 1);
	attground -= 5 * dt;
}