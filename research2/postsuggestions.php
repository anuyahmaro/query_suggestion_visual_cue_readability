<?php
	include('dbadapter.php');
	header('Content-type:application/json');
	
	if  ($sessionid=filter_input(INPUT_POST, 'sessionid'))
	{
		
		$suggestions=$_POST[ 'suggestions'];
		
		$searchid =  filter_input(INPUT_POST, 'searchid');
		$query = filter_input(INPUT_POST, 'query');
		$trigger =  filter_input(INPUT_POST, 'trigger');
		
		$adapter = new dbadapter ();
		
		$id =  $adapter->storesuggestions($sessionid,$query,$suggestions,$trigger);
		if (isset($id)){
			$response = array(
			'status' => 'success',
			'id' => $id
			);
		}else
		{
			$response = array(
			'status' => 'failed'
			);
		}
		$encoded= json_encode($response);

		header('Content-type:application/json');

		exit($encoded);
	}
	
	
	
?>