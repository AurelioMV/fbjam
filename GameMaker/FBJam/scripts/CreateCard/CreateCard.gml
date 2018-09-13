/// @function CreateCard(row, shapeTop, shapeBottom, colorTop, colorBottom)
/// @param row

var row = argument0;
var st = nextShapeT;
var sb = nextShapeB;
var ct = nextColorT;
var cb = nextColorB;
nextShapeT = floor(random(shapeN));
nextShapeB = floor(random(shapeN));
nextColorT = floor(random(colorN));
nextColorB = floor(random(colorN));

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
	increasedSpeed += 20;
}
cardSpeed = defaultSpeed + increasedSpeed;