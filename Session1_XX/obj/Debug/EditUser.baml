   M S B A M L   `   `   `  ????F  BSession1_XX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Session1_XXSession1_XX  5   	       Session1_XX.EditUser   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Session1_XX     5   	     ? WindowState$  	Maximized=?5   (    ? Title$ 	Edit Role??5   	   $	??450??6   $	??800??6(   .??5	      ?  ? ColumnDefinitions 5
   
   ?? 5      $	??25* ?6   ?? 5      $
??372* ?6   .+?5   
   ??  ?? Orientation$ Vertical=?6   $??Center=?6-   $??Center=?6J   $??1??6e   $??157,69,206.6,69q?6u   .+?5      ?? $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Email Address  ??6   $??18(?63   ?? 5      -   5        $??TxtEmail??5      $	??250??6*   $??18(?66   
???   ?{?.  6X   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??First Name       ??6   $??18(?65   ?? 5      -   5        $??TxtFirst??5      $	??250??6*   $??18(?66   
???   ?{?.  6X   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Last Name       ??6   $??18(?64   ?? 5      -   5        $??TxtLast??5      $	??250??6)   $??18(?65   
???   ?{?.  6W   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Office               ??6   $??18(?69   ?? 5      -   5        $??	CbOffices??5      $	??250??6,   $??18(?68   
???   ? ?? SelectedIndex$ 0??6Z   {?.  6l   5      ?? 5       $ 
Horizontal=?6   $??5q?62   .+?5!      ?? $??Role                  ??6   $??18(?6:   ?? 5"      $ Vertical=?6   $??5q?64   .+?5#      	? -   5         	?Name$ 	CheckUser??5#   3    	? 	GroupName$
 Role??6"   $
??User??6F    d? 	IsChecked$
 TrueY?6U   $??5q?6f   	? 5$      -   5        $ 
CheckAdmin??5$   4   $
 Role??6#   $??Administrator??6H   $??5q?6`   5%      5&      ?? 5'      $ 
Horizontal=?6   $??10q?62   $??Center=?6>   .+?5(      ?? -   5         ??Name$ BtnApply??5(      $??Apply??6+   $??16(?6;   $	??150??6I   $??8q?6U   6`   ?? 5)      -   5        $ 	BtnCancel??5)      $??Cancel??6,   $??16(?6=   $	??150??6K   $??8q?6W   6b   5*      5+      5,      5-      