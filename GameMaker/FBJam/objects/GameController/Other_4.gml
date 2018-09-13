// Create grid
globalvar gridMap, gridW, gridH, colH, colS, colL, rowsPos;
globalvar activeCard, colorN, shapeN, cardN, nextColorT, nextColorB, nextShapeT, nextShapeB;
globalvar cardSpeed, defaultSpeed, fastSpeed, increasedSpeed, dt;
globalvar currentPlacedCards, maxCards; //To check all columns completion
globalvar touchX, touchY, touchActive;
globalvar paused, gameOver;
gridW = 3;
gridH = 7;
colorN = 3;
shapeN = 4;
colL = ds_list_create();
for (var i = 0; i < gridW; i++) {
	colL[| i] = 0;
}
rowsPos = ds_list_create();
rowsPos[| 0] = 120;
rowsPos[| 1] = 720/2;
rowsPos[| 2] = 720-120;
defaultSpeed = 500;
cardSpeed = defaultSpeed;
fastSpeed = 2500;
increasedSpeed = 0;
colS = 1160;
colH = 130;
cardN = 0;
score = 0;
currentPlacedCards = 0;
maxCards = gridW * gridH;
touchActive = false;
gridMap = ds_grid_create(gridW, gridH);
paused = false;
gameOver = false;
reloadedLB = false;

// Font settings
draw_set_halign(fa_center);

if(!tutorialMode && !instance_exists(TutorialController)) {
	// Create first card
	nextShapeT = floor(random(shapeN - 1));
	nextShapeB = floor(random(shapeN - 1));
	nextColorT = floor(random(colorN));
	nextColorB = floor(random(colorN));
	CreateCard(1);
}

if(!muted){
	audio_master_gain(1);
	audio_play_sound(sfxTheme, 1, true);
}
	