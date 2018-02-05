<?php
	require 'includes/config.php';
	$kod=$_POST['kod'];
	$users=$db->query(SELECT * FROM users WHERE aktywacja='$kod');
	$uzytkownik=$users->fetch_assoc();
	$id=$uzytkownik['id'];
	$result=$db->query(INSERT INTO users (sprawdzenie) VALUES('1') WHERE id='$id');
	header('Location: index.php');
?>