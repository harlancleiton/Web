<?php
	echo date("H:i:s - d/m/Y"),'<br>';
	$hoje=getdate();
	echo $hoje[mday],'/',$hoje[mon],'/',$hoje[year];
?>