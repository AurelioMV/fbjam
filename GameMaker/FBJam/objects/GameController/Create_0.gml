// Create grid
globalvar gridMap, gridW, gridH, colH, colS, colL, rowsPos, activeCard, cardSpeed, dt, colorN, shapeN;
globalvar defaultSpeed, fastSpeed, cardN;
gridW = 3;
gridH = 7;
colorN = 3;
shapeN = 3;
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
fastSpeed = 2000;
colS = 1280;
colH = 100;
cardN = 0;

gridMap = ds_grid_create(gridW, gridH);
//gridMap[# 2, 2] = 5;

CreateCard(1);