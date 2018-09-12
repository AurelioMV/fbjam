/// @function FlipCard()
var sb = activeCard.shapeBottom;
var st = activeCard.shapeTop;
var cb = activeCard.colorBottom;
var ct = activeCard.colorTop;

activeCard.shapeBottom = st;
activeCard.shapeTop = sb;
activeCard.colorBottom = ct;
activeCard.colorTop = cb;

audio_play_sound(sfxMove, 1, 0)