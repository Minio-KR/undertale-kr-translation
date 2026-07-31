# undertale-kr-translation
A port and improvement of the Korean translation of UNDERTALE by Team Waldo, for UNDERTALE version 1.08.

README 작성 예정

================

적용 방법

1. UndertaleModTool( https://github.com/UnderminersTeam/UndertaleModTool )로 게임의 data.win 파일을 연다.
2. Scripts -> Resource Importers -> ImportAllEmbeddedTextures.csx -> 'EmbeddedTextures(_DRMFREE)' 폴더 선택.<br>(Failed 메시지는 모두 '확인'을 눌러 넘길 것.)
3. Scripts -> Resource Importers -> ImportFonts.csx -> 'fonts' 폴더 선택.
4. Scripts -> Resource Importers -> ImportGML.csx -> 'codes' 폴더 선택 -> '아니요' 선택.
5. Scripts -> Resource Importers -> ImportSingleSound.csx -> 'snd_wonderfulidea.wav' 파일 선택 -> '아니요' 선택.
6. 다음 사항들을 수동으로 편집.
   1) Data/Fonts -> 'fnt_curs' -> Scale '1.5' / '1.5'
   2) Data/Sprites -> 'spr_6hope' -> Textures '...' -> <br>- Source position/size '980' / '1008' / '42' / '14'<br>- Target position/size '1' / '1' / '42' / '14'<br>- Bounding size '43' / '15'
   3) Data/Sprites -> 'spr_wordfall2' -> Textures '...' -> <br>Source position/size '992' / '1984' / '32' / '15'<br>- Target position/size '3' / '1' / '32' / '15'<br>- Bounding size '37' / '17'
   4) Data/Sprites -> 'spr_wordfall3' -> Textures '...' -> <br>Source position/size '1008' / '2000' / '16' / '15'<br>- Target position/size '2' / '2' / '16' / '15'<br>- Bounding size '20' / '19'
   5) Data/Sprites -> 'spr_wordfall4' -> Textures '...' -> <br>Source position/size '992' / '2016' / '32' / '15'<br>- Target position/size '2' / '1' / '32' / '15'<br>- Bounding size '35' / '17'
   6) Data/Sprites -> 'spr_wordfall5' -> Textures '...' -> <br>Source position/size '976' / '2032' / '48' / '15'<br>- Target position/size '2' / '1' / '48' / '15'<br>- Bounding size '50' / '17'
