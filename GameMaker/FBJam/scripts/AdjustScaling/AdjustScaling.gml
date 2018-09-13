var w = max(1, browser_width);
var h = max(1, browser_height);
var ratio = w / h;
var cw = 1280 * ratio;

camera_set_view_size(view_camera[0], cw, 1280);
camera_set_view_pos(view_camera[0], (720 - cw) / 2, 0);

view_wport[0] = w;
view_hport[0] = h;

window_set_size(w, h);