   M S B A M L   `   `   `  ����G  CFS19_PredSet, Version=1.0.0.3, Culture=neutral, PublicKeyToken=null+clr-namespace:FS19_PredSetFS19_PredSet  5   	       FS19_PredSet.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:FS19_PredSet     5   	     � Title$  FS19 PRED SET��5   	   $	��620��6   $	��800��6,    � 
ResizeMode$ NoResize=�68    � WindowStyle$
 None=�6N    � Icon$ icons/fs19predsetlogo.png��6a    � 	Resources 5	         TextEffectCollection1��%   &	        y� 5
   
   6   5      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FF162236��6    � Offset$ 0Q�61   � 5      $ 	#FF364866��6   $ 1Q�61   5      	 � RowDefinitions	 5   
   �� 5      $��30 �6   �� 5      $��* �6   
 � ColumnDefinitions
 5   
   �� 5      $��60 �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��10 �6   .+�5   
   � -   5        ���	#FF22222D$��0��5   &   $��0��66   $��4��6C   .+�5      �� $��icons/fs19predsetlogo.png��6   $
��Left=�67   $��Center=�6R   $��5q�6m   6z   �� 5       
�������$
��30,5q�6+   $��FS19 PredSet��69   $
��Left=�6M   $��Center=�6h   �� 5!      -   5         ��Name$ Btn_minimize��5!      $��Center=�6+   $��Right=�6F   $��20��6b   $��20��6m   $��	10,0,35,0q�6y   ���	#FF303044���	#00000000
�������  ButtonMenuTemplate#���  6�    � Cursor$
 Hand��6�   .��5"      �� $��Center=�6   $��Center=�67   $��20(�6T   $��Lucida Sans)�6b   _6   5#      �� 5$      -   5        $ 	btn_close��5$      $��Center=�6(   $��Right=�6C   $��20��6_   $��20��6j   $
��10,0q�6�   ���	#FF303044���	#00000000
�������#���  6�   $
 Hand��6  .��5%      �� $��Center=�6   $��Center=�67   $��20(�6T   $��Lucida Sans)�6b   X6   5&      5'      � 5)   
   ���	#FF22222D$��0��6&   $��1��66   	 5*      �� 5+      $��* �6    �� 5,      $
��auto �6    �� 5-      $
��auto �6    �� 5.      $
��auto �6    �� 5/      $��* �6    .+�52      �� -   5        $ interface_button��52      $��1��6/   ���	#FF22222D#���  6�   $��	0,10,0,10q�6�   ��6S   Z� .��53      �� $%��icons/icons8-bookmark-white.png��6   $��Center=�6A   $��Center=�6^   $��0q�6y   55      �� 56      -   5        $ settings_button��56      $��2��6.   ���	#FF22222D#���  6�   $��	0,10,0,10q�6�   $
 Hand��6�   ��6R   Z� .��58      �� $$��icons/icons-settings-white.png��6   $��Center=�6@   $��Center=�6]   $��0q�6x   5:      �� 5;      -   5        $ credits_button��5;      $��3��6-   ���	#FF22222D#���  6�   $��	0,10,0,10q�6�   ��6Q   Z� .��5<      �� $'��!icons/icons8-mastercard-white.png��6   $��Center=�6C   $��Center=�6`   $��0q�6{   5=      5>      � 5@   
   $��1��6   $��1��6    $��12,0,0,0q�6-   .+�5A      �� -   5         ��Name$ buttons_preddef��5A      $y�Visible=�62   .+�5B      � 	 5C      �� 5D      $��5 �6(   �� 5E      $
��auto �6(   �� 5F      $
��auto �6(   �� 5G      $
��auto �6(   �� 5H      $
��auto �6(   �� 5I      $
��auto �6(   �� 5J      $
��auto �6(   �� 5K      $
��auto �6(   �� 5L      $
��auto �6(   �� 5M      $
��auto �6(   �� 5N      $��20 �6(   .+�5R      �� -   5        $ btn_1set��5R      $��2��6/   $	��0,5q�6<   $��75��6I   $	��105��6U     ButtonSettingTemplate#���  6a   $
 Hand��6�   ���	#FF637595.��6�   Some long text in first5T      �� 5U      -	   5        $ btn_2set��5U      $��3��6/   $	��0,5q�6<   $��75��6I   $	��105��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   Some long text in second5W      �� 5X      -
   5        $ btn_3set��5X      $��4��6/   $	��0,5q�6<   $��75��6I   $	��105��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   Third that is very long5Z      �� 5[      -   5        $ btn_4set��5[      $��5��6/   $	��0,5q�6<   $��75��6I   $	��105��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   Third that is very long5]      �� 5^      -   5        $ btn_5set��5^      $��6��6/   $	��0,5q�6<   $��70��6I   $	��100��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   Fifth6�   �� 5_      -   5        $ btn_6set��5_      $��7��6/   $	��0,5q�6<   $��70��6I   $	��100��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   !Sixth looong text with gradient6�   �� 5`      -   5        $ btn_7set��5`      $��8��6/   $	��0,5q�6<   $��70��6I   $	��100��6U   #���  6a   $
 Hand��6�   ���	#FF637595.��6�   	Seventh6�   5a      5b      5d      � 5f   
   $��2��6   $��1��6    
 5g      �� 5h      $
��auto �6#   �� 5i      $��* �6#   .+�5k      �� -   5        $ 
panel_view��5k      $y�Visible=�6-   $��2��6B   .+�5l      � 	 5m      �� 5n      $	��120 �6(   �� 5o      $
��auto �6(   �� 5p      $
��auto �6(   �� 5q      $
��auto �6(   �� 5r      $
��auto �6(   �� 5s      $
��auto �6(   �� 5t      $
��auto �6(   �� 5u      $
��auto �6(   �� 5v      $
��auto �6(   �� 5w      $
��auto �6(   �� 5x      $	��160 �6(   
 5z      �� 5{      $��20 �6+   �� 5|      �� 5}      �� 5~      �� 5      .+�5�      �� -   5         ��Name$ txt_loadstatus��5�      
�������$��0��6G   $��1��6T   $��3��6d   $��Center=�6x   $��Center=�6�   $��38(�6�   $y�Hidden=�6�   .��6�   SETTINGS LOADED6�   �� 5�      
�������$��1��6/   $��1��6<   .��6L   Selected settings6_   �� 5�      -   5        $ label_selected��5�      
�������$��1��6G   $��2��6T   .��6d   None6j   �� 5�      
�������$��3��6/   $��1��6<   $��0,22,0,0q�6L   .��6^   Mod folder path6o   �� 5�      -   5        $ txt_modfoldpath��5�   /   
�������$��3��6I   $��2��6V   $��4��6f   $��0,20,0,0q�6z   $
��Left=�6�   $��Center=�6�   $	��400��6�   6�   �� 5�      
�������$��4��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   
Username6g   �� 5�      -   5        $ txt_username��5�   /   
�������$��4��6E   $��2��6R   $��3��6b   $��0,5,0,0q�6v   $
��Left=�6�   $	��Top=�6�   $	��250��6�   6�   �� 5�      
�������$��5��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   Server name6j   �� 5�      -   5        $ txt_servername��5�   /   
�������$��5��6H   $��2��6U   $��3��6e   $��0,5,0,0q�6y   $
��Left=�6�   $	��Top=�6�   $	��250��6�   6�   �� 5�      
�������$��6��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   Server password6n   �� 5�      -   5        $ txt_serverpass��5�   /   
�������$��6��6H   $��2��6U   $��3��6e   $��0,5,0,0q�6y   $
��Left=�6�   $	��Top=�6�   $	��250��6�   6�   �� 5�      
�������$��9��6/   $��1��6<   $��	0,105,0,0q�6L   .��6_   GameSettings folder path6y   �� 5�      -   5        $ txt_savegamepath��5�   /   
�������$��9��6J   $��2��6W   $��4��6g   $��	0,105,0,0q�6{   $
��Left=�6�   $	��Top=�6�   $	��430��6�   6�   �� 5�      -   5        $ 
Btn_launch��5�      $��10��61   $��4��6?   $��Bottom=�6O   $
��Left=�6j   $��25,10q�6�   $��0,0,0,20q�6�   $��18(�6�   $
��Bold"�6�   
���2͚�.��6�   LAUNCH5�      5�      5�      �� 5�      -   5        $ panel_settings��5�      $y�Visible=�61   $��2��6F   .+�5�      � 	 5�      �� 5�      $	��120 �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $	��160 �6(   
 5�      �� 5�      $��20 �6+   �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� 
�������$��1��6/   $��1��6<   .��6L   Selected settings6_   �� 5�      -   5        $ label_selected1��5�      
�������$��1��6H   $��2��6U   .��6e   None6k   �� 5�      -   5        $ lbl_change_btn_name��5�      
�������$��1��6L   $��3��6Y   .��6i   Change button name6}   �� 5�      -   5         ��Name$ tb_btn_name��5�      $��1��63   $��4��6@   $��0,5,0,0q�6P   $
��Left=�6a   $��23��6|    �� TextWrapping$ NoWrap=�6�   $	��Top=�6�   $	��120��6�   �� 5�      
�������$��3��6/   $��1��6<   $��0,20,0,0q�6L   .��6^   Mod folder path6o   �� 5�      -   5        $ tb_modfoldpath��5�      $��3��67   $��2��6D   $��3��6T   $��0,20,0,0q�6h   $
��Left=�6z   $��23��6�   $ NoWrap=�6�   $	��Top=�6�   $	��290��6�   �� 5�      -   5        $ btn_sel_mod_fold��5�      $��3��67   $��4��6D   $��30��6T   $��30��6`   $��Bottom=�6k   $
��Left=�6�   
������ 
������ .��5�      �� $#��icons/icons8-folder-white.png��6    $��30��6G   $��Bottom=�6S   $
��Left=�6n   6�   5�      �� 5�      
�������$��4��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   
Username6g   �� 5�      -   5        $ tb_username��5�      $��4��64   $��2��6A   $��3��6Q   $��0,5,0,0q�6e   $
��Left=�6v   $��23��6�   $ NoWrap=�6�   $	��Top=�6�   $	��120��6�   �� 5�      
�������$��5��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   Server name6j   �� 5�      -   5        $ tb_servername��5�      $��5��65   $��2��6B   $��3��6R   $��0,5,0,0q�6f   $
��Left=�6w   $��23��6�   $ NoWrap=�6�   $	��Top=�6�   $	��120��6�   �� 5�      
�������$��6��6/   $��1��6<   $��0,5,0,0q�6L   .��6]   Server password6n   �� 5�      -    5        $ tb_serverpass��5�      $��6��65   $��2��6B   $��3��6R   $��0,5,0,0q�6f   $
��Left=�6w   $��23��6�   $ NoWrap=�6�   $	��Top=�6�   $	��200��6�   �� 5�      -!   5        $ btn_save��5�      $��7��6/   $��3��6<   $��20q�6L   $��35��6X    J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�         Opacity$	 0.6Q�6/   .��5�   )   SAVE5�      �� 5�      -"   5        $ txt_savestat��5�      
�������$��7��6E   $��4��6R   $��Center=�6b   .��6}   SAVED!6�   �� 5�      
�������$��9��6/   $��1��6<   $��0,30,0,0q�6L   .��6^   GameSettings folder path6x   �� 5�      -#   5        $ savegamepath_txtbox��5�      $��9��6;   $��2��6H   $��3��6X   $��0,30,0,0q�6l   $
��Left=�6~   $��23��6�   $ NoWrap=�6�   $	��Top=�6�   $	��290��6�   �� 5�      -$   5        $ btn_sel_savegame_fold��5�      $��9��6<   $��4��6I   $��30��6Y   $��30��6e   $��Bottom=�6p   $
��Left=�6�   
������ 
������ .��5�      �� $#��icons/icons8-folder-white.png��6    $��30��6G   $��Bottom=�6S   $
��Left=�6n   6�   5�      5�      5�      �� 5�      -%   5        $ panel_credits��5�      $y�Hidden=�60   $��3��6D   $��Center=�6X   $
��Left=�6s   .+�5�      �� -&   5         ��Name$ txt_credits��5�      $��0q�61   $��Center=�6<   $��Center=�6W   $y�Visible=�6t   $��36(�6�   
�������
CREDITS:�� 5�      @Jakub Vlcek - Copyright 20215�      5�      5�      � 5�   
   $��3��6   5�      5�      5�      