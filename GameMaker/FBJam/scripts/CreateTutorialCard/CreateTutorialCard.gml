/// @function CreateCard()
tutorialStep++;

var row = 1;
//Set already generated vars
var st = nextShapeT;
var sb = nextShapeB;
var ct = nextColorT;
var cb = nextColorB;

//Generate current tutorial step row and next vars
switch(tutorialStep){
	case 0:
		nextShapeT = 0;
		nextShapeB = 1;
		nextColorT = 0;
		nextColorB = 1;
		break;
	case 1:
		nextShapeT = 2;
		nextShapeB = 2;
		nextColorT = 2;
		nextColorB = 0;
		break;
	case 2:
		nextShapeT = 1;
		nextShapeB = 0;
		nextColorT = 0;
		nextColorB = 2;
		break;
	case 3:
		nextShapeT = 1;
		nextShapeB = 1;
		nextColorT = 2;
		nextColorB = 2;
		break;
	case 4:
		nextShapeT = 0;
		nextShapeB = 1;
		nextColorT = 1;
		nextColorB = 2;
		break;
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
cardSpeed = defaultSpeed;