var text_id = argument[0];
var text = ds_map_find_value(global.text_data_en, text_id);

if (is_undefined(text))
    text = "";

if (global.language == "ja")
{
    var loc_text = ds_map_find_value(global.text_data_ja, text_id);
    
    if (!is_undefined(loc_text))
        text = loc_text;
}

for (var i = 1; i <= (string_length(text) - 3); i++)
{
    if (string_copy(text, i, 2) == "\[" && string_char_at(text, i + 3) == "]")
    {
        var sel = string_char_at(text, i + 2);
        var replace;
        
        if (sel == "C")
        {
            replace = global.charname;
        }
        else if (sel == "차")
        {
            replace = "";
            
            for (var j = 1; j <= string_length(global.charname); j++)
            {
                if (ord(string_char_at(global.charname, j)) >= 12353)
                    replace += (string_char_at(global.charname, j) + " ");
                else
                    replace += string_char_at(global.charname, j);
            }
        }
        else if (sel == "찿")
        {
            replace = "";
            
            for (var j = 1; j <= string_length(global.charname); j++)
            {
                if (ord(string_char_at(global.charname, j)) >= 12353)
                    replace += (string_char_at(global.charname, j) + " ");
                else
                    replace += string_char_at(global.charname, j);
            }
            
            if (string_length(replace) > 8)
            {
                if (string_char_at(replace, 6) == " ")
                    replace = string_copy(replace, 1, 5) + "&" + string_copy(replace, 7, string_length(replace));
                else if (string_char_at(replace, 7) == " ")
                    replace = string_copy(replace, 1, 6) + "&" + string_copy(replace, 8, string_length(replace));
                else
                    replace = string_insert("&", replace, 7);
            }
        }
        else if (sel == "G")
        {
            replace = string(global.gold);
        }
        else if (sel == "I")
        {
            replace = global.itemname[global.menucoord[1]];
        }
        else if (sel == "아")
        {
            replace = "";
            
            for (var j = 1; j <= string_length(global.itemname[global.menucoord[1]]); j++)
            {
                if (ord(string_char_at(global.itemname[global.menucoord[1]], j)) >= 12353)
                    replace += (string_char_at(global.itemname[global.menucoord[1]], j) + " ");
                else
                    replace += string_char_at(global.itemname[global.menucoord[1]], j);
            }
        }
        else if (sel == "1" && argument_count > 1)
        {
            replace = argument[1];
        }
        else if (sel == "2" && argument_count > 2)
        {
            replace = argument[2];
        }
        else if (sel == "3" && argument_count > 3)
        {
            replace = argument[3];
        }
        else if (sel == "4" && argument_count > 4)
        {
            replace = argument[4];
        }
        else if (sel == "5" && argument_count > 5)
        {
            replace = argument[5];
        }
        else if (sel == "6" && argument_count > 6)
        {
            replace = argument[6];
        }
        else if (sel == "7" && argument_count > 7)
        {
            replace = argument[7];
        }
        else if (sel == "8" && argument_count > 8)
        {
            replace = argument[8];
        }
        else if (sel == "9" && argument_count > 9)
        {
            replace = argument[9];
        }
        else if (sel == "은" || sel == "는")
        {
            if (ord(string_char_at(text, i - 2)) >= 44032 && ((ord(string_char_at(text, i - 2)) - 44032) % 28) != 0)
                replace = "은 ";
            else
                replace = "는 ";
        }
        else if (sel == "이" || sel == "가")
        {
            if (ord(string_char_at(text, i - 2)) >= 44032 && ((ord(string_char_at(text, i - 2)) - 44032) % 28) != 0)
                replace = "이 ";
            else
                replace = "가 ";
        }
        else if (sel == "을" || sel == "를")
        {
            if (ord(string_char_at(text, i - 2)) >= 44032 && ((ord(string_char_at(text, i - 2)) - 44032) % 28) != 0)
                replace = "을 ";
            else
                replace = "를 ";
        }
        else if (sel == "와" || sel == "과")
        {
            if (ord(string_char_at(text, i - 2)) >= 44032 && ((ord(string_char_at(text, i - 2)) - 44032) % 28) != 0)
                replace = "과 ";
            else
                replace = "와 ";
        }
        else if (sel == "라")
        {
            if (ord(string_char_at(text, i - 2)) >= 44032 && ((ord(string_char_at(text, i - 2)) - 44032) % 28) != 0)
                replace = "이 ";
            else
                replace = "";
        }
        else if (sel == "마")
        {
            if (ord(string_char_at(text, i - 1)) >= 44032 && ((ord(string_char_at(text, i - 1)) - 44032) % 28) != 0)
                replace = "이";
            else
                replace = "";
        }
        else
        {
            replace = "";
        }
        
        var before = string_copy(text, 1, i - 1);
        var after = string_copy(text, i + 4, string_length(text));
        text = before + replace + after;
        i += (string_length(replace) - 1);
    }
}

return text;
