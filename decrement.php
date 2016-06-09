<?php
include_once("connect.php");
	
	$count_sqlquery="UPDATE notification_master SET Unread=0 WHERE Unread=1 AND ID in (".$_GET[id].") ORDER BY id DESC LIMIT 5";
	$exec_countsqlquery=mysqli_query($conn, $count_sqlquery);
?>