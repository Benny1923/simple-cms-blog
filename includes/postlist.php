<style>
.plistf {
    width: auto;
    padding: 20px;
}

.plistf table {
    width: 100%;
    border-radius: 15px;
    background-color: #ffffff80;
    padding: 10px;
}
.plistf table th{
    border-right: black 1px solid;
    border-radius: 0px;
}
.plistf table th:last-child{
    border-right: none;
}
th.title {
    width: 70%;
}
td.date {
    text-align: center;
}
td.manage {
    text-align: center;
}
.plistf table tr td {
    border-bottom: #cccccc 1px solid;
    padding-bottom: 3px;
}
h2 > a {
    float: right;
    background-color: #ffffff80;
    font-size: 17px;
    padding: 3px 5px;
    text-decoration: none;
    color: #000;
}
</style>

<script>
    function del(id) {
        if (confirm("確定要刪除文章嗎?")) {
            document.getElementById("postid").value=id;
            document.getElementById("delact").submit();
        }
    }
    function edit(id) {
        window.location = "editor.php?mode=editpost&id=" + id;
    }
</script>

<div class="plistf">
    <h2>文章管理: <a href="editor.php?mode=newpost">新增文章</a></h2>
    <form action="../config/postapi.php" method="post" style="display: none;" id="delact">
    <input type="hidden" name="mode" value="delpost">
    <input type="hidden" name="id" value="" id="postid">
    </form>
    <table>
        <tr>
            <th class="title">標題</th>
            <th class="date">日期</th>
            <th class="manage">管理</th>
        </tr>
        <?php
            require_once("../config/sqlconnect.php");
            $sql = "SELECT post_id, title, pdate from posts where user = '".$_SESSION['username']."';";
            if ($result = mysqli_query($con, $sql)) {
                while($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td class=\"title\">".$row['title']."</td>";
                    echo "<td class=\"date\">".$row['pdate']."</td>";
                    echo "<td class=\"manage\"><button type=\"button\" onclick=\"edit(".$row['post_id'].")\">編輯</button><button type=\"button\" onclick=\"del(".$row['post_id'].")\">刪除</button></td>";
                    echo "</tr>";
                }
            }
        ?>
    </table>
</div>
