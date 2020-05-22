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
    <li><a href="index.php">Home</a></li>
    <li><a href="workoutRepository.html">Workout Repository</a></li>
    <li><a class="active"  href="newWorkout.html">New Workout</a></li>
  </ul>
  <div class="container">
<h2 align="center" class="animated lightSpeedIn slow">Adding A Workout!</h2>
   <center>

     <?php // Connect to the database
     	$id = $_REQUEST["userNum"];
	$idSpec = FALSE;
	if($id){$idSpec = TRUE;}

	$distance = $_REQUEST["distance"];
	$distSpec = FALSE;
	if($distance){ $distSpec = TRUE;}

	$duration = $_REQUEST["duration"];
	$duraSpec = FALSE;
	if($duration){ $duraSpec = TRUE;}

	$wtype = $_REQUEST['workoutType'];
	$wSpec = FALSE;
	if($wtype){ $wSpec = TRUE;}
	
	$maxHR = $_REQUEST['maxHR'];
	if(!$maxHR){ $maxHR = NULL;}
	
	$avgHR = $_REQUEST['avgHR'];
	if(!$avgHR){ $avgHR = NULL;}

	$date = date('Y-m-d H:i:s');

	if($idSpec && $distSpec && $duraSpec && $wSpec){
		$conn = pg_connect("host=localhost port=5432 dbname=CeruleanConnect user=student password=CompSci364") 
			or die("Could not connect");
	     	$status = pg_connection_status($conn);
	     	if ($status !== PGSQL_CONNECTION_OK)
	     	{
	     	  echo pg_last_error($dbconn);
	     	  exit;
	     	}


		//get next workoutid
		$workoutid = -1;
		$t = pg_query($conn, "SELECT MAX(workoutid) FROM workouts;");
		$workoutid = pg_fetch_result($t, 0, 0);
		if($workoutid === -1){
			echo "Could not connect to database";	
		}
		$workoutid += 1;

		$result = pg_prepare($conn, "addWorkoutQuery", 'INSERT INTO workouts (workoutid, userid, activitytype, dateperformed, 
			distance, duration, avghr, maxhr) VALUES($1, $2, $3, $4, $5, $6, $7, $8);');	
		$result = pg_execute($conn, "addWorkoutQuery", array($workoutid, $id, $wtype, $date, $distance, $duration, $avgHR, $maxHR));
		echo "Added new entry! Thanks for working out with Cerulean Connect";
		pg_close($conn);    // close the database
	}else{
		echo "Missing required fields!";
	}

	
     ?>
	<h2>Latest Entry:</h2>
     <table border="1" cellpadding="3">
       <tr><th>Result</th><th>Value</th></tr>
               <tr><td>userNum</td><td><?php echo $id; ?></td></tr>
               <tr><td>Workout Type</td><td><?php echo $wtype; ?></td></tr>
               <tr><td>Distance</td><td><?php echo $distance; ?></td></tr>
               <tr><td>Duration</td><td><?php echo $duration; ?></td></tr>
               <tr><td>Max HR</td><td><?php echo $maxHR; ?></td></tr>
               <tr><td>Avg HR</td><td><?php echo $avgHR; ?></td></tr>
     </table>

	<a href="newWorkout.html">Back to Form</a>
   </container>
   </center>
 </body>
</html>
