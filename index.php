<?php
include ('dbadapter.php');
session_start();
if (isset ($_COOKIE["id"]))
{
	unset ($_COOKIE["id"]);
}
$adapter = new dbadapter();
if ($_POST)
{

	$sessionid=0;
	$gradeid = $_POST["grades"];

	$sessionid =$adapter->createsession ($gradeid);

    setcookie ("id",$sessionid);
    echo "redirecting.....";
    header("Location:search.php?grades=".$gradeid);
    exit();

}
?>


<!DOCTYPE html>
<html>

<style>
    form {
        border: 3px solid #f1f1f1;
    }


    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    .imgcontainer {
        text-align: center;
        margin: 7px 0 3px 0;
    }

    img.avatar {
        width: 20%;
        border-radius: 50%;
        border: 3px solid #7a7a52;
    }

    .container {
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
</style>

<body>

<form style="margin-top:50px; margin-left:20px; margin-right:20px"  method="post" action="">
    <div class="imgcontainer">
        <img src="img4.jpg" alt="Avatar" class="avatar">
    </div>
	<center>
    <select name="grades" id="Grade_LEVEL">
        <option value="null">Grade Level</option>
		 <?PHP
			$gradearray = $adapter->getgrades();

			foreach ($gradearray as $g)
			{

				echo "<option value='".$g['id']."'"
				.">".$g['grade']."</option>";
			}
		?>

    </select>
    <input type="submit" name="button" style="margin-top:-10px; margin-right:0px; margin-bottom: 10px" /></center>



</form>

<center><p><b>Note:</b> Please select your grade level from the list above.</p></center>
</body>
</html>
