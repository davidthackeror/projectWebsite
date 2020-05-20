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

	$id = $_REQUEST["userNum"];
	$idStr = "users.userid =";
	$idSpec = FALSE;
	if(!$id){ $idStr = "$1 = $1";}
	else{$idStr = "users.userid = $1"; $idSpec = TRUE;}

	$distance = $_REQUEST["distance"];
	$distStr = "";
	if(!$distance){ $distStr = "$2 = $2";}
	else{
		$distSym = $_REQUEST["equalitySymbolDistance"];
		if($distSym === "lessThan"){$distStr = "distance <= $2";}
		else{
			if($distSym === "greaterThan"){$distStr = "distance >= $2";}else{$distStr = "distance = $2";}
		}

	}

	$duration = $_REQUEST["duration"];
	$duraStr = "";
	if(!$duration){ $duraStr = "$3 = $3";}
	else{
		$duraSym = $_REQUEST["equalitySymbolTime"];
		if($duraSym === "lessThan"){$duraStr = "duration <= $3";}
		else{
			if($duraSym === "greaterThan"){$duraStr = "duration >= $3";}else{$duraStr = "duration = $3";}
		}

	}

	$wtype = $_REQUEST['workoutType'];
	$wStr = "";
	if(!$wtype){ $wStr = "$4 = $4";}
	else{$wStr = "activitytype = $4";}


	$sdate = $_REQUEST['startDate'];
	$sdateStr = "";
	if(!$sdate){$sdateStr = "$5 = $5";}else{$sdateStr = "dateperformed >= $5";}
	
	$edate = $_REQUEST['endDate'];
	$edateStr = "";
	if(!$edate){$edateStr = "$6 = $6";}else{$edateStr = "dateperformed <= $6";}

	$result = pg_prepare($conn, "workoutQuery", 'SELECT users.userid, lastname, firstname, activitytype, dateperformed, distance, duration, avghr, maxhr
		FROM workouts join users 
		ON workouts.userid = users.userid
		WHERE ' .$idStr.' AND '.$distStr.' AND '.$duraStr.' AND '.$wStr.' AND '.$sdateStr.' AND '.$edateStr.' 
		ORDER BY dateperformed DESC, users.userid ASC, lastname ASC, firstname ASC;');

	$result = pg_execute($conn, "workoutQuery", array($_REQUEST['userNum'], $_REQUEST['distance'], $_REQUEST['duration'], $_REQUEST['workoutType'], $_REQUEST['startDate'], $_REQUEST['endDate']));
	echo "Showing results for userid:\"".$_REQUEST['userNum']."\", distance:\"".$_REQUEST['distance']."\", duration:\"".$_REQUEST['duration']."\", activity:\"".$_REQUEST['workoutType']."\", startdate:\"".$_REQUEST['startDate']."\", enddate:\"".$_REQUEST['endDate']."\"";
	$row = pg_fetch_row($result);
	$counter = 0;
	$row = NULL;
	$fname = NULL;
	$lname = NULL;
	echo "<table cellpadding=\"3\" border=\"1\">";
	echo "<tbody>";
	echo "<tr>";
		if(!$idSpec){
			echo '<th>User Num</th>';
			echo '<th>Last Name</th>';
			echo '<th>First name</th>';
		}
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
			if(!$idSpec){
				echo '<td>'.$row["userid"].'</td>';
				echo '<td>'.$row["lastname"].'</td>';
				echo '<td>'.$row["firstname"].'</td>';
			}
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
