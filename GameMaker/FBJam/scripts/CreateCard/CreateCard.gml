/// @function CreateCard(row, shapeTop, shapeBottom, colorTop, colorBottom)
/// @param row

if (tutorialMode){
	CreateTutorialCard();
	return;
}

var row = argument0;
var st = nextShapeT;
var sb = nextShapeB;
var ct = nextColorT;
var cb = nextColorB;
if (cardN < 20 && random(1) > cardN / 70){
	nextShapeT = floor(random(shapeN - 1));
	nextShapeB = floor(random(shapeN - 1));
} else {
	nextShapeT = floor(random(shapeN));
	nextShapeB = floor(random(shapeN));
}
nextColorT = floor(random(colorN));
nextColorB = floor(random(colorN));
if (cardN > 10 && random(1) < 0.07){
	// Rainbow
	if (random(1) < 0.5){
		nextColorT = 3;
		nextShapeT = 0;
	} else {
		nextColorB = 3;
		nextShapeB = 0;
	}
} else {
	// Bomb
	if (random(1) < 0.03){
		nextColorT = 3;
		nextColorB = 3;
		nextShapeT = 1;
		nextShapeB = 1;
	}
}
var xx = rowsPos[| row];

activeCard = instance_create_depth(xx, -50, 0, Card);
activeCard.row = row;
activeCard.shapeTop = st;
activeCard.shapeBottom = sb;
activeCard.colorTop = ct;
activeCard.colorBottom = cb;

cardN++;
activeCard.depth = -cardN;

//Every 5 cards spawned, increase speed
if(cardN % 5 == 0) {
	increasedSpeed += 15;
}
cardSpeed = defaultSpeed + increasedSpeed;