<?php 
require_once("../includes/usercheck.php");
require_once("sqlconnect.php");

//拒絕非POST請求
if ($_SERVER['REQUEST_METHOD'] != 'POST') die("Method not accept.");

if (isset($_POST['set'])) {
    $arg = '';
    switch ($_POST['set']) {
        case 'nickname':
            $sql = "UPDATE users SET nickname = '".$_POST['nickname']."' WHERE username = '".$_SESSION['username']."';";
            mysqli_query($con, $sql);
            $sql = "select nickname from users where username = '".$_SESSION['username']."';";
            if (mysqli_num_rows($result = mysqli_query($con, $sql))) {
                $_SESSION['nickname'] = mysqli_fetch_assoc($result)['nickname'];
            }
            break;
        case 'password':
            $oldpass = sha1($_POST['oldpass']);
            $newpass = sha1($_POST['newpass']);
            $sql = "SELECT username FROM users WHERE username = '".$_SESSION['username']."' AND password = '".$oldpass."';";
            if (mysqli_num_rows($result = mysqli_query($con, $sql))) {
                $sql = "UPDATE users SET password = '".$newpass."' WHERE username = '".$_SESSION['username']."';";
                mysqli_query($con, $sql);
                $arg = "?error=0";
            } else {
                $arg = "?error=1";
            }
            break;
        default:
            die("wrong argument");
            break;
    }

    echo "<script>window.location.replace('../admin/user.php".$arg."');</script>";
} else die("not target set.");

?>