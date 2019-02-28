<?php
$eventCategory = $_POST['eventCategory'];
$eventName = $_POST['eventName'];
$eventInformation = $_POST['eventInformation'];
$organizerName= $_POST['organizerName'];
$venue = $_POST['venue'];
$objectives = $_POST['objectives'];
$competitionStructure = $_POST['competitionStructure'];
if (!empty($eventCategory) || !empty($eventName) || !empty($eventInformation) || !empty($organizerName)
|| !empty($venue) || !empty($objectives) || !empty($competitionStructure)) {
    $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname = "thesis";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT eventName From event Where eventName = ? Limit 1";
     $INSERT = "INSERT Into event (eventCategory, eventName, eventInformation, organizerName, venue, objectives, competitionStructure) values(?, ?, ?, ?, ?, ?, ?)";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $eventName);
     $stmt->execute();
     $stmt->bind_result($eventName);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("sssssss", $eventCategory, $eventName, $eventInformation, $organizerName, $venue, $objectives, $competitionStructure);
      $stmt->execute();
      echo "New event inserted sucessfully";
     } else {
      echo "Someone already created an event using this event name";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>
