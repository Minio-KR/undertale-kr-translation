demonx = "...";
var l_char = string_to_hiragana(string_lower(argument0));

if (l_char == "aaaaaa" || l_char == "ああああああ" || l_char == "ㄱㄱㄱㄱㄱㄱ")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "ほんとに#これでいいの…？";
    else
        spec_m = "별 생각 없으신가 봐요...?";
}
else if (l_char == "asgore" || l_char == "あずごあ" || l_char == "아스고어")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "そのなまえは　ダメだ。";
    else
        spec_m = "그건 안 된다.";
}
else if (l_char == "toriel" || l_char == "とりえる" || l_char == "토리엘")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "ちゃんと　なまえを#かんがえるのよ。";
    else
        spec_m = "스스로의 이름은#스스로 생각하는 게#좋겠구나, 아가야.";
}
else if (l_char == "sans" || l_char == "さんず" || l_char == "샌즈")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "ダメだぜ。";
    else
        spec_m = "안 돼.";
}
else if (l_char == "undyne" || l_char == "あんだいん" || l_char == "언다인")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "ひとの　なまえを#パクるな！";
    else
        spec_m = "네 이름은 네가 지어!";
}
else if (l_char == "flowey" || l_char == "ふらうぃ" || l_char == "플라위")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "そのなまえは#ボクだけのもの。";
    else
        spec_m = "그 이름 내가 골랐거든.";
}
else if (l_char == "chara" || l_char == "きゃら" || l_char == "차라")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "ほんとうのなまえ。";
    else
        spec_m = "진짜 이름.";
}
else if (l_char == "alphys" || l_char == "あるふぃー" || l_char == "알피스")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "ダ…　ダメだよっ！";
    else
        spec_m = "그... 그러지 마.";
}
else if (l_char == "alphy" || l_char == "あるっち" || l_char == "알피")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "う…　うん#いいよ…";
    else
        spec_m = "어어... 괜찮나?";
}
else if (l_char == "파피루스")
{
    allow = 0;
    spec_m = "두 번째로 멋진 이름을#지어보도록!!!!";
}
else if (l_char == "papyru" || l_char == "ぱぴるす" || l_char == "파피루")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "オレさまは#べつに#いいよッ！";
    else
        spec_m = "내 허락하노라!!!!";
}
else if (l_char == "napsta" || l_char == "blooky" || l_char == "냅스타블룩" || l_char == "냅스타" || l_char == "블루키")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "…………#(とめるちからは　ない)";
    else
        spec_m = "...........#(당신을 막을 힘이# 없어 보인다.)";
}
else if (l_char == "murder" || l_char == "mercy" || l_char == "살인" || l_char == "살인자" || l_char == "살해" || l_char == "자비" || l_char == "학살" || l_char == "몰살" || l_char == "불살")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "こんな　なまえで#いいんですか？";
    else
        spec_m = "꽤 직설적으로 지으시네요...?";
}
else if (l_char == "asriel" || l_char == "あずりえる" || l_char == "아스리엘")
{
    allow = 0;
    
    if (global.language == "ja")
        spec_m = "…";
    else
        spec_m = "...";
}
else if (l_char == "catty" || l_char == "きゃってぃ" || l_char == "캐티")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "アリゲッティ！　みて！#アタシのなまえ#だしぃ～！";
    else
        spec_m = "브래티! 브래티!#저기 내 이름이야!";
}
else if (l_char == "bratty" || l_char == "ありげってぃ" || l_char == "브래티")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "べつに　いいけどぉ～？";
    else
        spec_m = "뭐, 괜찮겠지. 아마?";
}
else if (l_char == "메타톤")
{
    allow = 0;
    spec_m = "그 이름은 이용료가#많이 나간답니다, 달링!!!";
}
else if (l_char == "mtt" || l_char == "metta" || l_char == "mett" || l_char == "めた" || l_char == "めたとん" || l_char == "메타")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "おお！！キミ！！#せんでん　してくれるのかい？";
    else
        spec_m = "오오옷!!! 제 브랜드를#홍보해 주시게요?";
}
else if (l_char == "gerson" || l_char == "がーそん" || l_char == "거슨")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "ワッハッハッ！#そりゃあいい！";
    else
        spec_m = "와하하! 안 될 것 있겠나?";
}
else if (l_char == "shyren" || l_char == "しゃいれーん" || l_char == "샤이렌")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "…？";
    else
        spec_m = "...?";
}
else if (l_char == "aaron" || l_char == "あーろん" || l_char == "아론")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "このなまえで#よろしいですか？(^_–)☆ ";
    else
        spec_m = "이 이름이 확실합니까? ; )";
}
else if (l_char == "temmie" || l_char == "てみー" || l_char == "테미")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "ホィ！";
    else
        spec_m = "ㅓ어아!!";
}
else if (l_char == "woshua" || l_char == "うぉっしゅあ" || l_char == "워슈아")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "せいけつな　なまえ。";
    else
        spec_m = "깨끗한 이름.";
}
else if (l_char == "jerry" || l_char == "じぇりー" || l_char == "제리")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "ジェリー。";
    else
        spec_m = "제리래.";
}
else if (l_char == "bpants" || l_char == "ばがぱん" || l_char == "버거팬츠" || l_char == "버거빤스")
{
    allow = 1;
    
    if (global.language == "ja")
        spec_m = "…なまえの#ネタぎれ？";
    else
        spec_m = "너 진짜 지을 이름이#어지간히도 없나 보다.";
}
else if (l_char == "gaster" || l_char == "がすたー" || l_char == "가스터")
{
    game_restart();
}
else
{
    allow = 1;
    spec_m = scr_gettext("name_entry_confirm");
}
