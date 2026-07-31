if (global.inbattle == 0 && global.flag[18] == 0)
    script_execute(scr_end);

if (messed == 1)
    window_set_caption("플라위테일");

if (messed == 2)
    window_set_caption(" ");

if (messed == 3)
{
    str_r = "";
    
    repeat (floor(2 + random(15)))
    {
        ir = choose(0, 1);
        
        if (ir == 0)
            str_piece = choose("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "밺", "롎", "궳", "괽", "굈", "갏", "긵", "깓", "긲", "긃", "긞", "긘", "깈", "긥", "깑", "괧", " ", " ");
        
        if (ir == 1)
            str_piece = choose("m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "쇌", "딴", "죤", "훙", "쟀", "람", "렵", "랑", "돠", " ", " ");
        
        str_r += str_piece;
    }
    
    window_set_caption(str_r);
}
