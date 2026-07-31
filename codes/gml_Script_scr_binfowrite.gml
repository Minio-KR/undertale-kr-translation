draw_set_color(c_white);
var namex = 30;
var namey = 400;
var namewidth = scr_draw_name_curs(namex, namey);
draw_set_font(fnt_curs);
draw_text(namex + namewidth, 400, "     LV " + string(global.lv));

if (global.flag[271] == 0)
{
    draw_set_color(c_red);
    ossafe_fill_rectangle(275, 400, 275 + (global.maxhp * 1.2), 420);
    draw_set_color(c_yellow);
    ossafe_fill_rectangle(275, 400, 275 + (global.hp * 1.2), 420);
    draw_set_color(c_white);
    draw_set_font(fnt_curs);
    hpwrite = string(global.hp);
    
    if (global.hp < 10)
        hpwrite = "0" + string(global.hp);
    
    if (global.hp < 0)
        hpwrite = "0";
    
    if (global.flag[509] == 1)
        hpwrite = "00.001";
    
    if (global.flag[509] == 2)
        hpwrite = "00.0001";
    
    if (global.flag[509] == 3)
        hpwrite = "00.000001";
    
    if (global.flag[509] == 4)
        hpwrite = "00.0000000001";
    
    draw_text(290 + (global.maxhp * 1.2), 400, hpwrite + " / " + string(global.maxhp));
}
else
{
    draw_set_color(merge_color(c_red, c_maroon, 0.5));
    ossafe_fill_rectangle(255, 400, 255 + (global.maxhp * 1.2), 420);
    draw_set_color(c_yellow);
    ossafe_fill_rectangle(255, 400, 255 + (global.hp * 1.2), 420);
    draw_set_color(c_fuchsia);
    
    if (global.km > 40)
        global.km = 40;
    
    if (global.km >= global.hp)
        global.km = global.hp - 1;
    
    ossafe_fill_rectangle(255 + (global.hp * 1.2), 400, (255 + (global.hp * 1.2)) - (global.km * 1.2), 420);
    draw_sprite(spr_krmeter, 0, 265 + (global.maxhp * 1.2), 405);
    draw_set_color(c_white);
    draw_set_font(fnt_curs);
    hpwrite = string(global.hp);
    
    if (global.km > 0)
        draw_set_color(c_fuchsia);
    
    if (global.hp < 10)
        hpwrite = "0" + string(global.hp);
    
    if (global.hp < 0)
        hpwrite = "0";
    
    draw_text(305 + (global.maxhp * 1.2), 400, hpwrite + " / " + string(global.maxhp));
    draw_set_color(c_white);
    
    if (instance_exists(obj_hpname))
    {
        with (obj_hpname)
            instance_destroy();
    }
    
    draw_sprite(spr_hpname, 0, 220, 400);
}
