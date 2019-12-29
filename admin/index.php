<?php require_once("../includes/usercheck.php"); ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理平台</title>
    <link rel="stylesheet" href="/css/frame.css">
</head>
<body>
    <div class="nav">
        <div class="container">
            <ul>
                <li class="active"><a href="../index.php">回到首頁</a></li>
                <li style="float:right;" class="active"><a href="../logout.php">登出</a></li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="menu">
            <ul>
                <li><a href="post.php">文章管理</a></li>
                <li><a href="image.php">圖片管理</a></li>
                <li><a href="user.php">使用者設定</a></li>
            </ul>
        </div>
        <div class="content">
            <?php echo $_SESSION['nickname']; ?>你好!<br>
            歡迎使用簡易部落格管理系統<br>
            你可以使用左邊導覽目錄前往功能
        </div>
        <div style="clear:both;"></div>
    </div>
</body>
</html>