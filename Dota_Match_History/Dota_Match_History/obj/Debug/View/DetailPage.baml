   M S B A M L   `   `   `  ����M  IDota_Match_History, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Dota_Match_History.ViewModelDota_Match_History.ViewModel  5      )    #Dota_Match_History.View.DetailsPage   5      1vm*clr-namespace:Dota_Match_History.ViewModel  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$  DetailsPage��5	       � DataContext 5      0   *Dota_Match_History.ViewModel.DetailsPageVM  5   
    N� 
Background 5      �� 5   
    �� ImageSource$ Dota2BackGround.png��6   .��5      � -   5         �Name$ 
parentGrid��5      $	�� 40q�6   ��5   
   �� 5       �� Color$
 Gray��6    �� Opacity$	 0.4Q�6+    � 	Resources 5   
    �� 
TargetType   TableHeaderTextBlockStyle	 �� Property
 �� Value  KillColorBrush  DeathColorBrush  AssistColorBrush  GoldColorBrush  HeaderFillColor��%W  &	        &	 p     &	 �     &	 �     &	 �     &	 �     �� 5      " ��6   .�5      �� 	 � ��$
 16(�6-   �� 5       	 � ��$
 Center=�66   5"      �� 5$      $ GreenYellow��65   �� 5%      $	 Red��66   �� 5&      $ 
BlueViolet��67   �� 5'      $
 Gold��65   �� 5(      $ DarkSlateGray��66   5)       � RowDefinitions 5+   
   �� 5,      $��30 �6   �� 5-      $��1* �6   �� 5.      $��1* �6   �� 5/      $��1* �6   �� 50      $��1* �6   �� 51      $��1* �6   �� 52      $��1* �6   �� 53      $��1* �6   �� 54      $��30 �6   �� 55      $��1* �6   �� 56      $��1* �6   �� 57      $��1* �6   �� 58      $��1* �6   �� 59      $��1* �6   �� 5:      $��1* �6    � ColumnDefinitions 5>   
   �� 5@      $��3* �6   �� 5A      $��1* �6   �� 5B      $��1* �6   �� 5C      $��1* �6   �� 5D      $��1* �6   �� 5E      $��1* �6   .+�5K   
   �� $��Radiant Team - Overview��6   
������ 
�������$��20(�6_   �� 5L   
   $��Dire Team - Overview��6   
������ 
�������$��0��6\   $��8��6l   $��20(�6y   �� 5O   
   $��1��6   $��6��6!   #���  65   
�������6p   �� 5P   
   #���   6   $��PLAYER��6H    �� Padding$ 10 0 0 0q�6V   $��1��6i   
������ 
�������6�   �� 5Q   
   #���   6   $	��LVL��6H   $��Center=�6T   $��1��6q   $��1��6~   
������ 
�������6�   �� 5R   
   #���   6   $��K��6H   $��Center=�6R   $��1��6o   $��2��6|   
������ 
�������6�   �� 5S   
   #���   6   $��D��6H   $��Center=�6S   $��1��6p   $��3��6}   
������ 
�������6�   �� 5T   
   #���   6   $��A��6H   $��Center=�6Q   $��1��6n   $��4��6{   
������ 
�������6�   �� 5U   
   #���   6   $
��GOLD��6H   $��Center=�6V   $��1��6s   $��5��6�   
������ 
�������6�   �� 5X   
   $��9��6   $��6��6!   #���  65   
�������6o   �� 5Y   
   #���   6   $��PLAYER��6H   $ 10 0 0 0q�6V   $��9��6i   
������ 
�������6�   �� 5Z   
   #���   6   $	��LVL��6H   $��Center=�6T   $��9��6q   $��1��6~   
������ 
�������6�   �� 5[   
   #���   6   $��K��6H   $��Center=�6R   $��9��6o   $��2��6|   
������ 
�������6�   �� 5\   
   #���   6   $��D��6H   $��Center=�6S   $��9��6p   $��3��6}   
������ 
�������6�   �� 5]   
   #���   6   $��A��6H   $��Center=�6Q   $��9��6n   $��4��6{   
������ 
�������6�   �� 5^   
   #���   6   $
��GOLD��6H   $��Center=�6V   $��9��6s   $��5��6�   
������ 
�������6�   �� 5a   
   $��0��6   $��2��6!   $��6��6.   $��5��6B   $��1q�6S   
�������6|   �� 5b   
   $��0��6   $��10��6!   $��6��6/   $��5��6C   $��1q�6T   
�������6}   �� 5f   
    �� Orientation$ 
Horizontal=�6   $��2��6.   .+�5g      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[0].PlayerHero.HeroImage+ �� FallbackValue$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5h      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[0].PlayerHero.HeroName+$ (NAME)��6�   5i      �� 5j   
   $��2��6   $��1��6!   $��Center=�61   $��Center=�6�   
�������
������ ��6L   �� *CurrentMatch.players[0].level+$ (LVL)��6�   �� 5k   
   $��2��6   $��2��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *CurrentMatch.players[0].kills+$	 (K)��6�   �� 5l   
   $��2��6   $��3��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� * CurrentMatch.players[0].deaths+$	 (D)��6�   �� 5m   
   $��2��6   $��4��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *!CurrentMatch.players[0].assists+$	 (A)��6�   �� 5n   
   $��2��6   $��5��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *$"CurrentMatch.players[0].total_gold+$ (GOLD)��6�   �� 5p   
   $ 
Horizontal=�6   $��3��6.   .+�5q      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[1].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5r      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[1].PlayerHero.HeroName+$ (NAME)��6�   5s      �� 5t   
   $��3��6   $��1��6!   $��Center=�61   $��Center=�6�   
�������
������ ��6L   �� *CurrentMatch.players[1].level+$ (LVL)��6�   �� 5u   
   $��3��6   $��2��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *CurrentMatch.players[1].kills+$	 (K)��6�   �� 5v   
   $��3��6   $��3��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� * CurrentMatch.players[1].deaths+$	 (D)��6�   �� 5w   
   $��3��6   $��4��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *!CurrentMatch.players[1].assists+$	 (A)��6�   �� 5x   
   $��3��6   $��5��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *$"CurrentMatch.players[1].total_gold+$ (GOLD)��6�   �� 5z   
   $ 
Horizontal=�6   $��4��6.   .+�5{      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[2].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5|      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[2].PlayerHero.HeroName+$ (NAME)��6�   5}      �� 5~   
   $��4��6   $��1��6!   $��Center=�61   $��Center=�6�   
�������
������ ��6L   �� *CurrentMatch.players[2].level+$ (LVL)��6�   �� 5   
   $��4��6   $��2��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *CurrentMatch.players[2].kills+$	 (K)��6�   �� 5�   
   $��4��6   $��3��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� * CurrentMatch.players[2].deaths+$	 (D)��6�   �� 5�   
   $��4��6   $��4��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *!CurrentMatch.players[2].assists+$	 (A)��6�   �� 5�   
   $��4��6   $��5��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *$"CurrentMatch.players[2].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��5��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[3].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[3].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��5��6   $��1��6!   $��Center=�61   $��Center=�6�   
�������
������ ��6L   �� *CurrentMatch.players[3].level+$ (LVL)��6�   �� 5�   
   $��5��6   $��2��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *CurrentMatch.players[3].kills+$	 (K)��6�   �� 5�   
   $��5��6   $��3��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� * CurrentMatch.players[3].deaths+$	 (D)��6�   �� 5�   
   $��5��6   $��4��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *!CurrentMatch.players[3].assists+$	 (A)��6�   �� 5�   
   $��5��6   $��5��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *$"CurrentMatch.players[3].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��6��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[4].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[4].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��6��6   $��1��6!   $��Center=�61   $��Center=�6�   
�������
������ ��6L   �� *CurrentMatch.players[4].level+$ (LVL)��6�   �� 5�   
   $��6��6   $��2��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *CurrentMatch.players[4].kills+$	 (K)��6�   �� 5�   
   $��6��6   $��3��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� * CurrentMatch.players[4].deaths+$	 (D)��6�   �� 5�   
   $��6��6   $��4��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *!CurrentMatch.players[4].assists+$	 (A)��6�   �� 5�   
   $��6��6   $��5��6!   $��Center=�61   $��Center=�6�   #���  6�   
������ ��6L   �� *$"CurrentMatch.players[4].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��10��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[5].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[5].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��10��6   $��1��6"   $��Center=�62   $��Center=�6�   
�������
������ ��6M   �� *CurrentMatch.players[5].level+$ (LVL)��6�   �� 5�   
   $��10��6   $��2��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *CurrentMatch.players[5].kills+$	 (K)��6�   �� 5�   
   $��10��6   $��3��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� * CurrentMatch.players[5].deaths+$	 (D)��6�   �� 5�   
   $��10��6   $��4��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *!CurrentMatch.players[5].assists+$	 (A)��6�   �� 5�   
   $��10��6   $��5��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *$"CurrentMatch.players[5].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��11��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[6].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[6].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��11��6   $��1��6"   $��Center=�62   $��Center=�6�   
�������
������ ��6M   �� *CurrentMatch.players[6].level+$ (LVL)��6�   �� 5�   
   $��11��6   $��2��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *CurrentMatch.players[6].kills+$	 (K)��6�   �� 5�   
   $��11��6   $��3��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� * CurrentMatch.players[6].deaths+$	 (D)��6�   �� 5�   
   $��11��6   $��4��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *!CurrentMatch.players[6].assists+$	 (A)��6�   �� 5�   
   $��11��6   $��5��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *$"CurrentMatch.players[6].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��12��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[7].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[7].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��12��6   $��1��6"   $��Center=�62   $��Center=�6�   
�������
������ ��6M   �� *CurrentMatch.players[7].level+$ (LVL)��6�   �� 5�   
   $��12��6   $��2��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *CurrentMatch.players[7].kills+$	 (K)��6�   �� 5�   
   $��12��6   $��3��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� * CurrentMatch.players[7].deaths+$	 (D)��6�   �� 5�   
   $��12��6   $��4��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *!CurrentMatch.players[7].assists+$	 (A)��6�   �� 5�   
   $��12��6   $��5��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *$"CurrentMatch.players[7].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��13��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[8].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[8].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��13��6   $��1��6"   $��Center=�62   $��Center=�6�   
�������
������ ��6M   �� *CurrentMatch.players[8].level+$ (LVL)��6�   �� 5�   
   $��13��6   $��2��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *CurrentMatch.players[8].kills+$	 (K)��6�   �� 5�   
   $��13��6   $��3��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� * CurrentMatch.players[8].deaths+$	 (D)��6�   �� 5�   
   $��13��6   $��4��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *!CurrentMatch.players[8].assists+$	 (A)��6�   �� 5�   
   $��13��6   $��5��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *$"CurrentMatch.players[8].total_gold+$ (GOLD)��6�   �� 5�   
   $ 
Horizontal=�6   $��14��6.   .+�5�      �� $��5q�6   $
��Left=�6   ��6:   �� *.,CurrentMatch.players[9].PlayerHero.HeroImage+$V Phttps://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/phantom_assassin_sb.png��6�   �� 5�      $ 10 0 0 0q�6   $��Center=�6,   
�������
������ ��6G   �� *-+CurrentMatch.players[9].PlayerHero.HeroName+$ (NAME)��6�   5�      �� 5�   
   $��14��6   $��1��6"   $��Center=�62   $��Center=�6�   
�������
������ ��6M   �� *CurrentMatch.players[9].level+$ (LVL)��6�   �� 5�   
   $��14��6   $��2��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *CurrentMatch.players[9].kills+$	 (K)��6�   �� 5�   
   $��14��6   $��3��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� * CurrentMatch.players[9].deaths+$	 (D)��6�   �� 5�   
   $��14��6   $��4��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *!CurrentMatch.players[9].assists+$	 (A)��6�   �� 5�   
   $��14��6   $��5��6"   $��Center=�62   $��Center=�6�   #���  6�   
������ ��6M   �� *$"CurrentMatch.players[9].total_gold+$ (GOLD)��6�   5�      5�      