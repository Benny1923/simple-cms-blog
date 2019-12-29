<?php 
$title='';
$content='';
$descr='';
if (@$_GET['mode'] == "editpost" && isset($_GET['id'])) {
    require_once("../config/sqlconnect.php");
    $sql = "SELECT * from posts where post_id = ".$_GET['id']." ;";
    if (!$result = mysqli_query($con, $sql)) {
        die("文章不存在");
    }
    $row = mysqli_fetch_assoc($result);
    $title = $row['title'];
    $content = $row['content'];
    $descr = $row['descr'];
}
?>
<style>
.content {
    height: 100%;
}
.content > h2 {
    margin-left: 20px;
}
.editor {
    width: auto;
    padding: 20px;
    height: calc(100% - 130px);
    margin: 0 20px 20px 20px;
    border-radius: 15px;
    background-color: #ffffff80;
}
#title {
    width: calc(100% - 110px);
    height: 30px;
    padding: 2px;
    font-size: 17px;
    font-weight: 700;
}
#save {
    margin-left: 5px;
    width: 75px;
    height: 30px;
    box-sizing: content-box;
    background-color: #cccccc;
    font-size: 15px;
    font-weight: bold;
    border: none;
    border-radius: 5px;
}
form {
    height: calc(100% - 80px);
}
#content {
    width: 100%;
    margin-top: 10px;
    resize: none;
    height: 75%;
}
#descr {
    resize: none;
    height: <?php echo !isset($_GET['success']) ? "25%" : "20%"; ?>;
    width: 100%;
}
</style>

<script>
//實際上是疊加功能，插入尚未完全實作
function ins(element) {
    switch (element) {
        case 'h1':
            ele = '<h1></h1>';
            break;
        case 'h2':
            ele = '<h2></h2>';
            break;
        case 'h3':
            ele = '<h3></h3>';
            break;
        case 'img':
            ele = '<img src="">';
            break;
        case 'a':
            ele = '<a href=""></a>';
            break;
        case 'br':
            ele = '<br>';
            break;
        default:
            break;
    }

    document.getElementById("content").value += ele;
}

</script>

<h2>編輯文章</h2>
<div class="editor">
    <form action="../config/postapi.php" method="post">
        <input type="hidden" name="mode" value="<?php echo isset($_GET['id']) ? 'editpost' : 'newpost'; ?>">
        <input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id'] : 0; ?>">
        <?php echo isset($_GET['success']) ? "<small style=\"color:green;\">文章儲存成功!</small><br>" : "" ; ?>
        <input type="text" name="title" id="title" placeholder="在這裡輸入標題" value="<?php echo $title; ?>" required>
        <input type="submit" value="儲存文章" id="save">
        <br>
        <label>插入:</label>
        <button type="button" onclick="ins('h1')">H1</button>
        <button type="button" onclick="ins('h2')">H2</button>
        <button type="button" onclick="ins('h3')">H3</button>
        <button type="button" onclick="ins('img')">img</button>
        <button type="button" onclick="ins('a')">a</button>
        <button type="button" onclick="ins('br')">br</button>
        <textarea name="content" id="content" placeholder="在這裡輸入內文，換行需加<br>"><?php echo $content; ?></textarea>
        <textarea name="descr" id="descr" placeholder="在這裡輸入描述，換行需加<br>"><?php echo $descr; ?></textarea>
    </form>
</div>