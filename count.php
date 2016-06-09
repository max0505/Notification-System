<?php
	include_once("connect.php");

	$response = array();

	$count_sqlquery="SELECT * FROM notification_master WHERE Unread=1 ";
	$exec_countsqlquery=mysqli_query($conn, $count_sqlquery);
	$id_rows_count = mysqli_num_rows($exec_countsqlquery);
	$response["id_count"] = $id_rows_count;
	$response["html"] = "";
	$response["html"] .= "<li role='presentation' tabindex='-1' style='font-weight:bold;padding: 20px 20px;text-align:center;'> 
	        			 ".($id_rows_count!=0? ("Notifications <span class='badgex'>".$id_rows_count."</span>"):("No New Notifications"))."</li>";

	$sqlquery="SELECT * FROM notification_master WHERE Unread=1 ORDER BY id DESC LIMIT 5";
	$exec_sqlquery=mysqli_query($conn, $sqlquery);
	$id_rows_count = mysqli_num_rows($exec_sqlquery);
	$read_rows_count = 5-$id_rows_count;

    $ids=array();

	while($axxx1 = mysqli_fetch_assoc($exec_sqlquery))
	      {
	         $notification_data=$axxx1['notification'];
	         $PostedBy_data = $axxx1['PostedBy'];
	         $Image_data = $axxx1['ImageLink'];
	         $id_data = $axxx1['id']; 
	         $redirect_data= $axxx1['notificationLink'];
	         array_push($ids,$id_data); 
	          
	         $response["html"] .= "<li role='presentation' class='divider'></li>
	      						   <li role='presentation' ><a role='menuitem' tabindex='-1' href='".$redirect_data."'>
	        					   <img src='".$Image_data."' style='width:40px;height:40px;border-radius: 30px 30px 30px 30px;margin-right:15px;float:left;'><div style='padding-top:5px;'><b>".$PostedBy_data."</b> ".$notification_data."</div></a></li>";
	      }

	if($read_rows_count>0)
	{
	$read_sqlquery="SELECT * FROM notification_master WHERE Unread=0 ORDER BY id DESC LIMIT ".$read_rows_count;
	$exec_read_sqlquery=mysqli_query($conn, $read_sqlquery);
	while($axxx1 = mysqli_fetch_assoc($exec_read_sqlquery))
	      {
	         $notification_data=$axxx1['notification'];
	         $PostedBy_data = $axxx1['PostedBy'];
	         $Image_data = $axxx1['ImageLink'];
	         $redirect_data= $axxx1['notificationLink'];
	         
	         $response["html"] .= "<li role='presentation' class='divider'></li>
	     						   <li role='presentation' ><a class='read' role='menuitem' tabindex='-1' href='".$redirect_data."'>
	        					   <img src='".$Image_data."' style='width:40px;height:40px;border-radius: 30px 30px 30px 30px;margin-right:15px;float:left;'><div style='padding-top:5px;'><b>".$PostedBy_data."</b> ".$notification_data."</div></a></li>";
	      }

    }
	$response["ids"] = implode(",",$ids);
	$response = json_encode($response);
	echo $response;
?>