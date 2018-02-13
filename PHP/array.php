<?php
        /*$array[]=1;
        $array[]=2;
        $array[]=3;
        $array[]=4;

        echo $array[0],', ', $array[1],', ', $array[2],', ', $array[3];
		*/

		//$array=array(0=>'Windows',1=>'Linux',2=>'Mac',3=>'Solaris');
		$array=array();

		$array[0]='Windows';
		$array[1]='Linux';
		$array[2]='Mac';
		$array[4]='Solaris';

		echo 'Array:<br/>var_export - ';
		var_export($array);
		echo '<br/>print_r - ';
		print_r($array);
		echo '<br/><br/>';

		echo 'is_array - Se variavel $array é um array<br/>';
		if(is_array($array))
			echo 'Verdadeiro<br/>';
		else
			echo 'Falso<br/>';

		echo '<br/>in_array - Se "Mac" está dentro do array.<br/>';
		if(in_array('Mac',$array))
			echo 'Verdadeiro<br/>';
		else
			echo 'Falso<br/>';

		echo '<br/>array_keys - Retorna as chaves de um array.<br/>';
		echo 'var_export - ';
		var_export(array_keys($array));
		echo '<br/>print_r - ';
		print_r(array_keys($array));
		echo '<br/>';

		echo '<br/>sort - Ordena os itens do array em ordem crescente.<br/>';
		$array2=$array;
		sort($array2);
		echo 'var_export - ';
		var_export($array2);
		echo '<br/>print_r - ';
		print_r($array2);
		echo '<br/>';

		echo '<br/>asort - Ordena os itens do array em ordem crescente.<br/>';
		$array3=$array;
		asort($array3);
		echo 'var_export - ';
		var_export($array3);
		echo '<br/>print_r - ';
		print_r($array3);
		echo '<br/>';

		echo '<br/>count - Conta quantos itens tem no array.<br/>';
		echo count($array);
		echo '<br/>';

		echo '<br/>array_merge - Funde dois ou mais arrays.<br/>';
		$array4=array_merge($array2,$array3);
		echo 'var_export - ';
		var_export($array4);
		echo '<br/>print_r - ';
		print_r($array4);
		echo '<br/>';

		echo '<br/>explode - Divide uma string e salva num array.<br/>';
		$string='19/01/2014';
		$array5=explode('/',$string);
		echo 'var_export - ';
		var_export($array5);
		echo '<br/>print_r - ';
		print_r($array5);
		echo '<br/>';

		echo '<br/>implode - Junta os itens de um array numa string.<br/>';
		$string2=implode('/',$array5);
		echo $string2;
		echo '<br/>';

?>