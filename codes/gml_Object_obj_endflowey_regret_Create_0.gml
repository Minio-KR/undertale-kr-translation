alarm[4] = 150;
con = 0;
flowey = -1;
alarm[5] = 60;
fimg = 0;
global.inbattle = 0;
global.faceemotion = 0;
ossafe_ini_open("undertale.ini");
chara = ini_read_string("General", "Name", "CHARA");

if (global.language == "en")
{
    replace = "";
    
    for (j = 1; j <= string_length(chara); j++)
    {
        if (ord(string_char_at(chara, j)) >= 12353)
            replace += (string_char_at(chara, j) + " ");
        else
            replace += string_char_at(chara, j);
    }
    
    chara = replace;
}

ossafe_ini_close();
scr_enable_screen_border(0);
