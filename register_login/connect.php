<?php
$db = mysqli_connect('localhost', 'root', '', 'ersbs');
if(!$db)
	{
		echo "Failed to connect database";
	}
$dbselect = mysqli_select_db($db, 'ersbs');
		if(!$db t)
	{
		echo "Failed to Select database" .die(mysqli_error($db));
	}	
?>