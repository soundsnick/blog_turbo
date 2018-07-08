<?php   
    if(isset($_REQUEST)){
        require 'connect.php';
        $postId = $_POST['postId'];
        $query = $mysqli->query("SELECT * FROM blog WHERE id = '$postId'");
        $post = $query->fetch_assoc();
        echo json_encode($post, JSON_UNESCAPED_UNICODE);
    }
?>