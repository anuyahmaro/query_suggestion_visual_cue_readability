<?php
	include('dbadapter.php');
	header('Content-type:application/json');
	if  ($sessionid=filter_input(INPUT_POST, 'sessionid'))
	{
		
		$url = filter_input(INPUT_POST, 'url');
		$searchid =  filter_input(INPUT_POST, 'searchid');
		
		
		$adapter = new dbadapter ();
		
		if ($adapter->clickedlink ($sessionid,$url,$searchid))
		{
			echo "{'status':'successful'}";
		}else
		{
			echo "{'status':'failed'}";
		}
		
	}
	
?>