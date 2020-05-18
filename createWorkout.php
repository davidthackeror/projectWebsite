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
    <li><a href="workoutRepository.html">Workout Repository</a></li>
    <li><a class="active"  href="newWorkout.html">New Workout</a></li>
  </ul>
  <div class="container">
<h2 align="center" class="animated lightSpeedIn slow">Adding A Workout!</h2>
   <center>

     <?php // Connect to the database
     $db = new mysqli('localhost', 'student', 'CompSci364', 'Security');
     if (mysqli_connect_errno())
     {
       echo 'ERROR: Could not connect to database, error is '.mysqli_connect_error();
       exit;
     }
	$db->close();    // close the database connection this wont actually be here
	 // Get the original data passed to us
	$userNum = $_REQUEST['userNum'];
	 $workoutType = $_REQUEST['workoutType'];
	 $distance = $_REQUEST['distance'];
	 $duration = $_REQUEST['duration'];
	 $maxHR = $_REQUEST['maxHR'];
	 $minHR = $_REQUEST['minHR'];
	 $avgHR = $_REQUEST['avgHR'];


     ?>
     <table border="1" cellpadding="3">
       <tr><th>Result</th><th>Value</th></tr>
	   <?php 	 if (isset($_REQUEST['userNum'])) { ?>
               <tr><td>userNum</td><td><?php echo $userNum; ?></td></tr>
	   <?php } ?>
 	   <?php 	 if (isset($_REQUEST['workoutType'])) { ?>
               <tr><td>Workout Type</td><td><?php echo $workoutType; ?></td></tr>
	   <?php } ?>
	   <?php 	 if (isset($_REQUEST['distance'])) { ?>
               <tr><td>Distance</td><td><?php echo $distance; ?></td></tr>
	   <?php } ?>
           <?php 	 if (isset($_REQUEST['duration'])) { ?>
               <tr><td>Duration</td><td><?php echo $duration; ?></td></tr>
	   <?php } ?>
	   <?php 	 if (isset($_REQUEST['maxHR'])) { ?>
               <tr><td>Max HR</td><td><?php echo $maxHR; ?></td></tr>
	   <?php } ?>
	   <?php 	 if (isset($_REQUEST['minHR'])) { ?>
               <tr><td>Min HR</td><td><?php echo $minHR; ?></td></tr>
	   <?php } ?>
	   <?php 	 if (isset($_REQUEST['avgHR'])) { ?>
               <tr><td>Avg HR</td><td><?php echo $avgHR; ?></td></tr>
	   <?php } ?>
     </table>

	<?php //figure out what the required fields are... have a javascript check to validate
?>

	<a href="newWorkout.html">Back to Form</a>
   </container>
   </center>
 </body>
</html>
