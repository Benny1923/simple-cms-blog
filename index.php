<?php
require_once("config/sqlconnect.php");
session_start(); 
$sql = "SELECT post_id, title, descr, pdate from posts order by post_id desc;";
$result = mysqli_query($con, $sql);
$news = array();
while($row = mysqli_fetch_assoc($result)) {
    array_push($news, $row);
}
?>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>簡易部落格</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
</head>
<!-- く__,.ヘヽ.　　　　/　,ー､ 〉            -->
<!-- 　　　　　＼ ', !-─‐-i　/　/´            -->
<!-- 　　　 　 ／｀ｰ'　　　 L/／｀ヽ､          -->
<!-- 　　 　 /　 ／,　 /|　 ,　 ,　　　 ',    -->
<!-- 　　　 ｲ 　/ /-‐/　ｉ　L_ ﾊ ヽ!　 i       -->
<!-- 　　　 ﾚ ﾍ 7ｲ｀ﾄ　 ﾚ'ｧ-ﾄ､!ハ|　 |        -->
<!-- 　　　　 !,/7 '0'　　 ´0iソ| 　 |　　　  -->
<!-- 　　　　 |.从"　　_　　 ,,,, / |./ 　 |  -->
<!-- 　　　　 ﾚ'| i＞.､,,__　_,.イ / 　.i 　| -->
<!-- 　　　　　 ﾚ'| | / k_７_/ﾚ'ヽ,　ﾊ.　|    -->
<!-- 　　　　　　 | |/i 〈|/　 i　,.ﾍ |　i　| -->
<!-- 　　　　　　.|/ /　ｉ： 　 ﾍ!　　＼　|   -->
<!-- 　　　 　 　 kヽ>､ﾊ 　 _,.ﾍ､ 　 /､!      -->
<!-- 　　　　　　 !'〈//｀Ｔ´', ＼ ｀'7'ｰr'   -->
<!-- 　　　　　　 ﾚ'ヽL__|___i,___,ンﾚ|ノ     -->
<!-- 　　　　　 　　　ﾄ-,/　|___./            -->
<!-- 　　　　　 　　　'ｰ'　　!_,.:            -->
<body>
    <div class="nav">
        <div class="container">
            <ul>
                <li <?php echo !isset($_GET['id']) && !isset($_GET['page']) ? 'class="active"' : ''; ?>><a href="index.php">首頁</a></li>
                <li <?php echo @$_GET['page']=='about' ? 'class="active"' : ''; ?>><a href="index.php?page=about">關於</a></li>
                <li style="display:none;"><a href="https://github.com/benny1923/simple-cms-blog/">Github</a></li>
                <li style="float:right; border-left: black 1px solid;">
                <?php 
                    if (isset($_SESSION['username'])) {
                        echo "<a href=\"admin/index.php\">HI! ".$_SESSION['nickname']."</a>";
                    } else {
                        echo "<a href=\"login.php\">登入</a>";
                    }
                ?>
                </li>
            </ul>
        </div>
    </div>
    <div class="container" id="mainframe">
        <div id="page">
            <?php
            if (isset($_GET['page']) && $_GET['page']=='about') {
                echo file_get_contents("page/about.html");
            } else if (isset($_GET['id'])) {
                $sql = "SELECT title, content, pdate, nickname from posts, users where username = user AND post_id='".$_GET['id']."';";
                if (mysqli_num_rows($result = mysqli_query($con, $sql))) {
                    $row = mysqli_fetch_assoc($result);
                    echo "<div class=\"post\">";
                    echo "<div class=\"title\"><h1>".$row['title']."</h1></div>";
                    echo "<div class=\"time\">作者:".$row['nickname']." <span>".$row['pdate']."</span></div>";
                    echo "<div class=\"content\">".$row['content']."</div>";
                    echo "</div>";
                } else {
                    echo "404 Not Found.";
                }
            } else {
                foreach ($news as $key) {
                    echo "<div class=\"preview\"><h1><a href=\"index.php?id=".$key['post_id']."\">".$key['title']."</a></h1><div>".$key['descr']."</div></div>";
                }
            }
            ?>
        </div>
        <div class="menu">
            <div>
                <h3>最新文章</h3>
                <div id="news">
                    <?php
                    foreach ($news as $key) {
                        echo "<p><a href=\"index.php?id=".$key['post_id']."\">".$key['title']." - ".$key['pdate']."</a></p>";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</body>
</html>