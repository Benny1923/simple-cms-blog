<style>

</style>

<script>
function check() {
    var newpass = document.getElementById("newpass").value;
    var repass = document.getElementById("repass").value;
    if (newpass != repass){
    var msg = document.getElementById("errormsg");
    msg.style['display'] = "initial";
    msg.style['color'] = "red";
    msg.innerHTML="新密碼檢查不一致<br>";
    return false;
    } else return true;
}
</script>

<div class="userset">
<p>你可以在這裡更改暱稱或是密碼</p>
<form action="../config/userapi.php" method="post">
<h3>更改使用者暱稱</h3>
<input type="hidden" name="set" value="nickname">
<label for="nickname">使用者暱稱:</label>
<input type="text" name="nickname" id="nickname" value="<?php echo $_SESSION['nickname']; ?>" required>
<br>
<input class="button" type="submit" value="更改暱稱">
</form>
<form action="../config/userapi.php" method="post" onsubmit="return check();">
<h3>更改密碼</h3>
<input type="hidden" name="set" value="password">
<label for="oldpass">輸入舊密碼:</label>
<input type="text" name="oldpass" id="oldpass" required>
<br>
<label for="newpass">輸入新密碼:</label>
<input type="text" name="newpass" id="newpass" required>
<br>
<label for="repass">確認新密碼:</label>
<input type="text" name="repass" id="repass" required>
<br>
<?php
    $color = 'red';
    $display = 'none';
    $msg = '舊密碼輸入錯誤，請重新檢查<br>';
    if (isset($_GET['error'])) {
        if ($_GET['error'] == 1) {
            $display = 'initial';
        } else if ($_GET['error'] ==0 ) {
            $display = 'initial';
            $color = "green";
            $msg = "密碼更改成功!<br>";
        }
    }
    echo "<small style=\"display: $display; color: $color;\" id=\"errormsg\">$msg</small>";
?>
<input type="submit" value="更改密碼">
</form>


</div>