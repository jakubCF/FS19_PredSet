   M S B A M L   `   `   `  ���� G  CFS19_PredSet, Version=1.0.0.3, Culture=neutral, PublicKeyToken=null+clr-namespace:FS19_PredSetFS19_PredSet      FS19_PredSet.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:FS19_PredSet       � Title$  FS19 PRED SET��$	��620��$	��800�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � Icon$ icons/fs19predsetlogo.png�� � 	Resources    TextEffectCollection1��%   &	        y� .��� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF162236�� � Offset$ 0Q�� $ 	#FF364866��$ 1Q�	 � RowDefinitions	 �� $��30 ��� $��* �
 � ColumnDefinitions
 �� $��60 ��� $
��auto ��� $��* ��� $��10 �.+�� -   ���	#FF22222D$��0��$��0��$��4��.+��� $��icons/fs19predsetlogo.png��$
��Left=�$��Center=�$��5q��� 
�������$
��30,5q�$��FS19 PredSet��$
��Left=�$��Center=��� -    ��Name$ Btn_minimize��$��Center=�$��Right=�$��20��$��20��$��	10,0,35,0q����	#FF303044���	#00000000
�������  ButtonMenuTemplate#���   � Cursor$
 Hand��.���� $��Center=�$��Center=�$��20(�$��Lucida Sans)�_�� -   $ 	btn_close��$��Center=�$��Right=�$��20��$��20��$
��10,0q����	#FF303044���	#00000000
�������#���  $
 Hand��.���� $��Center=�$��Center=�$��20(�$��Lucida Sans)�X� ���	#FF22222D$��0��$��1��	 �� $��* ��� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� -   $ interface_button��$��1�����	#FF22222D#���  $��	0,10,0,10q���Z� .���� $%��icons/icons8-bookmark-white.png��$��Center=�$��Center=�$��0q��� -   $ settings_button��$��2�����	#FF22222D#���  $��	0,10,0,10q�$
 Hand����Z� .���� $$��icons/icons-settings-white.png��$��Center=�$��Center=�$��0q��� -   $ credits_button��$��3�����	#FF22222D#���  $��	0,10,0,10q���Z� .���� $'��!icons/icons8-mastercard-white.png��$��Center=�$��Center=�$��0q�� $��1��$��1��$��12,0,0,0q�.+��� -    ��Name$ buttons_preddef��$y�Visible=�.+�� 	 �� $��5 ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $��20 �.+��� -   $ btn_1set��$��2��$	��0,5q�$��75��$	��105��  ButtonSettingTemplate#���  $
 Hand�����	#FF637595.��Some long text in first�� -	   $ btn_2set��$��3��$	��0,5q�$��75��$	��105��#���  $
 Hand�����	#FF637595.��Some long text in second�� -
   $ btn_3set��$��4��$	��0,5q�$��75��$	��105��#���  $
 Hand�����	#FF637595.��Third that is very long�� -   $ btn_4set��$��5��$	��0,5q�$��75��$	��105��#���  $
 Hand�����	#FF637595.��Third that is very long�� -   $ btn_5set��$��6��$	��0,5q�$��70��$	��100��#���  $
 Hand�����	#FF637595.��Fifth�� -   $ btn_6set��$��7��$	��0,5q�$��70��$	��100��#���  $
 Hand�����	#FF637595.��!Sixth looong text with gradient�� -   $ btn_7set��$��8��$	��0,5q�$��70��$	��100��#���  $
 Hand�����	#FF637595.��	Seventh� $��2��$��1��
 �� $
��auto ��� $��* �.+��� -   $ 
panel_view��$y�Visible=�$��2��.+�� 	 �� $	��120 ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $	��160 �
 �� $��20 ��� �� �� �� .+��� -    ��Name$ txt_loadstatus��
�������$��0��$��1��$��3��$��Center=�$��Center=�$��38(�$y�Hidden=�.��SETTINGS LOADED�� 
�������$��1��$��1��.��Selected settings�� -   $ label_selected��
�������$��1��$��2��.��None�� 
�������$��3��$��1��$��0,22,0,0q�.��Mod folder path�� -   $ txt_modfoldpath��
�������$��3��$��2��$��4��$��0,20,0,0q�$
��Left=�$��Center=�$	��400���� 
�������$��4��$��1��$��0,5,0,0q�.��
Username�� -   $ txt_username��
�������$��4��$��2��$��3��$��0,5,0,0q�$
��Left=�$	��Top=�$	��250���� 
�������$��5��$��1��$��0,5,0,0q�.��Server name�� -   $ txt_servername��
�������$��5��$��2��$��3��$��0,5,0,0q�$
��Left=�$	��Top=�$	��250���� 
�������$��6��$��1��$��0,5,0,0q�.��Server password�� -   $ txt_serverpass��
�������$��6��$��2��$��3��$��0,5,0,0q�$
��Left=�$	��Top=�$	��250���� 
�������$��9��$��1��$��	0,105,0,0q�.��GameSettings folder path�� -   $ txt_savegamepath��
�������$��9��$��2��$��4��$��	0,105,0,0q�$
��Left=�$	��Top=�$	��430���� -   $ 
Btn_launch��$��10��$��4��$��Bottom=�$
��Left=�$��25,10q�$��0,0,0,20q�$��18(�$
��Bold"�
���2͚�.��LAUNCH�� -   $ panel_settings��$y�Visible=�$��2��.+�� 	 �� $	��120 ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $	��160 �
 �� $��20 ��� �� �� �� .+��� 
�������$��1��$��1��.��Selected settings�� -   $ label_selected1��
�������$��1��$��2��.��None�� -   $ lbl_change_btn_name��
�������$��1��$��3��.��Change button name�� -    ��Name$ tb_btn_name��$��1��$��4��$��0,5,0,0q�$
��Left=�$��23�� �� TextWrapping$ NoWrap=�$	��Top=�$	��120���� 
�������$��3��$��1��$��0,20,0,0q�.��Mod folder path�� -   $ tb_modfoldpath��$��3��$��2��$��3��$��0,20,0,0q�$
��Left=�$��23��$ NoWrap=�$	��Top=�$	��290���� -   $ btn_sel_mod_fold��$��3��$��4��$��30��$��30��$��Bottom=�$
��Left=�
������ 
������ .���� $#��icons/icons8-folder-white.png��$��30��$��Bottom=�$
��Left=��� 
�������$��4��$��1��$��0,5,0,0q�.��
Username�� -   $ tb_username��$��4��$��2��$��3��$��0,5,0,0q�$
��Left=�$��23��$ NoWrap=�$	��Top=�$	��120���� 
�������$��5��$��1��$��0,5,0,0q�.��Server name�� -   $ tb_servername��$��5��$��2��$��3��$��0,5,0,0q�$
��Left=�$��23��$ NoWrap=�$	��Top=�$	��120���� 
�������$��6��$��1��$��0,5,0,0q�.��Server password�� -    $ tb_serverpass��$��6��$��2��$��3��$��0,5,0,0q�$
��Left=�$��23��$ NoWrap=�$	��Top=�$	��200���� -!   $ btn_save��$��7��$��3��$��20q�$��35�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.6Q�.��SAVE�� -"   $ txt_savestat��
�������$��7��$��4��$��Center=�.��SAVED!�� 
�������$��9��$��1��$��0,30,0,0q�.��GameSettings folder path�� -#   $ savegamepath_txtbox��$��9��$��2��$��3��$��0,30,0,0q�$
��Left=�$��23��$ NoWrap=�$	��Top=�$	��290���� -$   $ btn_sel_savegame_fold��$��9��$��4��$��30��$��30��$��Bottom=�$
��Left=�
������ 
������ .���� $#��icons/icons8-folder-white.png��$��30��$��Bottom=�$
��Left=��� -%   $ panel_credits��$y�Hidden=�$��3��$��Center=�$
��Left=�.+��� -&    ��Name$ txt_credits��$��0q�$��Center=�$��Center=�$y�Visible=�$��36(�
�������
CREDITS:�� @Jakub Vlcek - Copyright 2021� $��3��