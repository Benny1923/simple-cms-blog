-- MySQL dump 10.16  Distrib 10.1.43-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: simpleblog
-- ------------------------------------------------------
-- Server version	10.1.43-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `filename` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `descr` text,
  `user` varchar(20) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Hello, World!','你好, 世界! <br>\r\n        這是一篇測試文章 <br>\r\n        測試css在各瀏覽器是否都正常工作 <br>\r\n        <br>\r\n        英文單字測試: <br>\r\n        The quick brown fox jumps over the lazy dog. <br>\r\n        不換行疊加: <br>\r\n        The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog. <br>\r\n        <br>\r\n        數字: <br>\r\n        0123456789 <br>\r\n        <br>\r\n        中文： <br>\r\n        中文幾萬個字我打不出來··· <br>\r\n        <h1>The quick brown fox jumps over the lazy dog. </h1>\r\n        <h2>The quick brown fox jumps over the lazy dog. </h2>\r\n        <h3>The quick brown fox jumps over the lazy dog. </h3>\r\n        <h4>The quick brown fox jumps over the lazy dog. </h4>\r\n        <h5>The quick brown fox jumps over the lazy dog. </h5>\r\n        <h6>The quick brown fox jumps over the lazy dog. </h6>\r\n        超連結: <br>\r\n        <a href=\"#home\">按我回首頁</a><br>\r\n        <br>\r\n        試著嵌入YouTube影片: <br>\r\n        <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FFob49tq0ks\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n        <br>\r\n        <br>\r\n        最後嘗試插入一張圖片: <br>\r\n        <img src=\"https://media.tenor.com/images/22bd6be04d66495f69459ff5cb161504/tenor.gif\" alt=\"bongocat\">','你好, 世界!<br>這是一篇測試文章<br>測試css在各瀏覽器是否都正常工作...','admin','2019-12-29'),(2,'台北的捷運系統','<style>\r\n    body {\r\n        background: url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/TRTS_Route_Map_after_2017.svg/1050px-TRTS_Route_Map_after_2017.svg.png);\r\n    }\r\n    div.hor {\r\n        float: left;\r\n        width: 45%;\r\n        margin: 1%;\r\n    }\r\n    div.hor > img {\r\n        width: 100%;\r\n    }\r\n</style>\r\n臺北都會區大眾捷運系統，簡稱臺北捷運 <br>\r\n        為臺灣第一座投入營運、也是規模最大的捷運系統，自1996年3月28日開始營運。 <br>\r\n        擁有 5條主線、2條支線，177個車站。 <br>\r\n        11個路線交會點，15個轉乘站。 <br>\r\n        <br>\r\n        路線圖: <a href=\"https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/TRTS_Route_Map_after_2017.svg/1050px-TRTS_Route_Map_after_2017.svg.png\" target=\"_blank\">按我</a> <br>\r\n        <br>\r\n        <h2>車站</h2>\r\n        礙於篇幅，只能挑一兩個來介紹下。 <br>\r\n        <h3>忠孝新生站</h3>\r\n        為台北捷運板南線與中和新蘆線交會的捷運車站。 <br>\r\n        每日平均旅運量約為67,514人。 <br>\r\n        <h4>照片</h4>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Platform_1%2C_Zhongxiao_Xinsheng_Station_20080317.jpg/1280px-Platform_1%2C_Zhongxiao_Xinsheng_Station_20080317.jpg\" alt=\"板南線的忠孝新生站一月台\"><br>\r\n            板南線的忠孝新生站一月台\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Zhongxiao_Xinsheng_Station_Line_4_Platform_201507.jpg/1920px-Zhongxiao_Xinsheng_Station_Line_4_Platform_201507.jpg\" alt=\"中和新蘆線的忠孝新生站一月台\"><br>\r\n            中和新蘆線的忠孝新生站一月台\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h4>車站周邊</h4>\r\n        <ul>\r\n            <li>國立台北科技大學</li>\r\n            <li>光華數位新天地</li>\r\n            <li>忠孝國小</li>\r\n            <li>中山女中</li>\r\n            <li>建國啤酒廠</li>\r\n        </ul>\r\n        <h3>西湖站</h3>\r\n        車站與西湖市場共用大樓。<br>\r\n        每日平均旅運量約為31,730人。<br>\r\n        <h4>照片</h4>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/e/e5/Platform_in_Xihu_Station.JPG\" alt=\"\"><br>\r\n            西湖站月台\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/d/df/Xihu_Station_20091107b.jpg\" alt=\"\"><br>\r\n            捷運西湖站上層為穿堂層下層為月台層\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h4>車站周邊</h4>\r\n        <ul>\r\n            <li>西湖市場</li>\r\n            <li>德明財經科技大學</li>\r\n            <li>內湖科技園區</li>\r\n            <li>西湖國小</li>\r\n            <li>西湖國中</li>\r\n        </ul>\r\n        <h2>車輛</h2>\r\n        臺北捷運的列車皆為動力分散式的電聯車，分為中運量膠輪、中運量鋼輪以及高運量鋼輪三種不同系統 <br>\r\n        <h3>中運量列車</h3>\r\n        為臺北捷運最早營運的列車類型。<br>\r\n        有兩個車種，皆為無人駕駛。 <br>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/0/04/Taipei_MRT_Train_VAL256_No_28.JPG\" alt=\"\">\r\n            VAL256型，法國馬特拉公司與阿爾斯通公司（Alstom）製造。\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/8/8d/TRTC_Bombardier_INNOVIA_APM_256_2015-04-13.jpg\" alt=\"\">\r\n            INNOVIA APM 256型，加拿大龐巴迪運輸（Bombardier Transportation）製造。\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h3>高運量列車</h3>\r\n        使用鋼輪，行駛於標準軌距的鋼軌軌道上。 <br>\r\n        配有駕駛員監控列車狀況，正常情況下為全自動駕駛。 <br>\r\n        有五個車種。 <br>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/a/a3/TRTC301_in_Beitou_Depot.JPG\" alt=\"\"><br>\r\n            301型，日本川崎重工—美國聯合鐵路機車集團URC製造。\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/f/f0/%E6%9D%BF%E5%8D%97%E7%B7%9A%E5%88%97%E8%BB%8A.JPG\" alt=\"\"><br>\r\n            321型，德國西門子製造。<br><br>\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/1/1b/C341_1201_at_Ximen_Station_20060531.jpg\" alt=\"\"><br>\r\n            341型，德國西門子製造。\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/b/b5/A_train_of_Xiaonanmen_Line_approaching_CKS_Meml_Hall.JPG\" alt=\"\"><br>\r\n            371型，日本川崎重工製造。\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/d/d9/Taipei-MRT_C381_20130908.jpg\" alt=\"\"><br>\r\n            381型，川崎重工和臺灣車輛製造。\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <br>\r\n        <br>\r\n        <h3>資料/圖片來源</h3>\r\n        皆為維基百科: <a href=\"https://zh.wikipedia.org/wiki/%E8%87%BA%E5%8C%97%E6%8D%B7%E9%81%8B\" target=\"_blank\">台北捷運</a>\r\n        <br>\r\n        <br>','台灣第一個捷運系統網路','admin','2019-12-29'),(3,'倫敦的都市鐵路','<style>\r\n    body {\r\n        background: url(https://upload.wikimedia.org/wikipedia/commons/1/13/London_Underground_Overground_DLR_Crossrail_map.svg);\r\n    }\r\n    div.hor {\r\n        float: left;\r\n        width: 45%;\r\n        margin: 1%;\r\n    }\r\n    div.hor > img {\r\n        width: 100%;\r\n    }\r\n</style>\r\n\r\n倫敦的都市鐵路由地下鐵及地上鐵組成。<br>\r\n        地下鐵擁有11條路線、270座服務中的車站。 <br>\r\n        地上鐵則擁有7條路線、83座車站。 <br>\r\n        如今，它世界上第三大的地鐵網路。<br>\r\n        <br>\r\n        路線圖(包含地下、地上鐵以及輕軌等): <a href=\"https://upload.wikimedia.org/wikipedia/commons/1/13/London_Underground_Overground_DLR_Crossrail_map.svg\" target=\"_blank\">按我</a> <br>\r\n        <br>\r\n        <h2>收費區</h2>\r\n        由倫敦交通局管理的大倫敦區域及周邊地區的大部分公共鐵路運輸服務都是以劃一的收費區（fare zone）來制定和計算票價，不論每程的實際乘搭距離，旅程跨越的收費區越多票價亦相應增加。 <br>\r\n        共有九個收費區及少量外圍特殊收費區。 <br>\r\n        第一收費區涵蓋首都中央範圍，第二至第九收費區就圍繞對下收費區形成一層層環狀帶。部分處於大倫敦以外的郡（白金漢、埃塞克斯、赫特福德、薩里）的國鐵車站和全部倫敦交通局直屬車站都處於第四、第五或第六收費區，或更遠的地區位處第七、第八、第九或特殊收費區。 <br>\r\n        <br>\r\n        收費區地圖: <a href=\"https://upload.wikimedia.org/wikipedia/commons/3/35/London_Underground_full_map.svg\" target=\"_blank\">按我</a><br>\r\n        <h2>車站</h2>\r\n        礙於篇幅，只能挑一兩個來介紹下。 <br>\r\n        <h3>西敏站</h3>\r\n        位於英國倫敦西敏市，是倫敦地鐵環線、區域線及朱比利線交會的地鐵站。處於第一收費區。 <br>\r\n        設在橋街（Bridge Street）及維多利亞堤道的路口、泰晤士河西岸，與英國國會附樓——保得利大廈共構。 <br>\r\n        設有淺層月台與深層月台。 <br>\r\n        <h4>照片</h4>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/9/9b/Westminster_station_Circle_look_clockwise_D_Stock_anti.JPG\" alt=\"\"><br>\r\n            淺層站體西行月台和東行月台\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/b/b8/Westminster.tube.station.jubilee.arp.jpg\" alt=\"\"><br>\r\n            深層站體內的朱比利線東行月台\r\n            <br>\r\n            <br>\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/d/d6/Westminster_station_entrance_Portcullis_House.JPG\" alt=\"\"><br>\r\n            1990年代改建的西敏站出口，與保得利大廈共構\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h4>車站周邊</h4>\r\n        <ul>\r\n            <li>西敏宮（國會廳舍）</li>\r\n            <li>西敏寺</li>\r\n            <li>西敏橋</li>\r\n            <li>西敏千禧碼頭</li>\r\n            <li>國會廣場</li>\r\n            <li>倫敦眼</li>\r\n            <li>白廳</li>\r\n            <li>唐寧街</li>\r\n            <li>戰爭紀念碑</li>\r\n            <li>韓戰紀念碑</li>\r\n        </ul>\r\n        <h3>溫布利中央站</h3>\r\n        倫敦西北溫布利的轉乘站，設有倫敦地鐵貝克盧線、倫敦地上鐵、倫敦米德蘭及南方鐵路服務。<br>\r\n        處於第四收費區。<br>\r\n        <h4>照片</h4>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/a/a1/Wembley_Central_station_8.jpg\" alt=\"\"><br>\r\n            溫布利中央站\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h4>車站周邊</h4>\r\n        <ul>\r\n            <li>溫布利球場</li>\r\n            <li>溫布利體育館</li>\r\n        </ul>\r\n        <h2>車輛</h2>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/c/cd/1995_stock_at_West_Finchley.JPG\" alt=\"\"><br>\r\n            1995年型，阿爾斯通製造\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/2/2c/Unit_378149_at_Crystal_Palace.JPG\" alt=\"\"><br>\r\n            378型，龐巴迪運輸製造\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <br>\r\n        <br>\r\n        <h3>資料/圖片來源</h3>\r\n        皆為維基百科: <a href=\"https://zh.wikipedia.org/wiki/伦敦地铁\" target=\"_blank\">倫敦地鐵</a>、<a href=\"https://zh.wikipedia.org/wiki/倫敦地上鐵\" target=\"_blank\">倫敦地上鐵</a>\r\n        <br>\r\n        <br>','世界第首條地下鐵路和第一個都市鐵路運輸系統','admin','2019-12-29'),(4,'東京的地下鐵系統','<style>\r\n    body {\r\n        background: url(https://www.tokyometro.jp/tcn/subwaymap/img/img_01.png);\r\n    }\r\n    div.hor {\r\n        float: left;\r\n        width: 45%;\r\n        margin: 1%;\r\n    }\r\n    div.hor > img {\r\n        width: 100%;\r\n    }\r\n</style>\r\n\r\n東京是全亞洲最早有地鐵路線的城市 <br>\r\n        目前共有13條路線（東京地下鐵共9線、都營地下鐵共4線），285個車站（東京地下鐵共179個、都營地下鐵共106個，當中多線共用的車站重複計算），路線總長304.1公里（東京地下鐵共195.1公里、都營地下鐵共109公里；不含直通運行路段） <br>\r\n        每日平均運量約850萬人次，是世界上最繁忙的城市軌道交通系統之一。 <br>\r\n        <br>\r\n        路線圖: <a href=\"https://www.tokyometro.jp/tcn/subwaymap/\" target=\"_blank\">按我</a> <br>\r\n        <br>\r\n        <h2>車站</h2>\r\n        礙於篇幅，只能挑一個來介紹下。 <br>\r\n        <h3>東京車站</h3>\r\n        為東日本旅客鐵道（JR東日本）、東海旅客鐵道（JR東海）、東京地下鐵的鐵路車站 <br>\r\n        是日本全國新幹線路網（九州新幹線除外）最重要的列車始發站，同時也是東海道本線、中央本線、東北本線等日本主要在來線（傳統鐵路）幹線的起點站，是東京主要的交通樞紐之一。 <br>\r\n        月台配置有15面30線，站區總面積相當於3.6個東京巨蛋，站內的月台數量為日本第一 。<br>\r\n        <h4>照片</h4>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/e/e5/Bird%27s%E2%80%90eye_view_of_Tokyo_Station_5.jpg\" alt=\"\"><br>\r\n            月台遠景\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/0/0c/The_night_view_of_Tokyo_station.JPG\" alt=\"中和新蘆線的忠孝新生站一月台\"><br>\r\n            車站夜景\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <h2>車輛</h2>\r\n        形形色色的電車是東京地下鐵非常值得一看的特色 <br>\r\n        (嗯?剛剛我有說篇幅問題嗎?) <br>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/3c/Tokyo-Metro_1000.jpg\" alt=\"\">\r\n            東京地下鐵1000系電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/b/ba/Tokyo_Metro_Tozai_15102_Minami-Gyotoku_20101015.jpg\" alt=\"\">\r\n            東京地下鐵15000系電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/2/26/Tokyo_metro_16000.JPG\" alt=\"\">\r\n            東京地下鐵16000系電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/a/a5/Tokyometro_8_and_13_line_10106F.jpg\" alt=\"\">\r\n            東京地下鐵10000系電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/4/4d/Tokyo_Metro_13000_Series.jpg\" alt=\"\">\r\n            東京地下鐵13000系電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/d/dd/Toei-6300-2.jpg\" alt=\"\">\r\n            東京都交通局6300型電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/4/41/10-line_10-030F.jpg\" alt=\"\">\r\n            東京都交通局10-000型電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/5/5d/Toei-subway_12-301.jpg\" alt=\"\">\r\n            東京都交通局12-000型電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/6/6c/Toei-subway12-600.jpg\" alt=\"\">\r\n            東京都交通局12-600型電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/e/ed/Toei_5300_Series_5327_Formation.jpg\" alt=\"\">\r\n            東京都交通局5300型電聯車\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/a/a7/Tokyometro03.jpg\" alt=\"\">\r\n            營團03系電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/8/87/Metro_5line_05-102F.jpg\" alt=\"\">\r\n            營團05系電力動車組 <br><br>\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/d/d1/Tokyometro07tozailine.jpg\" alt=\"\">\r\n            營團07系電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/4/48/Tokyo_Metro_08_series_Tokyu_DT_Line_20180519.jpg\" alt=\"\">\r\n            營團08系電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/c/c9/Metro_-_Series8000.jpg\" alt=\"\">\r\n            營團8000系電力動車組\r\n        </div>\r\n        <div class=\"hor\">\r\n            <img src=\"https://upload.wikimedia.org/wikipedia/commons/1/1e/Tokyometro9000.jpg\" alt=\"\">\r\n            營團9000系電聯車\r\n        </div>\r\n        <div style=\"clear:both;\"></div>\r\n        <br>\r\n        <br>\r\n        <h3>資料/圖片來源</h3>\r\n        皆為維基百科: <a href=\"https://zh.wikipedia.org/wiki/%E6%9D%B1%E4%BA%AC%E7%9A%84%E5%9C%B0%E4%B8%8B%E9%90%B5%E7%B3%BB%E7%B5%B1\" target=\"_blank\">東京的地下鐵系統</a>\r\n        <br>\r\n        <br>','亞州第一座地鐵系統<br>同時也是世界最繁忙地鐵之一','admin','2019-12-29');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nickname` text NOT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','Benny Ling',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29 21:51:54
