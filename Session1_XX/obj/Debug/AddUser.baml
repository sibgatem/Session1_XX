   M S B A M L   `   `   `  ????F  BSession1_XX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Session1_XXSession1_XX  5   	       Session1_XX.AddUser   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Session1_XX     5   	     ? WindowState$  	Maximized=?5   '    ? Title$ Add User??5   	   $	??450??6   $	??800??6'   .??5	      ? .+?5
   
   ??  ?? Orientation$ Vertical=?6   $??Center=?6-   $??Center=?6J   .+?5      ?? $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Email Address  ??6   $??18(?63   ?? 5      -   5        $??TxtEmail??5      $	??250??6*   $??18(?66   
???   ?6D   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??First Name       ??6   $??18(?65   ?? 5      -   5        $??TxtFirst??5      $	??250??6*   $??18(?66   
???   ?6D   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Last Name       ??6   $??18(?64   ?? 5      -   5        $??TxtLast??5      $	??250??6)   $??18(?65   
???   ?6C   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Office               ??6   $??18(?69   ?? 5      -   5        $??	CbOffices??5      $	??250??6,   $??18(?68   
???   ? ?? SelectedIndex$ 0??6Z   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5      ?? $??Birthday           ??6   $??18(?67   (  "System.Windows.Controls.DatePicker  5      -   5        $??
DpBirthDay??5      $	??250??6/   $??18(?6;   
???   ?6I   5      ?? 5      $ 
Horizontal=?6   $??5q?62   .+?5       ?? $??Password         ??6   $??18(?65   ?? 5!      -   5        $??TxtPassword??5!      $	??250??6-   $??18(?69   
???   ?6G   5"      ?? 5#      $ 
Horizontal=?6   $??10q?62   $??Center=?6>   .+?5$      ?? -   5         ??Name$ BtnSave??5$      $
??Save??6*   $??16(?69   $	??150??6G   $??8q?6S   6^   ?? 5%      -   5        $ 	BtnCancel??5%      $??Cancel??6,   $??16(?6=   $	??150??6K   $??8q?6W   6b   5&      5'      5(      5)      