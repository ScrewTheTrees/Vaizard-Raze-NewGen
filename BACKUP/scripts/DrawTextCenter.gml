///DrawTextCenter(x,y,string,color,font,alpha)

oldCol = draw_get_color();
oldAlpha = draw_get_alpha();


if argument3>=0
    draw_set_color(argument3);
if argument4>=0
    draw_set_font(argument4);
if argument5>=0
    draw_set_alpha(argument5);
    
    
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_text(argument0,argument1,argument2)

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(oldCol);
draw_set_alpha(oldAlpha);
draw_set_font(Font12A);
