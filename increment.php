<?php
include_once("connect.php");

	$random=rand(1,12);
	$sql="UPDATE notification_master SET Unread=1 WHERE id=".$random;
	$exec_sql=mysqli_query($conn, $sql);
?>