<?php
	require 'includes/config.php';
	if ($user->check()) 
	{
		header('Location: index2.php');
	}else
	{
		header('Location: index3.php');
	}
?>
