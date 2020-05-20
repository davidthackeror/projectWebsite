<?php session_start(); ?>
<html>

<!-- Protects against injections using PHP -->

<head>
   <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css" title="css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<title>Cerulean Connect</title>
</head>



<body>
<header>
    <img src="Cascade_Badge.png" width="200" height ="150" alt="Badge of Cerulean City" class="animated infinite pulse faster delay-2s" />
    <h2 class="animated heartBeat slow delay-2s">Cerulean Connect</h2>
</header>

<ul>
    <li><a href="index.html">Home</a></li>
    <li><a class="active"  href="workoutRepository.html">Workout Repository</a></li>
    <li><a href="newWorkout.html">New Workout</a></li>
</ul>
  <div class="container">
<h2 align="center" class="animated lightSpeedIn slow">Workout Query</h2>
   <center>

     <?php // Connect to the database
     	$conn = pg_connect("host=localhost port=5432 dbname=CeruleanConnect user=student password=CompSci364") 
		or die("Could not connect");
     	$status = pg_connection_status($conn);
     	if ($status !== PGSQL_CONNECTION_OK)
     	{
     	  echo pg_last_error($dbconn);
     	  exit;
     	}
	$equalitySymbolDistance = $_REQUEST['equalitySymbolDistance'];
	$equalitySymbolTime = $_REQUEST['equalitySymbolTime'];

	if($equalitySymbolDistance === 'greaterThan'){
		$equalitySymbolDistance = '>';
	}
	else if($equalitySymbolDistance === 'lessThan'){
		$equalitySymbolDistance = '<';
	}
	else{
		$equalitySymbolDistance = '=';
	}

	if($equalitySymbolTime === 'greaterThan'){
		$equalitySymbolTime = 'duration >';
	}
	else if($equalitySymbolTime === 'lessThan'){
		$equalitySymbolTime = 'duration <';
	}
	else{
		$equalitySymbolTime = 'duration';
	}

	$id = '$_REQUEST["userNum"]';
	if(!$id){$id = "users.userid";}

	$sdate = $_REQUEST['startDate'];
	if(DateTime::createFromFormat('YYYY-mm-dd', $sdate)){$sdate = "dateperformed";}

	$edate = $_REQUEST['endDate'];
	if(DateTime::createFromFormat('YYYY-mm-dd', $e)){$edate = "dateperformed";}

	$wtype = $_REQUEST['workoutType'];
	if(!$wtype){$wtype = "activitytype";}

	$distance = $_REQUEST['distance'];
	if(!$distance){$distance = "distance";}

	$duration = $_REQUEST['duration'];
	if(!$duration){$duration = "duration";}

	$result = pg_prepare($conn, "workoutQuery", 'SELECT users.userid, lastname, firstname, activitytype, dateperformed, distance, duration, avghr, maxhr
		FROM workouts join users 
		ON workouts.userid = users.userid
		WHERE users.userid = $1 AND dateperformed >= $2 AND dateperformed <= $3 AND activitytype = $4 AND $5=$6 AND $7=$8
		ORDER BY dateperformed DESC, users.userid ASC, lastname ASC, firstname ASC;');

	$result = pg_execute($conn, "workoutQuery", array("$id", $sdate, $edate, $wtype, $equalitySymbolDistance, $distance, $equalitySymbolTime, $duration));
	$row = pg_fetch_row($result);
	$counter = 0;
	$row = NULL;
	$fname = NULL;
	$lname = NULL;
	echo "<table cellpadding=\"3\" border=\"1\">";
	echo "<tbody>";
	echo "<tr>";
		echo "<th>Activity</th>";
		echo "<th>Date Performed</th>";
		echo "<th>Distance</th>";
		echo "<th>Duration</th>";
		echo "<th>Average Heart Rate</th>";
		echo "<th>Max Heart Rate</th>";
	echo "</tr>";
	$row = NULL;
	while($row = pg_fetch_array($result)){
		echo "<tr>";
			$lname = '.$row["lastname"].';
			$fname = '.$row["firstname"].';
			echo '<td>'.$row["activitytype"].'</td>';
			echo '<td>'.$row["dateperformed"].'</td>';
			echo '<td>'.$row["distance"].'</td>';
			echo '<td>'.$row["duration"].'</td>';
			echo '<td>'.$row["avghr"].'</td>';
			echo '<td>'.$row["maxhr"].'</td>';
		echo "</tr>";
	}
	echo "</tbody>";
	echo "</table>";
	
	pg_close($conn);    // close the database connection this wont actually be here
	 


     ?>

	<a href="workoutRepository.html">Back to Form</a>
   </container>
   </center>
 </body>
</html>
