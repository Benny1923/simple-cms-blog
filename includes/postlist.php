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
<div class="plistf">
    <h2>文章管理: <a href="editor.php?mode=newpost">新增文章</a></h2>
    <table>
        <tr>
            <th class="title">標題</th>
            <th class="date">日期</th>
            <th class="manage">管理</th>
        </tr>
        <tr>
            <td class="title">WINDOWS 10 完全攻略</td>
            <td class="date">2019/12/23</td>
            <td class="manage">刪除&nbsp;&nbsp;&nbsp;編輯</td>
        </tr>
    </table>
</div>
