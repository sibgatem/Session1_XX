   M S B A M L   `   `   `  ????F  BSession1_XX, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Session1_XXSession1_XX  5   	       Session1_XX.AdminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Session1_XX     5   	     ? WindowState$  	Maximized=?5   +    ? Title$' !AMONIC Airlines Automation System??5   	   $	??450??63   $	??800??6@   .??5	      ?  ? RowDefinitions 5
   
   ?? 5      $??0.08* ?6   ?? 5      $
??0.1* ?6   ?? 5      ?? 5      $??0.15* ?6   .+?5   
   o? 
???????$??0??6#   $??30??60   .@?5      m? -   5        $??Add User??5      6)   m? 5      -   5        $
??Exit??5      6%   5      ?? 5   
    ?? Orientation$ 
Horizontal=?6   $??1??6.   $??3q?6;   .+?5      ?? $??Office: ??6   $??18(?6(   $??30??66   ?? 5      -   5        $??	CbOffices??5      $	??300??6(   $??30??64   6@   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $??DgUsers??5      $??5q?6"   $??2??6-      
IsReadOnly .    SelectionMode$ Single=?6L      CanUserAddRows .     CanUserDeleteRows .  ?? SelectedValuePath$ ID??6?   6?   ?? 5   
   $ 
Horizontal=?6   $??3q?6.   $
??Left=?69   $??3??6T   $??50??6a   .+?5      ?? -   5        	 ??Name$	 BtnChangeRole??5      $??Change Role??6,   $??16(?6B   $	??170??6P   $??8q?6\   6g   ?? 5      -   5        $	 	BtnEnable??5      $??Enable\Disable Login??6(   $??16(?6G   $	??170??6U   $??8q?6a   6l   5      5      5      