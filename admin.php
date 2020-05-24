<?php

if ($_POST)
{



$conn = mysqli_connect("localhost","root","","researchdb");
$myFile = "research.xml";
$fh = fopen($myFile, 'w') or die("can't open file");
$rss_txt="";
$rss_txt .= '<?xml version="1.0" encoding="utf-8"?>';

$rss_txt .= '<research>';
    $query = "SELECT s.id, g.grade,s.guid,s.datevisited FROM `session` as s join grade as g on s.`gradeid` = g.id;";
	$result =$conn->query($query);
   while($values_query = $result->fetch_assoc())
    {
        $rss_txt .= '<grade>';

        $rss_txt .= '<name>' .$values_query['grade']. '</name>';
        $rss_txt .= '<sessionid>' .$values_query['guid']. '</sessionid>';
        $rss_txt .= '<timestamp>' .$values_query['datevisited']. '</timestamp>';

		$rss_txt .= '<queryterms>';
		$sessionid =$values_query['id'];
		$query2 = "select * from `sessionsearch` where `sessionid`='$sessionid'";
		$result2=$conn->query($query2);
		 while($values_query2 = $result2->fetch_assoc())
		 {
			 $rss_txt .= "<query>";
			 $rss_txt .= '<searchterm>' .$values_query2['userquery']. '</searchterm>';
			
			$rss_txt .= '<timestamp>' .$values_query2['timesearched']. '</timestamp>';
			$rss_txt .="<clickedlinks>";
			
			$searchid = $values_query2['id'];
			$query3 = "select * from `searchlinks` where `searchid` = '$searchid'";
			$result3 =$conn->query($query3);
			while($values_query3 = $result3->fetch_assoc())
			{
				$rss_txt .="<clickedlink>";
				$rss_txt .="<url>".$values_query3['linkclicked']."</url>";
				$rss_txt .="<timestamp>".$values_query3['timeclicked']."</timestamp>";
				$rss_txt .="</clickedlink>";	
				
				
			}
			$rss_txt .= "</clickedlinks>";
			$rss_txt .= "</query>";

		 }
		$rss_txt .= '</queryterms>';
        $rss_txt .= '</grade>';
    }
$rss_txt .= '</research>';
 
  

fwrite($fh, $rss_txt);

fclose($fh);

// header('Content-Type: application/xml');
    // tell the browser we want to save it instead of displaying it
   // header('Content-Disposition: attachment; filename="'.$myFile.'";');
    // make php send the generated csv lines to the browser

$g = true;
}
?>
<html>
<header>
<style type="text/css">
    body
    {
    //background: #F2F2F2;
    //background-image: url("img4.jpg");
    }
    .title
    {
        font-size : 18px;

    }
    .news
    {

        margin-left : 10px;
    }
</style>

</header>
<body>
<form action="" method="POST">
    <center>
        <label>Click to generate XML file from database</label>
        <input hidden="hidden" name="do" value="1"/>
        <input type="submit" value="GENERATE">
		<br/>
		<br/>
		<?PHP
		if (isset($g))
			echo "<a target='_blank' href='$myFile'>Click me to view / download generated file</a>";
			
		?>
    </center>

    <br/>
    <br/>
	

</form>
</body>
</html>