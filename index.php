<!DOCTYPE html>
<html lang="en-US">
<head>
<script src="https://static.fusioncharts.com/code/latest/fusioncharts.js"></script>
      <script src="https://static.fusioncharts.com/code/latest/fusioncharts.charts.js"></script>
      <script src="https://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js"></script>
  <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css" title="css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <title>Cerulean Connect</title>
</head>

<body>

  <header>
    <img src="Cascade_Badge.png" width="200" height ="150" alt="Badge of Cerulean City" class="animated infinite pulse faster delay-2s" />
    <h2 class="animated infinite heartBeat slow delay-2s">Cerulean Connect</h2>
    <h2 class="animated infinite heartBeat slow delay-2s">LIMITED TIME FREE POWER USER FOR ALL</h2>
	<h4> And when everyone is super, no one will be</h4>
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
  	<?php
	// including FusionCharts PHP wrapper
	include("/home/davidthackeror/Desktop/fusioncharts.php");

	// establishing DB connection
	$host= "host=localhost";
	// add values for below variables according to your system
	$port= "port=5432";
	$dbname="dbname=CeruleanConnect";
	$dbuser="user=student";
	$dbpwd="password=CompSci364";

	// connection string (pg_connect() is native PHP method for Postgres)
  $dbconn=pg_connect("$host $port $dbname $dbuser $dbpwd");

	// validating DB connection
  if(!$dbconn) {
	  	echo "An error occurred.\n";
		exit("There was an error establishing database connection");
	}

?>

<?php
	
	$result = pg_query($dbconn, "SELECT userid, SUM(distance) from workouts GROUP BY userid");
	if (!$result) {
	  echo "An error occurred.\n";
	  exit;
	}	
	


  if ($result) {

  // creating an associative array to store the chart attributes
	$arrData = array(
        "chart" => array(
          	// caption and sub-caption customization
            "caption"=> "Total Milage per User",
          	"captionFontSize"=> "24",
            "captionFontColor"=> "#4D394B",
            "captionPadding"=> "20",

            // font and text size customization
            "baseFont"=> "Merriweather, sans-serif",
            "baseFontColor"=> "#000000",
            "outCnvBaseColor"=> "#FFFFFF",
            "baseFontSize"=> "15",
            "outCnvBaseFontSize"=> "15",

            // div line customization
            "divLineColor"=> "#ABA39D",
            "divLineAlpha"=> "22",
            "numDivLines"=> "5",

            // y-axis scale customization
            "yAxisMinValue"=> "0",
            "yAxisMaxValue"=> "600",

            // tool-tip customization
            "toolTipBorderColor"=> "#ABA8B7",
            "toolTipBgColor"=> "#FFFFFF",
            "toolTipPadding"=> "13",
            "toolTipAlpha"=> "50",
            "toolTipBorderThickness"=> "2",
            "toolTipBorderAlpha"=> "30",
            "toolTipColor"=> "#4D394B",
            "plotToolText"=> "<div style='text-align: center; line-height: 1.5;'>\$label<br>\$value COUNT(activityType)<div>",


            // other customizations
            "theme"=> "fint",
            "paletteColors"=> "#7B5A85",
            "showBorder"=> "0",
      			"bgColor"=> "#FFFFFF",
            "canvasBgColor"=> "#FFFFFF",
            "bgAlpha"=> "100",
            "showValues"=> "0",
            "formatNumberScale"=> "0",
            "plotSpacePercent"=> "33",
            "showcanvasborder"=> "0",
            "showPlotBorder"=> "0"
          )
    );

	$arrData["data"] = array();

	// iterating over each data and pushing it into $arrData array
	while($row = pg_fetch_array($result)) {
		array_push($arrData["data"], array(
			"label" => $row["0"],
			"value" => $row["1"]
			)
		);
	}

  $jsonEncodedData = json_encode($arrData);


	// creating FusionCharts instance
	$postgresChart = new FusionCharts("column2d", "ActivityGraphChart" , '100%', '450', "postgres-chart", "json", $jsonEncodedData);

  // FusionCharts render method
  $postgresChart->render();

	// closing database connection
  pg_close($dbconn);

  }

?>
 	<!-- creating chart container -->
 	<center><div id="postgres-chart">A beautiful chart is on its way!</div></center>
   </body>
	
  
  <footer>
    <a href="https://usafa-compsci364.github.io/Spring2020/assignments/project/website.html">Project Webpage Assignment</a>
  </footer>

</body>
</html>

