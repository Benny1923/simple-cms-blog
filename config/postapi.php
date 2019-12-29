<?php
require_once("../includes/usercheck.php");
require_once("sqlconnect.php");
date_default_timezone_set("Asia/Taipei");

//拒絕非POST請求
if ($_SERVER['REQUEST_METHOD'] != 'POST') die("Method not accept.");

if (isset($_POST['mode'])) {
    $arg='';
    $target='editor.php';
    switch ($_POST['mode']) {
        case 'newpost':
            $sql = "INSERT INTO posts (title, descr, content, user, pdate) VALUES ('".$_POST['title']."','".$_POST['descr']."','".$_POST['content']."','".$_SESSION['username']."','".date("Y-m-d")."');";
            if (mysqli_query($con, $sql)) {
                $arg = '?mode=editpost&id='.mysqli_insert_id($con).'&success=1';
            }
            break;
        case 'editpost':
            $sql = "UPDATE posts set title='".$_POST['title']."', descr='".$_POST['descr']."', content='".$_POST['content']."', pdate='".date("Y-m-d")."' where post_id = '".$_POST['id']."' AND user = '".$_SESSION['username']."';";
            if (mysqli_query($con, $sql)) {
                $arg = '?mode=editpost&id='.$_POST['id'].'&success=1';
            }
            break;
        case 'delpost':
            $sql = "DELETE FROM posts where post_id='".$_POST['id']."' AND user='".$_SESSION['username']."';";
            if (mysqli_query($con, $sql)) {
                $target = 'post.php';
            }
            break;
        default:
            die("wrong argument");
            break;
    }
    echo "<script>window.location.replace('../admin/".$target.$arg."');</script>";
} else die("no target set.");

?>