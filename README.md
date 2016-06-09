# Notification-System
Notification System , providing notifications upfront when they are generated. Upfront Generation and Reading of Notifications

STEPS TO SET-UP “Notification Sample”

1.	Install XAMPP server.
2.	Start Apache and SQL from XAMPP control Panel
3.	Import the given database “notification.sql” through PHPMyAdmin
4.	Extract the folder/codes under “notification-Wingify” (*Folder Name) in htdocs in Xampp 
5.	Set the DB Host,User,Password and Database Name in connect.php 
6.	To see the demo ( Integration with a sample Page ) hit the URL 
http://localhost/notification-Wingify   i.e. ( http://localhost/FolderName )
      For Individual Notification Bell Demo , hit the URL 
           http://localhost/notification-Wingify/demo.html
    
 
Features:

1.	Automatic Pulling of the New Notifications within 30 seconds and opening of the Notification dropdown.
2.	Automatic Generation of the New Notification by randomly marking one of them Unread after 1 minute ( Ids are not changing ).
3.	On closing of Dropdown, notifications present in that will be marked read.
4.	On page refresh, all the available notifications at the backend should be repopulated with correct state (read or unread).
5.	There is field in Database for Unread and Read .
6.	Just because of Dummy Notification redirecting all of them “Services” Part of the integrated page . In Individual demo , links will not be redirecting
