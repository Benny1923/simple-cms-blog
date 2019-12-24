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
            <input type="submit" value="登入" id="loginbtn">
            </form>
        </div>
    </div>
</body>
</html>