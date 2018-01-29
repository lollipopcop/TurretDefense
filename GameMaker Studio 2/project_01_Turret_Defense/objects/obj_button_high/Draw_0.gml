/// @description set up button text

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_button);

//this checks the text variable which is made in the object creation code
draw_text(x, y, string_hash_to_newline(text + " " + string(cost)));

