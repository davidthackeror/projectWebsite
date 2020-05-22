<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css" title="css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <title>Cerulean Connect</title>
</head>

<body>

  <header>
    <img src="Cascade_Badge.png" width="200" height ="150" alt="Badge of Cerulean City" class="animated infinite pulse faster delay-2s" />
    <h2 class="animated infinite heartBeat slow delay-2s">Cerulean Connect</h2>
  </header>

  <ul>
    <li><a class="active" href="index.php">Home</a></li>
    <li><a href="workoutRepository.html">Workout Repository</a></li>
    <li><a href="newWorkout.html">New Workout</a></li>
  </ul>
	<h2 align="center">Workout Statistics</h2>
	
	<?php // Connect to the database
     	$conn = pg_connect("host=localhost port=5432 dbname=CeruleanConnect user=student password=CompSci364") 
		or die("Could not connect");
     	$status = pg_connection_status($conn);
     	if ($status !== PGSQL_CONNECTION_OK)
     	{
     	  echo pg_last_error($dbconn);
     	  exit;
     	}
	$avgDist = "?";
	$avgHR = "?";
	$daysActive = "?";
	
	$result =  pg_query($conn, "SELECT AVG(distance) FROM workouts");
	if (!$result) {
	  echo "An error occurred.\n";
	  exit;
	}
	
	$avgDist = number_format(pg_fetch_result($result, 0, 0), 2, '.', '');

	$result = pg_query($conn, "SELECT AVG(avghr) FROM workouts");
	if (!$result) {
	  echo "An error occurred.\n";
	  exit;
	}	

	$avgHR = number_format(pg_fetch_result($result, 0, 0), 2, '.', '');

	//start at today
	$temp = date("Y-m-d");
	$curDate = strval($temp);
	$exists = 1;
	$daysActive = 0;
	$result = pg_prepare($conn, "dateC", 'SELECT DISTINCT CAST(dateperformed AS date) FROM workouts WHERE CAST(dateperformed AS date) = $1 ORDER BY dateperformed');
	while($exists > 0){	
		$exists = 0;
		$result = pg_execute($conn, "dateC", array($curDate));
		//echo pg_query($conn, "SELECT COUNT(dateperformed) FROM workouts WHERE dateperformed = .$curDate.");
		if (!$result) {
		  echo "An error occurred.\n";
		  exit;
		}
		$row = NULL;
			while($row = pg_fetch_array($result)){
				$daysActive = $daysActive + 1; 
				$temp = date_sub(DateTime::createFromFormat('Y-m-d', $curDate), date_interval_create_from_date_string('1 day'));
				$curDate = date_format($temp, "Y-m-d");
				$exists = 1;
				
			}
	}
	
	

	pg_close($conn);

  	echo '<table style="width:100%">
		<tr>
		      <th style ="text-align: left">Statistics</th>
		      <th style ="text-align: left">Results</th>
		</tr>
    		<tr>
		      <td style ="text-align: left">Average Distance YTD</td>
		      <td style ="text-align: left">'.$avgDist.' Miles</td>
	        </tr>
	        <tr>
		      <td style ="text-align: left">Average HR YTD</td>
		      <td style ="text-align: left">'.$avgHR.' bpm</td>
		</tr>
		<tr>
		      <td style ="text-align: left">Days Active in a Row</a></td>
		      <td style ="text-align: left">'.$daysActive.' days</td>
		</tr>
  		</table>';
	
?> 
  <hr/>
  	<h2 align="center">Activities Over Time</h2>
	<img src="activitySnipping.PNG" width="400" height ="400" class="center" alt="activity graph over the time frame that will be replaced by a generated one" />
	
  
  <footer>
    <a href="https://usafa-compsci364.github.io/Spring2020/assignments/project/website.html">Project Webpage Assignment</a>
  </footer>

</body>
</html>

