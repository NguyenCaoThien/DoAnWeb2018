CREATE DATABASE  IF NOT EXISTS `doanwebck` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `doanwebck`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doanwebck
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `idSach` int(11) NOT NULL AUTO_INCREMENT,
  `ngayNhapHang` date DEFAULT NULL,
  `luotMua` int(11) DEFAULT NULL,
  `luotXem` int(11) DEFAULT NULL,
  `idNhaSX` int(11) DEFAULT NULL,
  `hinhAnh` varchar(100) DEFAULT NULL,
  `moTa` varchar(500) DEFAULT NULL,
  `idLoai` int(11) DEFAULT NULL,
  `giaBan` int(11) DEFAULT NULL,
  `ten_sach` varchar(200) DEFAULT NULL,
  `tac_gia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSach`),
  KEY `L_idx` (`idLoai`),
  KEY `NSX_idx` (`idNhaSX`),
  CONSTRAINT `L` FOREIGN KEY (`idLoai`) REFERENCES `loai` (`idLoai`),
  CONSTRAINT `NSX` FOREIGN KEY (`idNhaSX`) REFERENCES `nhasx` (`idNhaSX`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (2,'2018-03-03',562,1207,2,'/img/book/dac-nhan-tam.jpg','Đừng tưởng mình quan trọng, hãy học cách yêu thương, quan tâm người khác thật lòng',3,76000,'Đắc nhân tâm','Dale Carnegie'),(3,'2018-04-04',667,134,3,'/img/book/neu_toi_biet_duoc_khi_con_20.jpg','Đôi khi cứ để cuộc đời quẳng gạch vào đầu bạn',3,64000,'Nếu tôi biết được khi còn 20','Tina Seelig'),(4,'2018-02-13',767676,4434,3,'img/book/nhumuadongroixuong-200x280.jpg','có thể sẽ biến mất mãi mãi. Hoặc nếu chúng có ngủ quên cũng sẽ chỉ được đánh thức bằng một điều gợi nhớ.',1,71000,'Như Mùa Đông Rơi Xuống','Fuyu'),(5,'2017-02-23',53454,333,3,'img/book/lac_loi_giua_co_don_1-200x280.jpg','Cuốn sách này được viết trong những đêm dài… một mình…mất ngủ và đầy khói thuốc.',3,68000,'Lạc Lối Giữa Cô Đơn','Minh Nhật'),(6,'2017-12-23',443,46656,3,'img/book/Truoc_khi_chet_phai_biet_yeu_la_gi-200x280.jpg','Tiểu thuyết \"Trước khi chết phải biết tình yêu là gì\" của tác giả Nguyễn À Nguyễn là sự băn khoăn về tình yêu của cuộc đời Khải. ',3,85500,'Trước Khi Chết Phải Biết Tình Yêu Là Gì','Nguyễn À Nguyễn'),(7,'2017-10-23',344,656,3,'img/book/yeunguoingongnui-200x280.jpg','Vẫn dễ dàng nhận ra một giọng văn tinh tế, đậm chất Nam bộ',1,40500,'Yêu Người Ngóng Núi (Tản Văn – Tái Bản 2014)','Nguyễn Ngọc Tư'),(8,'2017-06-23',6656,3332,3,'img/book/airoicungkhac-200x280.gif','Ai rồi cũng khác với những thông điệp sống ý nghĩa là hành trình trải nghiệm của hai tác giả trẻ.',3,62000,'Ai Rồi Cũng Khác','Hamlet Trương - Iris Cao'),(9,'2017-11-01',44453,32332,3,'img/book/gao-nuoc-mam-rau-muong-200x280.jpg','Những câu chuyện bên lề, những liên tưởng độc đáo, những ca dao, tục ngữ được được đặt đúng chỗ trong các diễn giải, không những giúp làm rõ hơn ý hướng của người viết mà còn đem lại cho ý hướng ấy sự thấm thía, thuần nhã, gần gặn',2,90000,'Gạo, Nước Mắm, Rau Muống… Câu Chuyện Ẩm Thực Việt','Hoàng Trọng Dũng'),(10,'2016-04-24',6665,33344,3,'img/book/du-con-song-the-nao-me-cung-luon-ung-ho-200x280.jpg','Đều đặn vào mỗi thứ Ba, Uy Nyung, cô bé đang bâng khuâng trước bậc thềm thanh xuân lại nhận được một lá thư.',5,61000,'Dù Con Sống Thế Nào, Mẹ Cũng Luôn Ủng Hộ','Gong Ji Young'),(11,'2017-07-24',3453,34555,1,'img/book/thucdaytrenmainha-200x280.gif','Có  một thế giới nhỏ, buồn như mảnh diều chao nghiêng trên nền trời xanh nhạt trong một chiều ít gió.',3,59500,'Thức Dậy Trên Mái Nhà','Minh Mẫn'),(12,'2018-01-12',34665,5899,2,'img/book/benkiadoi-200x280.jpg','\"Bên kia đồi\" là cuốn tiểu thuyết của tác giả Võ Mỹ Linh kể về cuộc đời bi đát của nhân vật Nụ với những lời độc thoại nội tâm đầy xót xa.',1,53000,'Bên Kia Đồi','Võ Mỹ Linh'),(13,'2018-03-11',4689,965756,2,'img/book/taoxanh-200x280.gif','\"Thật khó để một người con trai yêu một người con trai khác phải không?\" - Câu nói trích từ một truyện ngắn trong tuyển tập đã hiển hiện trong tâm trí tôi mãi khi đọc các tác phẩm ngắn này.',3,76500,'Táo Xanh – Hãy Để Anh Thương Em','Nhiều tác giả'),(14,'2018-05-30',90085,3455,4,'img/book/quatredechet-200x280.gif','Quá trẻ để chết: Hành trình nước Mỹ là hành trình đơn độc của tác giả - một cô gái Việt trẻ đi xuyên nước Mỹ từ Bờ Đông sang bờ Tây.',4,58500,'Quá Trẻ Để Chết: Hành Trình Nước Mỹ','Đinh Hằng'),(15,'2018-06-01',13423,2132,5,'img/book/bamuonnuoiconbangsuame-200x280.gif','Cuốn tự truyện “Ba muốn nuôi con bằng sữa mẹ” của Trình Tuấn có thể lay động hàng triệu trái tim vì sự chân thực, cảm động và khả năng truyền cảm hứng của nó...',5,61000,'Ba Muốn Nuôi Con Bằng Sữa Mẹ','Trình Tuấn'),(16,'2018-06-15',7674332,345,3,'img/book/bao-200x280.gif','TÁC PHẨM “BÃO” CỦA JEAN-MARIE GUSTAVE LE CLÉZIO',2,63000,'Bão','Le Clezio'),(17,'2018-03-23',6442,4565,2,'img/book/chuyen_iphone_va_ga_chanh-200x280.jpg','Một câu chuyện xoay quanh “Bộ tứ cá ngựa” tại Đà Lạt. iPhone - cô gái xinh đẹp \"cuồng\" Apple. Gã Chảnh 49 bảnh trai, giàu có và thích chơi ngông. Người phụ nữ bình thường tuổi băm - Tóc Tém. Và cô chị Thuốc Lá dạn dày sương gió.',2,57500,'Chuyện Iphone Và Gã Chảnh Mang Mật Danh 49','Thu Dương'),(18,'2018-01-12',907676,3434,4,'img/book/vuan-200x280.gif','Franz Kafka  là một nhà văn lỗi lạc gốc Do Thái, người đã đi tiên phong và tạo nên sự “đột biến ” trong văn xuôi đầu thế kỷ XX',6,61000,'Vụ Án','Franz Kafka'),(19,'2018-05-12',2345,665556,1,'img/book/nhungnuhondienanh-200x280.gif','Những Nụ Hôn Điện Ảnh (Éric Fottorino, Nhã Nam phát hành)....',7,52000,'Những Nụ Hôn Điện Ảnh','Eric Fottorino'),(20,'2018-01-30',5455453,344,2,'img/book/tinhyeukhongphailatatca-200x280.gif','Đó là câu hỏi không xa lạ gì với tất cả chúng ta, và có lẽ cũng không hề dễ trả lời. Nhưng với cuốn sách nhỏ này, chắc chắn bạn sẽ có lời đáp cho riêng mình.',3,67500,'Tình Yêu Không Phải Là Tất Cả','Nhiều tác giả'),(21,'2017-12-05',3444345,233,1,'img/book/nhungconchimanminhchochet-200x280.gif','“Những con chim ẩn mình chờ chết” là câu chuyện mang tính chất sử thi của một gia đình thuộc dòng họ Cleary suốt chiều dài thời gian hơn nữa thế kỷ trên đất Úc châu từ năm 1915 đến 1969.',6,130500,'Những Con Chim Ẩn Mình Chờ Chết','Colleen Mccullough'),(22,'2016-12-04',8776,23344,3,'img/book/taybuongtaytimthoinho-200x280.gif','Cuốn sách Tay buông tay và tim thôi nhớ đã thể hiện tất cả những lần ly biệt dù có mang theo tình yêu hay nỗi thù hận, cũng đều là một sự chia cắt đau khổ.',3,80000,'Tay Buông Tay Và Tim Thôi Nhớ','Trương Tiểu Nhàn'),(23,'2017-09-13',65464,343,3,'img/book/gianaocungyeu-200x280.gif','Tiểu thuyết Giá nào cũng yêu lấy bối cảnh xã hội phong kiến thế kỷ 19. Cách kể lôi cuốn và con mắt miêu tả tinh tế của nữ nhà văn 51 tuổi khiến người đọc chìm vào nội dung có tiết tấu vừa hồi hộp, vừa dí dỏm, nồng nàn.',3,82500,'Giá Nào Cũng Yêu','Lisa Kleypas'),(24,'2017-08-23',656,343,4,'img/book/chientranhgiuacacthegioi-200x280.gif','Được xuất bản lần đầu tiên vào năm 1898, “Chiến tranh giữa các thế giới” (tên gốc: “War of the Worlds”) là một lời dự báo u buồn cho tương lai của nhân loại.',6,55500,'Chiến Tranh Giữa Các Thế Giới','H. G. Wells'),(25,'2017-02-01',7676,535,3,'img/book/hoatuylipden-200x280.gif','Nội dung sách xoay quanh câu chuyện tình cảm xảy ra ở thành phố La Haye, Hà Lan cuối thế kỷ XVII. Cornélius van Baerle giàu có có một niềm đam mê bất tận với hoa tulip.',7,49500,'Hoa Tuylip Đen','Alexander Dumas'),(26,'2018-05-02',454545,2343,3,'img/book/cuongphong-200x280.gif','Phản ánh chân thực lịch sử cuối thế kỷ 20 nhiều biến cố của đất nước, cuốn tiểu thuyết của Nguyễn Phan Hách vừa được tái bản đầu tháng 4.',1,115000,'Cuồng Phong (Tái Bản 2015)','Nguyễn Phan Hách'),(27,'2018-03-24',43243432,435,3,'img/book/ngayayviaimadoithay-200x280.gif','Em không thể. Vì ngay từ lần đầu tiên yêu anh, trái tim em đã yêu anh quá nhiều. Nhiều đến nỗi không thể cảm nhận được nữa. Làm sao, có thể yêu anh lần thứ hai?',3,68000,'Ngày Ây Vì Ai Mà Đổi Thay','Cẩm Thương'),(28,'2017-09-23',4343,32321,1,'img/book/lacnhaugiuanganha-200x280.gif','“Câu chuyện giữa Bạch Dương và Song Tử - có cái nóng sực đến bỏng tay của cung Lửa, có cái mát lạnh đi cùng những ngọn gió mùa đông của cung Khí.\"',3,63000,'Lạc Nhau Giữa Ngân Hà','Nhóm bút Lovedia'),(29,'2018-05-23',6564,43234,1,'img/book/chungtaodocontinhyeuthikhong-200x280.gif','“Chúng ta ở đó, còn tình yêu thì không” là chuỗi những ngày tôi thấy mình giống hệt như nhiều cô gái khác. ',3,54000,'Chúng Ta Ở Đó, Còn Tình Yêu Thì Không','Hạc Xanh'),(30,'2018-02-22',686,766688,1,'img/book/dunghonohoian-200x280.gif',' Mượn câu thơ của Chế Lan Viên, Đinh Lê Vũ dặn người đọc như vậy. Lời dặn nghe có vẻ riêng tư đến kỳ cục. Đến Hội An có đủ thứ, đâu chỉ phải để hôn? Hôn ở đâu mà chẳng được?',6,67500,'Đừng Hôn Ở Hội An','Đinh Lê Vũ');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `VanHoc` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `KinhTe` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `TT-DS` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `SachNgoaiVan` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `SachThieuNhi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `BaoChi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `TapChi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Hài hước - Truyện cười','Doanh nhân','Kỹ năng sống','Từ điển','Kiến thức khoa học','Người lao động','Phụ nữ'),(2,'Huyền bí - Giả tưởng','Khởi nghiệp','Nghệ thuật sống đẹp','Văn học','Manga - Comic','Tiên phong','Thời trang'),(3,'Phê bình văn học','Kinh tế học','Chăm sóc sức khỏe','Kinh tế','Truyện tranh','Pháp luật','Văn hoá'),(4,'Phóng sự - Ký sự','Kỹ năng làm việc','Làm vườn - Vật nuôi','','Văn học','Tài chính','Ngày nay'),(5,'Tác phẩm kinh điển','Marketing - Bán hàng','Nấu ăn','',NULL,'Công an',NULL),(6,'Thơ','Quản trị - Lãnh đạo','Nuôi dạy con','',NULL,'Chứng khoán',NULL),(7,'Tiểu sử - Hồi ký','Tài chính - Kế toán','Chăm sóc gia đình',NULL,NULL,'Làm đẹp',NULL),(8,'Tiểu thuyết tình cảm',NULL,'Phong thủy - Nhà cửa',NULL,NULL,NULL,NULL),(9,'Truyện kiếm hiệp',NULL,'Tâm lý - Giới tính',NULL,NULL,NULL,NULL),(10,'Truyện ngắn - Tản văn',NULL,'Trò chơi - Giải trí',NULL,NULL,NULL,NULL),(11,'Truyện ngôn tình',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Truyện trinh thám',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Đam mỹ',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Phiêu lưu',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datsp`
--

DROP TABLE IF EXISTS `datsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datsp` (
  `idDatSP` int(11) NOT NULL AUTO_INCREMENT,
  `idMaSP` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `idGioHang` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDatSP`),
  KEY `MSP_idx` (`idMaSP`),
  KEY `IDGH_idx` (`idGioHang`),
  CONSTRAINT `IDGH` FOREIGN KEY (`idGioHang`) REFERENCES `giohang` (`idGioHang`),
  CONSTRAINT `MSP` FOREIGN KEY (`idMaSP`) REFERENCES `book` (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datsp`
--

LOCK TABLES `datsp` WRITE;
/*!40000 ALTER TABLE `datsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `datsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giohang` (
  `idGioHang` int(11) NOT NULL AUTO_INCREMENT,
  `tongGia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGioHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `idKhachHang` int(11) NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(200) DEFAULT NULL,
  `diaChi` varchar(450) DEFAULT NULL,
  `soDT` varchar(11) DEFAULT NULL,
  `idLichSu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idKhachHang`),
  KEY `LS_idx` (`idLichSu`),
  CONSTRAINT `LS` FOREIGN KEY (`idLichSu`) REFERENCES `lichsumh` (`idLS`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Nguyen Van A','Nguyen Van Cu, quan 5','0123456789',NULL),(17,'nguyen cao thien','18 Tran Van Thanh','1657409117',NULL),(18,'Tran Van Thach','18 Tran Van Thanh','1657409117',NULL);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichsumh`
--

DROP TABLE IF EXISTS `lichsumh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lichsumh` (
  `idLS` int(11) NOT NULL AUTO_INCREMENT,
  `idThanhToan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLS`),
  KEY `TT_idx` (`idThanhToan`),
  CONSTRAINT `TT` FOREIGN KEY (`idThanhToan`) REFERENCES `thanhtoan` (`idThanhToan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichsumh`
--

LOCK TABLES `lichsumh` WRITE;
/*!40000 ALTER TABLE `lichsumh` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichsumh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai` (
  `idLoai` int(11) NOT NULL AUTO_INCREMENT,
  `tenLoai` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Văn học '),(2,'Kinh tế'),(3,'Thường thức - đời sống'),(4,'Sách ngoại văn'),(5,'Sách thiếu nhi'),(6,'Báo chí'),(7,'Tạp chí');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `userName` varchar(45) NOT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `loaiNguoiDung` int(11) DEFAULT NULL,
  `idNguoiSuDung` int(11) DEFAULT NULL,
  PRIMARY KEY (`userName`),
  KEY `QL_idx` (`idNguoiSuDung`),
  CONSTRAINT `KH1` FOREIGN KEY (`idNguoiSuDung`) REFERENCES `khachhang` (`idKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('1512533','1512533',0,20),('1512520','1512520',0,17);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhasx`
--

DROP TABLE IF EXISTS `nhasx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhasx` (
  `idNhaSX` int(11) NOT NULL AUTO_INCREMENT,
  `tenNhaSX` varchar(200) DEFAULT NULL,
  `soLuongSP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNhaSX`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhasx`
--

LOCK TABLES `nhasx` WRITE;
/*!40000 ALTER TABLE `nhasx` DISABLE KEYS */;
INSERT INTO `nhasx` VALUES (1,'Văn học',1200),(2,'Tổng hợp TPHCM',3000),(3,'Xuất bản trẻ',2000),(4,'Chính trị Quốc gia - Sự thậ',1000),(5,'Nhà xuất bản Lao động',500);
/*!40000 ALTER TABLE `nhasx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanly`
--

DROP TABLE IF EXISTS `quanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quanly` (
  `idQuanLy` int(11) NOT NULL AUTO_INCREMENT,
  `hoTenQL` varchar(100) DEFAULT NULL,
  `capQL` int(11) DEFAULT NULL,
  PRIMARY KEY (`idQuanLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanly`
--

LOCK TABLES `quanly` WRITE;
/*!40000 ALTER TABLE `quanly` DISABLE KEYS */;
/*!40000 ALTER TABLE `quanly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('8BYp1f9v47ewhDo1jw_ffqFRFt21d-5G',1528250770,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),('C7flDthUekUP5JVdWFuJ16EQzcWrSvGZ',1528290374,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),('UwD7ght6sQ5tA-zHpSjjxl7HMaV_K2a8',1528254216,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"userName\":\"1512529\",\"pass\":\"8356c920e58c197c3fcea76b9209aa789103b88ed84bdc7e58fb34bf24bc8552\",\"loaiNguoiDung\":0,\"idNguoiSuDung\":20},\"cart\":[]}'),('ahvR1VQil1nS5t57mACGi1r1OtOWs-MZ',1528177730,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"userName\":\"hoaithuong2\",\"pass\":\"ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f\",\"loaiNguoiDung\":0,\"idNguoiSuDung\":22},\"cart\":[{\"product\":{},\"sl\":2,\"amount\":null},{\"idSach\":\"3\",\"sl\":1,\"amount\":null}]}'),('sX4N2Qgvj_AZsayagk8js3jPeD7ZU9zT',1528258563,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhtoan`
--

DROP TABLE IF EXISTS `thanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thanhtoan` (
  `idThanhToan` int(11) NOT NULL AUTO_INCREMENT,
  `idGioHang` int(11) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `diaChiThanhToan` varchar(450) DEFAULT NULL,
  `ngayDatHang` date DEFAULT NULL,
  `sdtNhanHang` varchar(11) DEFAULT NULL,
  `trangThai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idThanhToan`),
  KEY `GH_idx` (`idGioHang`),
  KEY `KH_idx` (`idKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhtoan`
--

LOCK TABLES `thanhtoan` WRITE;
/*!40000 ALTER TABLE `thanhtoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `thanhtoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'doanwebck'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 22:47:18
