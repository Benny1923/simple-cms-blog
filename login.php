<?php
require_once("config/sqlconnect.php");
$fail=false;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = sha1($_POST['password']);
    $sql="select username, nickname, isadmin from users where username='$username' and password='$password';";
    if (mysqli_num_rows($result = mysqli_query($con, $sql))) {
        $row = mysqli_fetch_assoc($result);
        session_start();
        $_SESSION['username'] = $row['username'];
        $_SESSION['nickname'] = $row['nickname'];
        $_SESSION['isadmin'] = $row['isadmin'];
        echo "<script>window.location.replace('admin/index.php');</script>";
    } else {
        $fail = true;
    }
}

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>登入</title>
</head>
<body>
    <div class="container">
        <div class="loginf">
            <h1>登入系統</h1>
            <form action="login.php" method="post">
            <label for="uname">使用者名稱:</label><br>
            <input type="text" name="username" id="uname">
            <br>
            <label for="upass">密碼:</label><br>
            <input type="password" name="password" id="upass">
            <br>
            <?php if($fail) echo "<small style=\"color:#f00;\">使用者名稱或密碼錯誤</small><br>"; ?>
            <input type="submit" value="登入" id="loginbtn">
            </form>
        </div>
    </div>
</body>
</html>