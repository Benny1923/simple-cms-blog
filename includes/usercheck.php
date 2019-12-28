<?php
session_start();
if (!isset($_SESSION['username'])) {
    die("你尚未登入 <a href=\"../login.php\">按我登入</a>");
}

?>