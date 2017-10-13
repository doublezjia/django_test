﻿# Host: localhost  (Version: 5.5.53)
# Date: 2017-10-13 12:28:28
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "douban_movie"
#

DROP TABLE IF EXISTS `douban_movie`;
CREATE TABLE `douban_movie` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `cast` varchar(255) DEFAULT NULL COMMENT '主演',
  `reldate` varchar(255) DEFAULT NULL COMMENT '上映日期',
  `ratingnum` varchar(255) DEFAULT NULL COMMENT '评分',
  `quote` varchar(255) DEFAULT NULL COMMENT '引用',
  `addtime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

#
# Data for table "douban_movie"
#

/*!40000 ALTER TABLE `douban_movie` DISABLE KEYS */;
INSERT INTO `douban_movie` VALUES (1,'肖申克的救赎','导演: 弗兰克·德拉邦特 Frank Darabont   主演: 蒂姆·罗宾斯 Tim Robbins /...','1994 / 美国 / 犯罪 剧情','9.6','希望让人自由。','2017-10-10 10:55:32.201128'),(2,'霸王别姬','导演: 陈凯歌 Kaige Chen   主演: 张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...','1993 / 中国大陆 香港 / 剧情 爱情 同性','9.5','风华绝代。','2017-10-10 10:55:32.206128'),(3,'这个杀手不太冷','导演: 吕克·贝松 Luc Besson   主演: 让·雷诺 Jean Reno / 娜塔莉·波特曼 ...','1994 / 法国 / 剧情 动作 犯罪','9.4','怪蜀黍和小萝莉不得不说的故事。','2017-10-10 10:55:32.213128'),(4,'阿甘正传','导演: Robert Zemeckis   主演: Tom Hanks / Robin Wright Penn / Gary Sinise','1994 / 美国 / 剧情 爱情','9.4','一部美国近现代史。','2017-10-10 10:55:32.220128'),(5,'美丽人生','导演: 罗伯托·贝尼尼 Roberto Benigni   主演: 罗伯托·贝尼尼 Roberto Beni...','1997 / 意大利 / 剧情 喜剧 爱情 战争','9.5','最美的谎言。','2017-10-10 10:55:32.226128'),(6,'千与千寻','导演: 宫崎骏 Hayao Miyazaki   主演: 柊瑠美 Rumi Hîragi / 入野自由 Miy...','2001 / 日本 / 剧情 动画 奇幻','9.2','最好的宫崎骏，最好的久石让。','2017-10-10 10:55:32.233128'),(7,'辛德勒的名单','导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 连姆·尼森 Liam Neeson...','1993 / 美国 / 剧情 历史 战争','9.4','拯救一个人，就是拯救整个世界。','2017-10-10 10:55:32.240128'),(8,'泰坦尼克号','导演: 詹姆斯·卡梅隆 James Cameron   主演: 莱昂纳多·迪卡普里奥 Leonardo...','1997 / 美国 / 剧情 爱情 灾难','9.2','失去的才是永恒的。','2017-10-10 10:55:32.246128'),(9,'盗梦空间','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 莱昂纳多·迪卡普里奥 Le...','2010 / 美国 英国 / 剧情 动作 科幻 悬疑 冒险','9.2','诺兰给了我们一场无法盗取的梦。','2017-10-10 10:55:32.254128'),(10,'机器人总动员','导演: 安德鲁·斯坦顿 Andrew Stanton   主演: 本·贝尔特 Ben Burtt / 艾丽...','2008 / 美国 / 喜剧 爱情 科幻 动画 冒险','9.3','小瓦力，大人生。','2017-10-10 10:55:32.259128'),(11,'海上钢琴师','导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 蒂姆·罗斯 Tim Roth / ...','1998 / 意大利 / 剧情 音乐','9.2','每个人都要走一条自己坚定了的路，就算是粉身碎骨。','2017-10-10 10:55:32.268128'),(12,'三傻大闹宝莱坞','导演: 拉库马·希拉尼 Rajkumar Hirani   主演: 阿米尔·汗 Aamir Khan / 卡...','2009 / 印度 / 剧情 喜剧 爱情 歌舞','9.1','英俊版憨豆，高情商版谢耳朵。','2017-10-10 10:55:32.274128'),(13,'忠犬八公的故事','导演: 莱塞·霍尔斯道姆 Lasse Hallström   主演: 理查·基尔 Richard Ger...','2009 / 美国 英国 / 剧情','9.2','永远都不能忘记你所爱的人。','2017-10-10 10:55:32.280128'),(14,'放牛班的春天','导演: 克里斯托夫·巴拉蒂 Christophe Barratier   主演: 杰拉尔·朱诺 Géra...','2004 / 法国 瑞士 德国 / 剧情 音乐','9.2','天籁一般的童声，是最接近上帝的存在。','2017-10-10 10:55:32.287128'),(15,'大话西游之大圣娶亲','导演: 刘镇伟 Jeffrey Lau   主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...','1995 / 香港 中国大陆 / 动作 冒险 喜剧 奇幻 爱情','9.2','一生所爱。','2017-10-10 10:55:32.292128'),(16,'龙猫','导演: 宫崎骏 Hayao Miyazaki   主演: 日高法子 Noriko Hidaka / 坂本千夏 Ch...','1988 / 日本 / 儿童 动画 奇幻 家庭','9.1','人人心中都有个龙猫，童年就永远不会消失。','2017-10-10 10:55:32.298128'),(17,'教父','导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 马龙·白兰度 M...','1972 / 美国 / 剧情 犯罪','9.2','千万不要记恨你的对手，这样会让你失去理智。','2017-10-10 10:55:32.305128'),(18,'楚门的世界','导演: 彼得·威尔 Peter Weir   主演: 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau...','1998 / 美国 / 剧情 科幻','9.1','如果再也不能见到你，祝你早安，午安，晚安。','2017-10-10 10:55:32.310128'),(19,'乱世佳人','导演: 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor   主演: 托...','1939 / 美国 / 剧情 历史 爱情 战争','9.2','Tomorrow is another day.','2017-10-10 10:55:32.317128'),(20,'天堂电影院','导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 安东娜拉·塔莉 Antonel...','1988 / 意大利 法国 / 剧情 爱情','9.1','那些吻戏，那些青春，都在影院的黑暗里被泪水冲刷得无比清晰。','2017-10-10 10:55:32.322128'),(21,'触不可及','导演: 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano   主...','2011 / 法国 / 剧情 喜剧','9.1','满满温情的高雅喜剧。','2017-10-10 10:55:32.328128'),(22,'当幸福来敲门','导演: 加布里尔·穆奇诺 Gabriele Muccino   主演: 威尔·史密斯 Will Smith ...','2006 / 美国 / 剧情 传记 家庭','8.9','平民励志片。','2017-10-10 10:55:32.335128'),(23,'熔炉','导演: 黄东赫 Dong-hyuk Hwang   主演: 孔侑 Yoo Gong / 郑有美 Yu-mi Jeong ...','2011 / 韩国 / 剧情','9.2','我们一路奋战不是为了改变世界，而是为了不让世界改变我们。','2017-10-10 10:55:32.340128'),(24,'无间道','导演: 刘伟强 / 麦兆辉   主演: 刘德华 / 梁朝伟 / 黄秋生','2002 / 香港 / 剧情 犯罪 悬疑','9.0','香港电影史上永不过时的杰作。','2017-10-10 10:55:32.346128'),(25,'搏击俱乐部','导演: 大卫·芬奇 David Fincher   主演: 爱德华·诺顿 Edward Norton / 布拉...','1999 / 美国 德国 / 剧情 动作 悬疑 惊悚','9.0','邪恶与平庸蛰伏于同一个母体，在特定的时间互相对峙。','2017-10-10 10:55:32.353128'),(26,'十二怒汉','导演: Sidney Lumet   主演: 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti...','1957 / 美国 / 剧情','9.4','1957年的理想主义。','2017-10-10 10:55:39.805128'),(27,'怦然心动','导演: 罗伯·莱纳 Rob Reiner   主演: 玛德琳·卡罗尔 Madeline Carroll / 卡...','2010 / 美国 / 剧情 喜剧 爱情','8.9','真正的幸福是来自内心深处。','2017-10-10 10:55:39.810128'),(28,'星际穿越','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 马修·麦康纳 Matthew Mc...','2014 / 美国 英国 加拿大 冰岛 / 剧情 科幻 冒险','9.1','爱是一种力量，让我们超越时空感知它的存在。','2017-10-10 10:55:39.816128'),(29,'指环王3：王者无敌','导演: 彼得·杰克逊 Peter Jackson   主演: 维果·莫腾森 Viggo Mortensen / ...','2003 / 美国 新西兰 / 剧情 动作 奇幻 冒险','9.1','史诗的终章。','2017-10-10 10:55:39.821128'),(30,'少年派的奇幻漂流','导演: 李安 Ang Lee   主演: 苏拉·沙玛 Suraj Sharma / 拉菲·斯波 Rafe Spa...','2012 / 美国 台湾 英国 加拿大 / 剧情 奇幻 冒险','9.0','瑰丽壮观、无人能及的冒险之旅。','2017-10-10 10:55:39.827128'),(31,'天空之城','导演: 宫崎骏 Hayao Miyazaki   主演: 田中真弓 Mayumi Tanaka / 横泽启子 Ke...','1986 / 日本 / 动画 奇幻 冒险','9.0','对天空的追逐，永不停止。','2017-10-10 10:55:39.834128'),(32,'鬼子来了','导演: 姜文 Wen Jiang   主演: 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /...','2000 / 中国大陆 / 剧情 战争','9.2','对敌人的仁慈，就是对自己残忍。','2017-10-10 10:55:39.839128'),(33,'蝙蝠侠：黑暗骑士','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 克里斯蒂安·贝尔 Christ...','2008 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚','9.0','无尽的黑暗。','2017-10-10 10:55:39.846128'),(34,'罗马假日','导演: 威廉·惠勒 William Wyler   主演: 奥黛丽·赫本 Audrey Hepburn / 格...','1953 / 美国 / 喜剧 剧情 爱情','8.9','爱情哪怕只有一天。','2017-10-10 10:55:39.852128'),(35,'活着','导演: 张艺谋 Yimou Zhang   主演: 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang','1994 / 中国大陆 香港 / 剧情 历史 家庭','9.1','张艺谋最好的电影。','2017-10-10 10:55:39.858128'),(36,'大话西游之月光宝盒','导演: 刘镇伟 Jeffrey Lau   主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...','1995 / 香港 中国大陆 / 喜剧 动作 爱情 奇幻 冒险 古装','8.9','旷古烁今。','2017-10-10 10:55:39.865128'),(37,'两杆大烟枪','导演: Guy Ritchie   主演: Jason Flemyng / Dexter Fletcher / Nick Moran','1998 / 英国 / 剧情 喜剧 犯罪','9.0','4个臭皮匠顶个诸葛亮，盖·里奇果然不是盖的。','2017-10-10 10:55:39.870128'),(38,'飞屋环游记','导演: 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson   主演: 爱德...','2009 / 美国 / 剧情 喜剧 动画 冒险','8.9','最后那些最无聊的事情，才是最值得怀念的。','2017-10-10 10:55:39.876128'),(39,'窃听风暴','导演: 弗洛里安·亨克尔·冯·多纳斯马 Florian Henckel von Donnersmarck   ...','2006 / 德国 / 剧情 悬疑','9.1','别样人生。','2017-10-10 10:55:39.885128'),(40,'飞越疯人院','导演: 米洛斯·福尔曼 Miloš Forman   主演: 杰克·尼科尔森 Jack Nichols...','1975 / 美国 / 剧情','9.0','自由万岁。','2017-10-10 10:55:39.890128'),(41,'海豚湾','导演: Louie Psihoyos   主演: John Chisholm / Mandy-Rae Cruikshank / Char...','2009 / 美国 / 纪录片','9.3','海豚的微笑，是世界上最高明的伪装。','2017-10-10 10:55:39.897128'),(42,'闻香识女人','导演: 马丁·布莱斯 Martin Brest   主演: 阿尔·帕西诺 Al Pacino / 克里斯...','1992 / 美国 / 剧情','8.9','史上最美的探戈。','2017-10-10 10:55:39.903128'),(43,'V字仇杀队','导演: 詹姆斯·麦克特格 James McTeigue   主演: 娜塔莉·波特曼 Natalie Por...','2005 / 美国 英国 德国 / 剧情 动作 科幻 惊悚','8.8','一张面具背后的理想与革命。','2017-10-10 10:55:39.908128'),(44,'哈尔的移动城堡','导演: 宫崎骏 Hayao Miyazaki   主演: 倍赏千惠子 Chieko Baishô / 木村拓...','2004 / 日本 / 爱情 动画 奇幻 冒险','8.9','带着心爱的人在天空飞翔。','2017-10-10 10:55:39.914128'),(45,'教父2','导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 阿尔·帕西诺 A...','1974 / 美国 / 剧情 犯罪','9.1','优雅的孤独。','2017-10-10 10:55:39.920128'),(46,'美丽心灵','导演: 朗·霍华德 Ron Howard   主演: 罗素·克劳 Russell Crowe / 詹妮弗·...','2001 / 美国 / 传记 剧情','8.9','爱是一切逻辑和原由。','2017-10-10 10:55:39.926128'),(47,'控方证人','导演: 比利·怀尔德 Billy Wilder   主演: 查尔斯·劳顿 Charles Laughton / ...','1957 / 美国 / 剧情 犯罪 悬疑','9.6','比利·怀德满分作品。','2017-10-10 10:55:39.934128'),(48,'指环王2：双塔奇兵','导演: 彼得·杰克逊 Peter Jackson   主演: 伊利亚·伍德 Elijah Wood / 西恩...','2002 / 美国 新西兰 / 剧情 动作 奇幻 冒险','8.9','承前启后的史诗篇章。','2017-10-10 10:55:39.939128'),(49,'指环王1：魔戒再现','导演: 彼得·杰克逊 Peter Jackson   主演: 伊利亚·伍德 Elijah Wood / 西恩...','2001 / 新西兰 美国 / 剧情 动作 奇幻 冒险','8.9','传说的开始。','2017-10-10 10:55:39.945128'),(50,'死亡诗社','导演: 彼得·威尔 Peter Weir   主演: 罗宾·威廉姆斯 Robin Williams / 罗伯...','1989 / 美国 / 剧情','8.9','当一个死水般的体制内出现一个活跃的变数时，所有的腐臭都站在了光明的对面。','2017-10-10 10:55:39.950128'),(51,'雨人','导演: 巴瑞·莱文森 Barry Levinson   主演: 达斯汀·霍夫曼 Dustin Hoffman ...','1988 / 美国 / 剧情','8.6','生活在自己的世界里，也可以让周围的人显得可笑和渺小。','2017-10-10 10:55:40.428128'),(52,'贫民窟的百万富翁','导演: 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan   主演: 戴夫...','2008 / 英国 美国 / 剧情 爱情','8.5','上帝之城+猜火车+阿甘正传+开心辞典=山寨富翁','2017-10-10 10:55:40.433128'),(53,'看不见的客人','导演: 奥里奥尔·保罗 Oriol Paulo   主演: 马里奥·卡萨斯 Mario Casas / 阿...','2016 / 西班牙 / 犯罪 悬疑 惊悚','8.7','','2017-10-10 10:55:40.438128'),(54,'记忆碎片','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 盖·皮尔斯 Guy Pearce /...','2000 / 美国 / 犯罪 剧情 悬疑 惊悚','8.5','一个针管引发的血案。','2017-10-10 10:55:40.444128'),(55,'东邪西毒','导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 张曼玉 Maggie C...','1994 / 香港 台湾 / 剧情 动作 爱情 武侠 古装','8.6','电影诗。','2017-10-10 10:55:40.450128'),(56,'虎口脱险','导演: 杰拉尔·乌里 Gérard Oury   主演: 路易·德·菲耐斯 Louis de Funès...','1966 / 法国 英国 / 喜剧 战争','8.9','永远看不腻的喜剧。','2017-10-10 10:55:40.455128'),(57,'怪兽电力公司','导演: 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman   主演: 约...','2001 / 美国 / 喜剧 动画 儿童 奇幻','8.6','不要给它起名字，起了名字就有感情了。','2017-10-10 10:55:40.460128'),(58,'疯狂原始人','导演: 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders   主演...','2013 / 美国 / 喜剧 动画 冒险','8.7','老少皆宜，这就是好莱坞动画的魅力。','2017-10-10 10:55:40.467128'),(59,'喜宴','导演: 李安   主演: 赵文瑄 / 归亚蕾 / 金素梅','1993 / 台湾 美国 / 剧情 喜剧 爱情 同性 家庭','8.8','中国家庭的喜怒哀乐忍。','2017-10-10 10:55:40.472128'),(60,'小森林 夏秋篇','导演: 森淳一 Junichi Mori   主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...','2014 / 日本 / 剧情','8.9','那些静得只能听见呼吸的日子里，你明白孤独即生活。','2017-10-10 10:55:40.478128'),(61,'卢旺达饭店','导演: 特瑞·乔治 Terry George   主演: 唐·钱德尔 Don Cheadle / 苏菲·奥...','2004 / 英国 南非 意大利 美国 / 剧情 历史 战争','8.8','当这个世界闭上双眼，他却敞开了怀抱。','2017-10-10 10:55:40.484128'),(62,'黑天鹅','导演: 达伦·阿罗诺夫斯基 Darren Aronofsky   主演: 娜塔丽·波曼 Natalie P...','2010 / 美国 / 剧情 惊悚','8.5','黑暗之美。','2017-10-10 10:55:40.490128'),(63,'喜剧之王','导演: 周星驰 Stephen Chow / 李力持 Lik-Chi Lee   主演: 周星驰 Stephen Ch...','1999 / 香港 / 喜剧 剧情 爱情','8.5','我是一个演员。','2017-10-10 10:55:40.496128'),(64,'英雄本色','导演: 吴宇森 John Woo   主演: 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国...','1986 / 香港 / 动作 犯罪','8.7','英雄泪短，兄弟情长。','2017-10-10 10:55:40.502128'),(65,'穿越时空的少女','导演: 细田守 Mamoru Hosoda   主演: 仲里依纱 Riisa Naka / 石田卓也 Takuya...','2006 / 日本 / 剧情 爱情 科幻 动画','8.6','爱上未来的你。','2017-10-10 10:55:40.509128'),(66,'魂断蓝桥','导演: Mervyn LeRoy   主演: Vivien Leigh / Robert Taylor / Lucile Watson','1940 / 美国 / 剧情 战争 爱情','8.8','中国式内在的美国电影。','2017-10-10 10:55:40.516128'),(67,'猜火车','导演: 丹尼·博伊尔 Danny Boyle   主演: 伊万·麦克格雷格 Ewan McGregor / ...','1996 / 英国 / 犯罪 剧情','8.5','不可猜的青春迷笛。','2017-10-10 10:55:40.522128'),(68,'恋恋笔记本','导演: 尼克·卡索维茨 Nick Cassavetes   主演: 瑞恩·高斯林 Ryan Gosling /...','2004 / 美国 / 剧情 爱情','8.5','爱情没有那么多借口，如果不能圆满，只能说明爱的不够。','2017-10-10 10:55:40.527128'),(69,'雨中曲','导演: Stanley Donen / Gene Kelly   主演: Gene Kelly / Donald O\'Connor / ...','1952 / 美国 / 喜剧 歌舞 爱情','8.9','骨灰级歌舞片。','2017-10-10 10:55:40.533128'),(70,'傲慢与偏见','导演: 乔·怀特 Joe Wright   主演: 凯拉·奈特莉 Keira Knightley / 马修·...','2005 / 法国 英国 美国 / 剧情 爱情','8.4','爱是摈弃傲慢与偏见之后的曙光。','2017-10-10 10:55:40.540128'),(71,'教父3','导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 阿尔·帕西诺 A...','1990 / 美国 / 剧情 犯罪','8.7','任何信念的力量，都无法改变命运。','2017-10-10 10:55:40.546128'),(72,'完美的世界','导演: 克林特·伊斯特伍德 Clint Eastwood   主演: 凯文·科斯特纳 Kevin Cos...','1993 / 美国 / 剧情 犯罪','9.0','坏人的好总是比好人的好来得更感人。','2017-10-10 10:55:40.552128'),(73,'纵横四海','导演: 吴宇森 John Woo   主演: 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung...','1991 / 香港 / 剧情 喜剧 动作 犯罪','8.7','香港浪漫主义警匪动作片的巅峰之作。','2017-10-10 10:55:40.557128'),(74,'萤火之森','导演: 大森贵弘 Takahiro Omori   主演: 佐仓绫音 Ayane Sakura / 内山昂辉 K...','2011 / 日本 / 剧情 爱情 动画 奇幻','8.7','触不到的恋人。','2017-10-10 10:55:40.564128'),(75,'玩具总动员3','导演: 李·昂克里奇 Lee Unkrich   主演: 汤姆·汉克斯 Tom Hanks / 蒂姆·艾...','2010 / 美国 / 喜剧 动画 奇幻 冒险','8.7','跨度十五年的欢乐与泪水。','2017-10-10 10:55:40.569128'),(76,'猫鼠游戏','导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 莱昂纳多·迪卡普里奥 L...','2002 / 美国 加拿大 / 传记 犯罪 剧情','8.7','骗子大师和执著警探的你追我跑故事。','2017-10-10 10:55:47.304459'),(77,'哈利·波特与魔法石','导演: Chris Columbus   主演: Daniel Radcliffe / Emma Watson / Rupert Grint','2001 / 美国 英国 / 奇幻 冒险','8.7','童话世界的开端。','2017-10-10 10:55:47.312460'),(78,'风之谷','导演: 宫崎骏 Hayao Miyazaki   主演: 岛本须美 Sumi Shimamoto / 松田洋治 Y...','1984 / 日本 / 科幻 动画 奇幻 冒险','8.8','动画片的圣经。','2017-10-10 10:55:47.320461'),(79,'爱在日落黄昏时','导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...','2004 / 美国 / 剧情 爱情','8.7','九年后的重逢是世俗和责任的交叠，没了悸动和青涩，沧桑而温暖。','2017-10-10 10:55:47.327462'),(80,'侧耳倾听','导演: 近藤喜文 Yoshifumi Kondo   主演: 本名阳子 Youko Honna / 小林桂树 K...','1995 / 日本 / 剧情 爱情 动画 音乐','8.8','少女情怀总是诗。','2017-10-10 10:55:47.334462'),(81,'穿条纹睡衣的男孩','导演: 马克·赫门 Mark Herman   主演: 阿沙·巴特菲尔德 Asa Butterfield / ...','2008 / 英国 美国 / 剧情 战争','8.9','尽管有些不切实际的幻想，这部电影依旧是一部感人肺腑的佳作。','2017-10-10 10:55:47.343463'),(82,'萤火虫之墓','导演: 高畑勋 Isao Takahata   主演: 辰己努 / 白石绫乃 / 志乃原良子','1988 / 日本 / 动画 剧情 战争','8.7','幸福是生生不息，却难以触及的远。','2017-10-10 10:55:47.350464'),(83,'消失的爱人','导演: 大卫·芬奇 David Fincher   主演: 本·阿弗莱克 Ben Affleck / 罗莎蒙...','2014 / 美国 / 剧情 犯罪 悬疑 惊悚','8.7','年度最佳date movie。','2017-10-10 10:55:47.356465'),(84,'超脱','导演: 托尼·凯耶 Tony Kaye   主演: 艾德里安·布洛迪 Adrien Brody / 马西...','2011 / 美国 / 剧情','8.8','穷尽一生，我们要学会的，不过是彼此拥抱。','2017-10-10 10:55:47.363465'),(85,'驯龙高手','导演: 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders   主演:...','2010 / 美国 / 喜剧 动画 奇幻 冒险 家庭','8.7','和谐的生活离不开摸头与被摸头。','2017-10-10 10:55:47.368466'),(86,'幸福终点站','导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 汤姆·汉克斯 Tom Hanks...','2004 / 美国 / 喜剧 剧情 爱情','8.6','有时候幸福需要等一等。','2017-10-10 10:55:47.374466'),(87,'菊次郎的夏天','导演: 北野武 Takeshi Kitano   主演: 北野武 Takeshi Kitano / 关口雄介 Yus...','1999 / 日本 / 剧情 喜剧','8.7','从没见过那么流氓的温柔，从没见过那么温柔的流氓。','2017-10-10 10:55:47.379467'),(88,'倩女幽魂','导演: 程小东 Siu-Tung Ching   主演: 张国荣 Leslie Cheung / 王祖贤 Joey W...','1987 / 香港 / 剧情 爱情 武侠 古装','8.6','两张绝世的脸。','2017-10-10 10:55:47.385467'),(89,'海洋','导演: 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud   主演:...','2009 / 法国 瑞士 西班牙 美国 阿联酋 / 纪录片','9.0','大海啊，不全是水。','2017-10-10 10:55:47.391468'),(90,'恐怖直播','导演: 金秉祐 Byeong-woo Kim   主演: 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y...','2013 / 韩国 / 剧情 犯罪 悬疑','8.7','恐怖分子的“秋菊打官司”。','2017-10-10 10:55:47.397469'),(91,'七武士','导演: 黑泽明 Akira Kurosawa   主演: 三船敏郎 Toshirô Mifune / 志村乔 ...','1954 / 日本 / 动作 冒险 剧情','9.2','时代悲歌。','2017-10-10 10:55:47.402469'),(92,'岁月神偷','导演: 罗启锐 Alex Law   主演: 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍...','2010 / 香港 中国大陆 / 剧情 家庭','8.6','岁月流逝，来日可追。','2017-10-10 10:55:47.409470'),(93,'神偷奶爸','导演: 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud   主演: ...','2010 / 美国 法国 / 喜剧 动画 冒险','8.5','Mr. I Don\'t Care其实也有Care的时候。','2017-10-10 10:55:47.415470'),(94,'红辣椒','导演: 今敏 Satoshi Kon   主演: 林原惠美 Megumi Hayashibara / 古谷彻 T...','2006 / 日本 / 动画 悬疑 科幻 惊悚','8.9','梦的勾结。','2017-10-10 10:55:47.420471'),(95,'电锯惊魂','导演: 詹姆斯·温 James Wan   主演: 雷·沃纳尔 Leigh Whannell / 加利·艾...','2004 / 美国 澳大利亚 / 悬疑 惊悚 恐怖','8.7','真相就在眼前。','2017-10-10 10:55:47.427472'),(96,'借东西的小人阿莉埃蒂','导演: 米林宏昌 Hiromasa Yonebayashi   主演: 志田未来 Mirai Shida / 神木...','2010 / 日本 / 动画 奇幻 冒险','8.7','曾经的那段美好会沉淀为一辈子的记忆。','2017-10-10 10:55:47.432472'),(97,'谍影重重3','导演: 保罗·格林格拉斯 Paul Greengrass   主演: 马特·达蒙 Matt Damon / ...','2007 / 美国 德国 / 动作 悬疑 惊悚','8.7','像吃了苏打饼一样干脆的电影。','2017-10-10 10:55:47.438473'),(98,'燃情岁月','导演: 爱德华·兹威克 Edward Zwick   主演: 安东尼·霍普金斯 Anthony Hopki...','1994 / 美国 / 剧情 爱情 西部 家庭','8.8','传奇，不是每个人都可以拥有。','2017-10-10 10:55:47.444473'),(99,'杀人回忆','导演: 奉俊昊 Joon-ho Bong   主演: 宋康昊 Kang-ho Song / 金相庆 Sang-kyun...','2003 / 韩国 / 犯罪 剧情 悬疑 惊悚','8.6','关于连环杀人悬案的集体回忆。','2017-10-10 10:55:47.450474'),(100,'真爱至上','导演: 理查德·柯蒂斯 Richard Curtis   主演: 休·格兰特 Hugh Grant / 柯林...','2003 / 英国 美国 法国 / 喜剧 剧情 爱情','8.5','爱，是个动词。','2017-10-10 10:55:47.456475'),(101,'哪吒闹海','导演: 严定宪 Dingxian Yan / 王树忱 Shuchen Wang   主演: 梁正晖 Zhenghui ...','1979 / 中国大陆 / 冒险 动画 奇幻','8.8','想你时你在闹海。','2017-10-10 10:57:41.735901'),(102,'忠犬八公物语','导演: Seijirô Kôyama   主演: 山本圭 Kei Yamamoto / 井川比佐志 Hisa...','1987 / 日本 / 剧情','9.0','养狗三日，便会对你终其一生。','2017-10-10 10:57:41.741902'),(103,'这个男人来自地球','导演: 理查德·沙因克曼 Richard Schenkman   主演: 大卫·李·史密斯 David ...','2007 / 美国 / 剧情 科幻','8.5','科幻真正的魅力不是视觉效果能取代的。','2017-10-10 10:57:41.746902'),(104,'变脸','导演: 吴宇森 John Woo   主演: 约翰·特拉沃尔塔 John Travolta / 尼古拉斯...','1997 / 美国 / 动作 科幻 犯罪 惊悚','8.4','当发哥的风衣、墨镜出现在了凯奇身上⋯⋯','2017-10-10 10:57:41.752903'),(105,'燕尾蝶','导演: 岩井俊二 Shunji Iwai   主演: 三上博史 / 恰拉 / 伊藤步','1996 / 日本 / 犯罪 剧情','8.6','现实与童话交相辉映的旅程。','2017-10-10 10:57:41.757904'),(106,'源代码','导演: 邓肯·琼斯 Duncan Jones   主演: 杰克·吉伦哈尔 Jake Gyllenhaal / ...','2011 / 美国 加拿大 / 剧情 动作 科幻 犯罪 惊悚','8.3','邓肯·琼斯继《月球》之后再度奉献出一部精彩绝伦的科幻佳作。','2017-10-10 10:57:41.763904'),(107,'英国病人','导演: 安东尼·明格拉 Anthony Minghella   主演: 拉尔夫·费因斯 Ralph Fien...','1996 / 美国 英国 / 爱情 剧情 战争','8.4','In memory, love lives forever...','2017-10-10 10:57:41.771905'),(108,'新龙门客栈','导演: 李惠民 Raymond Lee   主演: 张曼玉 Maggie Cheung / 林青霞 Brigitte ...','1992 / 香港 中国大陆 / 剧情 动作 武侠 古装','8.4','嬉笑怒骂，调风动月。','2017-10-10 10:57:41.779906'),(109,'E.T. 外星人','导演: Steven Spielberg   主演: Henry Thomas / Dee Wallace / Robert MacNa...','1982 / 美国 / 剧情 科幻','8.5','生病的E.T.皮肤的颜色就像柿子饼。','2017-10-10 10:57:41.787907'),(110,'黄金三镖客','导演: Sergio Leone   主演: Clint Eastwood / Eli Wallach / Lee Van Cleef','1966 / 意大利 西班牙 西德 / 冒险 西部','9.1','最棒的西部片。','2017-10-10 10:57:41.794907'),(111,'黑客帝国3：矩阵革命','导演: Andy Wachowski / Larry Wachowski   主演: Keanu Reeves / Laurence F...','2003 / 美国 澳大利亚 / 动作 科幻','8.5','不得不说，《黑客帝国》系列是商业片与科幻、哲学完美结合的典范。','2017-10-10 10:57:41.802908'),(112,'发条橙','导演: Stanley Kubrick   主演: Malcolm McDowell / Patrick Magee / Michael...','1971 / 英国 美国 / 犯罪 剧情 科幻','8.4','我完全康复了。','2017-10-10 10:57:41.809909'),(113,'城市之光','导演: Charles Chaplin   主演: 查理·卓别林 Charles Chaplin / 弗吉尼亚·...','1931 / 美国 / 喜剧 剧情 爱情','9.2','永远的小人物，伟大的卓别林。','2017-10-10 10:57:41.816909'),(114,'美国丽人','导演: 萨姆·门德斯 Sam Mendes   主演: 凯文·史佩西 Kevin Spacey / 安妮特...','1999 / 美国 / 剧情 家庭','8.4','每个人的内心都是深不可测的大海。','2017-10-10 10:57:41.824910'),(115,'叫我第一名','导演: 彼得·维纳 Peter Werner   主演: 詹姆斯·沃克 James Wolk / 特里特·...','2008 / 美国 / 剧情 传记','8.6','乐观比一切都有力量。','2017-10-10 10:57:41.831911'),(116,'无耻混蛋','导演: Quentin Tarantino   主演: 布拉德·皮特 Brad Pitt / 梅拉尼·罗兰 M...','2009 / 美国 德国 / 剧情 犯罪','8.4','昆汀同学越来越变态了，比北野武还杜琪峰。','2017-10-10 10:57:41.837912'),(117,'穆赫兰道','导演: 大卫·林奇 David Lynch   主演: 娜奥米·沃茨 Naomi Watts / 劳拉·哈...','2001 / 法国 美国 / 剧情 悬疑 惊悚','8.3','大卫·林奇的梦境迷宫。','2017-10-10 10:57:41.843912'),(118,'非常嫌疑犯','导演: 布莱恩·辛格 Bryan Singer   主演: 史蒂芬·鲍德温 Stephen Baldwin /...','1995 / 德国 美国 / 剧情 犯罪 悬疑 惊悚','8.6','我不信仰上帝，但我敬畏上帝。','2017-10-10 10:57:41.849913'),(119,'初恋这件小事','导演: 普特鹏·普罗萨卡·那·萨克那卡林 Puttipong Promsaka Na Sakolnakorn / 华森·波克彭...','2010 / 泰国 / 剧情 喜剧 爱情','8.3','黑小鸭速效美白记。','2017-10-10 10:57:41.854913'),(120,'勇士','导演: 加文·欧康诺 Gavin O\'Connor   主演: 汤姆·哈迪 Tom Hardy / 乔尔·...','2011 / 美国 / 剧情 运动 家庭','8.9','热血沸腾，相当完美的娱乐拳击大餐。','2017-10-10 10:57:41.861914'),(121,'模仿游戏','导演: 莫腾·泰杜姆 Morten Tyldum   主演: 本尼迪克特·康伯巴奇 Benedict C...','2014 / 英国 美国 / 剧情 传记 战争 同性','8.5','他给机器起名“克里斯托弗”，因为这是他初恋的名字。','2017-10-10 10:57:41.866914'),(122,'上帝也疯狂','导演: Jamie Uys   主演: Marius Weyers / Sandra Prinsloo / N!xau','1980 / 博茨瓦纳 南非 / 喜剧','8.6','纯净原始的笑与感动。','2017-10-10 10:57:41.872915'),(123,'蓝色大门','导演: 易智言 Chih-yen Yee   主演: 陈柏霖 Bo-lin Chen / 桂纶镁 Lunmei Kwa...','2002 / 台湾 法国 / 剧情 爱情 同性','8.3','青春的窃窃私语。','2017-10-10 10:57:41.877916'),(124,'爱·回家','导演: 李廷香 Jeong-hyang Lee   主演: 金艺芬 Eul-boon Kim / 俞承豪 Seung-...','2002 / 韩国 / 剧情 家庭','9.0','献给所有外婆的电影。','2017-10-10 10:57:41.883916'),(125,'无敌破坏王','导演: 瑞奇·莫尔 Rich Moore   主演: 简·林奇 Jane Lynch / 约翰·C·赖利 ...','2012 / 美国 / 喜剧 动画 冒险','8.6','迪士尼和皮克斯拿错剧本的产物。','2017-10-10 10:57:41.888917'),(126,'爱在午夜降临前','导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...','2013 / 美国 / 剧情 爱情','8.8','所谓爱情，就是话唠一路，都不会心生腻烦，彼此嫌弃。','2017-10-10 10:58:50.537781'),(127,'血钻','导演: 爱德华·兹威克 Edward Zwick   主演: 莱昂纳多·迪卡普里奥 Leonardo ...','2006 / 美国 德国 / 剧情 惊悚 冒险','8.5','每个美丽事物背后都是滴血的现实。','2017-10-10 10:58:50.544782'),(128,'大卫·戈尔的一生','导演: Alan Parker   主演: 凯文·史派西 Kevin Spacey / 凯特·温丝莱特 Kat...','2003 / 美国 德国 英国 / 剧情 犯罪 悬疑','8.7','捍卫人权只是信仰，一点不妨碍其行为的残忍。','2017-10-10 10:58:50.552782'),(129,'国王的演讲','导演: 汤姆·霍珀 Tom Hooper   主演: 柯林·菲尔斯 Colin Firth / 杰弗里·...','2010 / 英国 澳大利亚 美国 / 剧情 传记 历史','8.3','皇上无话儿。','2017-10-10 10:58:50.560783'),(130,'枪火','导演: 杜琪峰 Johnnie To   主演: 吴镇宇 Francis Ng / 任达华 Simon Yam / ...','1999 / 香港 / 剧情 动作 犯罪','8.6','一群演技精湛的戏骨，奉献出一个精致的黑帮小品，成就杜琪峰群戏的巅峰之作。','2017-10-10 10:58:50.566784'),(131,'房间','导演: 伦尼·阿伯拉罕森 Lenny Abrahamson   主演: 布丽·拉尔森 Brie Larson...','2015 / 爱尔兰 加拿大 / 剧情 家庭','8.8','被偷走的岁月，被伤害的生命，被禁锢的灵魂，终将被希望和善意救赎。','2017-10-10 10:58:50.573784'),(132,'疯狂的石头','导演: 宁浩 Hao Ning   主演: 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin','2006 / 中国大陆 香港 / 喜剧 犯罪','8.2','中国版《两杆大烟枪》。','2017-10-10 10:58:50.578785'),(133,'曾经','导演: 约翰·卡尼 John Carney   主演: 格伦·汉塞德 Glen Hansard / 玛可塔...','2007 / 爱尔兰 / 剧情 音乐 爱情','8.3','有些幸福无关爱情。','2017-10-10 10:58:50.585786'),(134,'麦兜故事','导演: 袁建滔 Toe Yuen   主演: 李晋纬 / 林海峰 Jan Lamb / 吴君如 Sandra Ng','2001 / 香港 / 剧情 喜剧 动画','8.5','麦兜是一只很哲学的猪。','2017-10-10 10:58:50.591786'),(135,'暖暖内含光','导演: 米歇尔·冈瑞 Michel Gondry   主演: 金·凯瑞 Jim Carrey / 凯特·温...','2004 / 美国 / 剧情 爱情 奇幻','8.4','恋爱是一次神经的冒险。就算失去记忆，也会爱上你。','2017-10-10 10:58:50.597787'),(136,'遗愿清单','导演: 罗伯·莱纳 Rob Reiner   主演: 杰克·尼科尔森 Jack Nicholson / 摩根...','2007 / 美国 / 冒险 喜剧 剧情','8.5','用剩余不多的时间，去燃烧整个生命。','2017-10-10 10:58:50.603787'),(137,'千钧一发','导演: 安德鲁·尼科尔 Andrew Niccol   主演: 伊桑·霍克 Ethan Hawke / 乌玛...','1997 / 美国 / 剧情 科幻','8.7','一部能引人思考的科幻励志片。','2017-10-10 10:58:50.612788'),(138,'头脑特工队','导演: 彼特·道格特 Pete Docter / 罗纳尔多·德尔·卡门 Ronaldo Del Carmen  &nb...;','2015 / 美国 / 喜剧 动画 冒险','8.7','愿我们都不用长大，每一座城堡都能永远存在。','2017-10-10 10:58:50.618789'),(139,'蝴蝶','导演: 菲利普·穆伊尔 Philippe Muyl   主演: 米歇尔·塞罗 Michel Serrault ...','2002 / 法国 / 剧情 儿童 喜剧','8.6','我们长途跋涉寻找的东西，有可能一直就在身边。','2017-10-10 10:58:50.625790'),(140,'荒岛余生','导演: 罗伯特·泽米吉斯 Robert Zemeckis   主演: 汤姆·汉克斯 Tom Hanks / ...','2000 / 美国 / 冒险 剧情','8.5','一个人的独角戏。','2017-10-10 10:58:50.630790'),(141,'巴黎淘气帮','导演: Laurent Tirard   主演: 马克西姆·戈达尔 Maxime Godart / 瓦莱丽·勒...','2009 / 法国 比利时 / 儿童 喜剧 家庭','8.6','四百击的反面。','2017-10-10 10:58:50.636791'),(142,'与狼共舞','导演: Kevin Costner   主演: Kevin Costner / Mary McDonnell / Graham Greene','1990 / 美国 / 冒险 剧情 西部','8.9','充满诗意与情怀的史诗作品。','2017-10-10 10:58:50.643791'),(143,'月球','导演: 邓肯·琼斯 Duncan Jones   主演: 山姆·洛克威尔 Sam Rockwell / 凯文...','2009 / 英国 / 剧情 科幻 悬疑','8.5','2009媲美《第九区》的又一部科幻神作。','2017-10-10 10:58:50.648792'),(144,'偷拐抢骗','导演: 盖·里奇 Guy Ritchie   主演: 布拉德·皮特 Brad Pitt / 本尼西奥·德...','2000 / 英国 美国 / 喜剧 犯罪','8.5','典型盖·里奇式的英国黑色幽默黑帮片。','2017-10-10 10:58:50.654793'),(145,'我爱你','导演: 秋昌民 Chang-min Choo   主演: 宋在河 Jae-ho Song / 李顺载 Soon-jae...','2011 / 韩国 / 剧情 爱情','9.0','你要相信，这世上真的有爱存在，不管在什么年纪','2017-10-10 10:58:50.663793'),(146,'彗星来的那一夜','导演: 詹姆斯·沃德·布柯特 James Ward Byrkit   主演: 艾米丽·芭尔多尼 Em...','2013 / 美国 英国 / 科幻 悬疑 惊悚','8.4','小成本大魅力。','2017-10-10 10:58:50.705798'),(147,'夜访吸血鬼','导演: 尼尔·乔丹 Neil Jordan   主演: 布拉德·皮特 Brad Pitt / 汤姆·克鲁...','1994 / 美国 / 剧情 奇幻 惊悚','8.3','弥漫淡淡血腥气的优雅。','2017-10-10 10:58:50.711798'),(148,'步履不停','导演: 是枝裕和 Hirokazu Koreeda   主演: 阿部宽 Hiroshi Abe / 夏川结衣 Yu...','2008 / 日本 / 剧情 家庭','8.8','日本的家庭电影已经是世界巅峰了，步履不停是巅峰中的佳作。','2017-10-10 10:58:50.716799'),(149,'寿司之神','导演: 大卫·贾柏 David Gelb   主演: 小野二郎  Jiro Ono / 小野祯一 Yoshik...','2011 / 美国 / 纪录片','8.8','仪式主义的狂欢，偏执狂的完胜。','2017-10-10 10:58:50.723799'),(150,'廊桥遗梦','导演: 克林特·伊斯特伍德 Clint Eastwood   主演: 克林特·伊斯特伍德 Clint...','1995 / 美国 / 剧情 爱情','8.6','这样确切的爱，一生只有一次。','2017-10-10 10:58:50.729800'),(151,'心灵捕手','导演: 格斯·范·桑特 Gus Van Sant   主演: 马特·达蒙 Matt Damon / 罗宾·...','1997 / 美国 / 剧情','8.7','人生中应该拥有这样的一段豁然开朗。','2017-10-10 11:02:36.699395'),(152,'春光乍泄','导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 梁朝伟 Tony Leu...','1997 / 香港 日本 韩国 / 剧情 爱情 同性','8.8','爱情纠缠，男女一致。','2017-10-10 11:02:36.704395'),(153,'让子弹飞','导演: 姜文 Wen Jiang   主演: 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F...','2010 / 中国大陆 香港 / 剧情 喜剧 动作 西部','8.7','你给我翻译翻译，神马叫做TMD的惊喜。','2017-10-10 11:02:36.710396'),(154,'幽灵公主','导演: 宫崎骏 Hayao Miyazaki   主演: 松田洋治 Yôji Matsuda / 石田百合...','1997 / 日本 / 动作 爱情 战争 动画 奇幻 冒险','8.8','人与自然的战争史诗。','2017-10-10 11:02:36.716396'),(155,'第六感','导演: M·奈特·沙马兰 M. Night Shyamalan   主演: 布鲁斯·威利斯 Bruce Wi...','1999 / 美国 / 剧情 悬疑 惊悚','8.8','深入内心的恐怖，出人意料的结局。','2017-10-10 11:02:36.725397'),(156,'大闹天宫','导演: 万籁鸣 Laiming Wan / 唐澄 Cheng  Tang   主演: 邱岳峰 Yuefeng Qiu /...','1961 / 1964 / 1978 / 2004 / 中国大陆 / 动画 奇幻','9.2','经典之作，历久弥新。','2017-10-10 11:02:36.730398'),(157,'阳光灿烂的日子','导演: 姜文 Wen Jiang   主演: 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao','1994 / 中国大陆 香港 / 剧情','8.7','一场华丽的意淫。','2017-10-10 11:02:36.738399'),(158,'大鱼','导演: 蒂姆·波顿 Tim Burton   主演: 伊万·麦克格雷格 Ewan McGregor / 阿...','2003 / 美国 / 剧情 家庭 奇幻 冒险','8.7','抱着梦想而活着的人是幸福的，怀抱梦想而死去的人是不朽的。','2017-10-10 11:02:36.744399'),(159,'重庆森林','导演: 王家卫 Kar Wai Wong   主演: 林青霞 Brigitte Lin / 金城武 Takeshi K...','1994 / 香港 / 剧情 爱情','8.6','寂寞没有期限。','2017-10-10 11:02:36.749400'),(160,'射雕英雄传之东成西就','导演: 刘镇伟 Jeffrey Lau   主演: 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri...','1993 / 香港 / 喜剧 古装','8.7','百看不厌。','2017-10-10 11:02:36.759401'),(161,'禁闭岛','导演: Martin Scorsese   主演: 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ...','2010 / 美国 / 剧情 悬疑 惊悚','8.6','昔日翩翩少年，今日大腹便便。','2017-10-10 11:02:36.764401'),(162,'甜蜜蜜','导演: 陈可辛 Peter Chan   主演: 黎明 Leon Lai / 张曼玉 Maggie Cheung / ...','1996 / 香港 / 剧情 爱情','8.7','相逢只要一瞬间，等待却像是一辈子。','2017-10-10 11:02:36.771402'),(163,'阳光姐妹淘','导演: 姜炯哲 Hyeong-Cheol Kang   主演: 沈恩京 Eun-kyung Shim / 闵孝琳 Hy...','2011 / 韩国 / 剧情 喜剧','8.8','再多各自牛逼的时光，也比不上一起傻逼的岁月。','2017-10-10 11:02:36.777403'),(164,'上帝之城','导演: Kátia Lund / Fernando Meirelles   主演: Alexandre Rodrigues / Lea...','2002 / 巴西 法国 / 犯罪 剧情','8.9','被上帝抛弃了的上帝之城。','2017-10-10 11:02:36.783403'),(165,'致命ID','导演: James Mangold   主演: John Cusack / Ray Liotta / Amanda Peet','2003 / 美国 / 剧情 悬疑 惊悚','8.6','最不可能的那个人永远是最可能的。','2017-10-10 11:02:36.793404'),(166,'一一','导演: 杨德昌 Edward Yang   主演: 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai...','2000 / 台湾 日本 / 剧情 爱情 家庭','8.9','我们都曾经是一一。','2017-10-10 11:02:36.798405'),(167,'狩猎','导演: 托马斯·温特伯格 Thomas Vinterberg   主演: 麦斯·米科尔森 Mads Mik...','2012 / 丹麦 瑞典 / 剧情','9.0','人言可畏。','2017-10-10 11:02:36.805405'),(168,'告白','导演: 中岛哲也 Tetsuya Nakashima   主演: 松隆子 Takako Matsu / 冈田将生 ...','2010 / 日本 / 剧情 惊悚','8.7','没有一人完全善，也没有一人完全恶。','2017-10-10 11:02:36.810406'),(169,'布达佩斯大饭店','导演: 韦斯·安德森 Wes Anderson   主演: 拉尔夫·费因斯 Ralph Fiennes / ...','2014 / 美国 德国 英国 / 剧情 喜剧','8.7','小清新的故事里注入了大历史的情怀。','2017-10-10 11:02:36.816406'),(170,'末代皇帝','导演: 贝纳尔多·贝托鲁奇 Bernardo Bertolucci   主演: 尊龙 John Lone / 陈...','1987 / 意大利 中国大陆 英国 法国 / 剧情 传记 历史','8.9','“不要跟我比惨，我比你更惨”再适合这部电影不过了。','2017-10-10 11:02:36.822407'),(171,'加勒比海盗','导演: 戈尔·维宾斯基 Gore Verbinski   主演: 约翰尼·德普 Johnny Depp / ...','2003 / 美国 / 动作 冒险 奇幻','8.6','约翰尼·德普的独角戏。','2017-10-10 11:02:36.828408'),(172,'断背山','导演: 李安 Ang Lee   主演: 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake...','2005 / 美国 加拿大 / 剧情 爱情 同性 家庭','8.6','每个人心中都有一座断背山。','2017-10-10 11:02:36.833408'),(173,'爱在黎明破晓前','导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...','1995 / 美国 奥地利 瑞士 / 剧情 爱情','8.7','缘分是个连绵词，最美不过一瞬。','2017-10-10 11:02:36.841409'),(174,'摩登时代','导演: 查理·卓别林 Charles Chaplin   主演: 查理·卓别林 Charles Chaplin ...','1936 / 美国 / 喜剧 剧情 爱情','9.2','大时代中的人生，小人物的悲喜。','2017-10-10 11:02:36.847410'),(175,'阿凡达','导演: 詹姆斯·卡梅隆 James Cameron   主演: 萨姆·沃辛顿 Sam Worthington ...','2009 / 美国 英国 / 动作 冒险 奇幻 科幻','8.6','绝对意义上的美轮美奂。','2017-10-10 11:02:36.853410'),(176,'地球上的星星','导演: 阿米尔·汗 Aamir Khan   主演: 达席尔·萨法瑞 Darsheel Safary / 阿...','2007 / 印度 / 剧情 儿童 家庭','8.8','天使保护事件始末。','2017-10-10 11:03:29.685693'),(177,'碧海蓝天','导演: Luc Besson   主演: 让-马克·巴尔 Jean-Marc Barr / 让·雷诺 Jean Re...','1988 / 法国 美国 意大利 / 剧情 爱情','8.7','在那片深蓝中，感受来自大海的忧伤寂寞与美丽自由。','2017-10-10 11:03:29.688693'),(178,'秒速5厘米','导演: 新海诚 Makoto Shinkai   主演: 水桥研二 Kenji Mizuhashi / 近藤好美 ...','2007 / 日本 / 动画 剧情 爱情','8.3','青春就是放弃和怀念。','2017-10-10 11:03:29.692694'),(179,'未麻的部屋','导演: 今敏 Satoshi Kon   主演: 岩男润子 Junko Iwao / 松本梨香 Rica Matsu...','1997 / 日本 / 动画 奇幻 惊悚','8.8','好的剧本是，就算你猜到了结局也猜不到全部。','2017-10-10 11:03:29.696694'),(180,'恐怖游轮','导演: 克里斯托弗·史密斯 Christopher Smith   主演: 梅利莎·乔治 Melissa ...','2009 / 英国 澳大利亚 / 剧情 悬疑 惊悚','8.3','不要企图在重复中寻找已经失去的爱。','2017-10-10 11:03:29.699694'),(181,'爆裂鼓手','导演: 达米安·沙泽勒 Damien Chazelle   主演: 迈尔斯·特勒 Miles Teller /...','2014 / 美国 / 剧情 音乐','8.6','这个世界从不善待努力的人，努力了也不一定会成功，但是知道自己在努力，就是活下去的动力。','2017-10-10 11:03:29.701694'),(182,'谍影重重2','导演: 保罗·格林格拉斯 Paul Greengrass   主演: 马特·达蒙 Matt Damon / ...','2004 / 美国 德国 / 动作 悬疑 惊悚','8.5','谁说王家卫镜头很晃？','2017-10-10 11:03:29.704695'),(183,'谍影重重','导演: 道格·里曼 Doug Liman   主演: 马特·达蒙 Matt Damon / 弗兰卡·波坦...','2002 / 美国 德国 捷克 / 动作 悬疑 惊悚','8.5','哗啦啦啦啦，天在下雨，哗啦啦啦啦，云在哭泣……找自己。','2017-10-10 11:03:29.708695'),(184,'阿飞正传','导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 张曼玉 Maggie C...','1990 / 香港 / 犯罪 剧情 爱情','8.5','王家卫是一种风格，张国荣是一个代表。','2017-10-10 11:03:29.711695'),(185,'达拉斯买家俱乐部','导演: 让-马克·瓦雷 Jean-Marc Vallée   主演: 马修·麦康纳 Matthew McCon...','2013 / 美国 / 剧情 传记 同性','8.6','Jared Leto的腿比女人还美！','2017-10-10 11:03:29.714696'),(186,'海盗电台','导演: 理查德·柯蒂斯 Richard Curtis   主演: 比尔·奈伊 Bill Nighy / 肯尼...','2009 / 英国 德国 法国 / 剧情 喜剧 音乐','8.6','生命不止，摇滚不死。','2017-10-10 11:03:29.717696'),(187,'牯岭街少年杀人事件','导演: 杨德昌 Edward Yang   主演: 张震 Chen Chang / 杨静怡 Lisa Yang / 张...','1991 / 台湾 / 剧情 犯罪','8.7','弱者送给弱者的一刀。','2017-10-10 11:03:29.720696'),(188,'惊魂记','导演: Alfred Hitchcock   主演: Janet Leigh / Anthony Perkins / Vera Miles','1960 / 美国 / 悬疑 恐怖','8.8','故事的反转与反转，分裂电影的始祖。','2017-10-10 11:03:29.722697'),(189,'魔女宅急便','导演: 宫崎骏 Hayao Miyazaki   主演: 高山南 / 佐久间玲 / 山口胜平','1989 / 日本 / 动画 奇幻 冒险','8.4','宫崎骏的电影总让人感觉世界是美好的，阳光明媚的。','2017-10-10 11:03:29.726697'),(190,'再次出发之纽约遇见你','导演: 约翰·卡尼 John Carney   主演: 凯拉·奈特莉 Keira Knightley / 马克...','2013 / 美国 / 喜剧 爱情 音乐','8.5','爱我就给我看你的播放列表。','2017-10-10 11:03:29.729697'),(191,'被解救的姜戈','导演: 昆汀·塔伦蒂诺 Quentin Tarantino   主演: 杰米·福克斯 Jamie Foxx /...','2012 / 美国 / 剧情 动作 西部 冒险','8.5','热血沸腾，那个低俗、性感的无耻混蛋又来了。','2017-10-10 11:03:29.732698'),(192,'绿里奇迹','导演: Frank Darabont   主演: 汤姆·汉克斯 Tom Hanks / 大卫·摩斯 David M...','1999 / 美国 / 犯罪 剧情 奇幻 悬疑','8.7','天使暂时离开。','2017-10-10 11:03:29.734698'),(193,'东京物语','导演: 小津安二郎 Yasujirô Ozu   主演: 笠智众 Chishû Ryû / 原节...','1953 / 日本 / 剧情 家庭','9.2','东京那么大，如果有一天走失了，恐怕一辈子不能再相见。','2017-10-10 11:03:29.737698'),(194,'勇闯夺命岛','导演: 迈克尔·贝 Michael Bay   主演: 肖恩·康纳利 Sean Connery / 尼古拉...','1996 / 美国 / 动作 冒险','8.5','类型片的极致。','2017-10-10 11:03:29.740698'),(195,'迁徙的鸟','导演: 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud   主演:...','2001 / 法国 德国 意大利 西班牙 瑞士 / 纪录片','9.1','最美的飞翔。','2017-10-10 11:03:29.743699'),(196,'末路狂花','导演: 雷德利·斯科特 Ridley Scott   主演: 吉娜·戴维斯 Geena Davis / 苏...','1991 / 美国 法国 / 犯罪 剧情 惊悚','8.7','没有了退路，只好飞向自由。','2017-10-10 11:03:29.746699'),(197,'荒野生存','导演: 西恩·潘 Sean Penn   主演: 埃米尔·赫斯基 Emile Hirsch / 马西娅·...','2007 / 美国 / 冒险 传记 剧情','8.6','出门必备：本草纲目。','2017-10-10 11:03:29.748699'),(198,'卡萨布兰卡','导演: Michael Curtiz   主演: 亨弗莱·鲍嘉 Humphrey Bogart / 英格丽·褒曼...','1942 / 美国 / 剧情 爱情 战争','8.6','与同名歌曲无关。','2017-10-10 11:03:29.751699'),(199,'青蛇','导演: 徐克 Hark Tsui   主演: 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ...','1993 / 香港 / 剧情 奇幻 古装','8.4','人生如此，浮生如斯。谁人言，花彼岸，此生情长意短。谁都是不懂爱的罢了。','2017-10-10 11:03:29.754700'),(200,'终结者2：审判日','导演: 詹姆斯·卡梅隆 James Cameron   主演: 阿诺·施瓦辛格 Arnold Schwarz...','1991 / 美国 法国 / 动作 科幻','8.5','少见的超越首部的续集，动作片中的经典。','2017-10-10 11:03:29.757700'),(201,'7号房的礼物','导演: 李焕庆 Hwan-kyeong Lee   主演: 柳承龙 Seung-yong Ryoo / 朴信惠 Shi...','2013 / 韩国 / 剧情 喜剧 家庭','8.7','《我是山姆》的《美丽人生》。','2017-10-10 14:05:43.215296'),(202,'哈利·波特与死亡圣器(下)','导演: 大卫·叶茨 David Yates   主演: 丹尼尔·雷德克里夫 Daniel Radcliffe...','2011 / 美国 英国 / 剧情 悬疑 奇幻 冒险','8.6','10年的完美句点。','2017-10-10 14:05:43.220296'),(203,'二十二','导演: 郭柯 Ke Guo   主演:','2015 / 中国大陆 / 纪录片','8.8','','2017-10-10 14:05:43.225297'),(204,'花样年华','导演: 王家卫 Kar Wai Wong   主演: 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma...','2000 / 香港 法国 / 剧情 爱情','8.5','偷情本没有这样美。','2017-10-10 14:05:43.229297'),(205,'人工智能','导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 海利·乔·奥斯蒙 Haley...','2001 / 美国 / 冒险 剧情 科幻','8.6','对爱的执着，可以超越一切。','2017-10-10 14:05:43.235298'),(206,'我是山姆','导演: 杰茜·尼尔森 Jessie Nelson   主演: Sean Penn / Dakota Fanning / Mi...','2001 / 美国 / 剧情 家庭','8.8','爱并不需要智商 。','2017-10-10 14:05:43.239298'),(207,'浪潮','导演: 丹尼斯·甘塞尔 Dennis Gansel   主演: 尤尔根·沃格尔 Jürgen Vogel ...','2008 / 德国 / 剧情 惊悚','8.7','世界离独裁只有五天。','2017-10-10 14:05:43.244299'),(208,'海边的曼彻斯特','导演: 肯尼斯·罗纳根 Kenneth Lonergan   主演: 卡西·阿弗莱克 Casey Affle...','2016 / 美国 / 剧情 家庭','8.6','我们都有权利不与自己的过去和解。','2017-10-10 14:05:43.250299'),(209,'香水','导演: 汤姆·提克威 Tom Tykwer   主演: 本·卫肖 Ben Whishaw / 艾伦·瑞克...','2006 / 德国 法国 西班牙 美国 / 剧情 犯罪 奇幻','8.4','一个单凭体香达到高潮的男人。','2017-10-10 14:05:43.256300'),(210,'冰川时代','导演: 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge   主演...','2002 / 美国 / 喜剧 动画 冒险','8.4','松鼠才是角儿。','2017-10-10 14:05:43.261300'),(211,'荒蛮故事','导演: 达米安·斯兹弗隆 Damián Szifron   主演: 达里奥·葛兰帝内提 Darío...','2014 / 阿根廷 西班牙 / 剧情 喜剧 犯罪','8.7','始于荒诞，止于更荒诞。','2017-10-10 14:05:43.267301'),(212,'追随','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 杰里米·西奥伯德 Jeremy...','1998 / 英国 / 犯罪 悬疑 惊悚','8.9','诺兰的牛逼来源于内心散发出的恐惧。','2017-10-10 14:05:43.272301'),(213,'朗读者','导演: 史蒂芬·戴德利 Stephen Daldry   主演: 凯特·温丝莱特 Kate Winslet ...','2008 / 美国 德国 / 剧情 爱情','8.5','当爱情跨越年龄的界限，它似乎能变得更久远一点，成为一种责任，一种水到渠成的相濡以沫。','2017-10-10 14:05:43.277302'),(214,'撞车','导演: 保罗·哈吉斯 Paul Haggis   主演: 桑德拉·布洛克 Sandra Bullock / ...','2004 / 美国 德国 / 犯罪 剧情','8.6','天使与魔鬼的冲撞。','2017-10-10 14:05:43.283302'),(215,'一次别离','导演: 阿斯哈·法哈蒂  Asghar Farhadi   主演: 佩曼·莫阿迪 Peyman Moadi /...','2011 / 伊朗 法国 / 剧情 家庭','8.7','只有有信仰的人才能说出事实真相。','2017-10-10 14:05:43.288303'),(216,'小森林 冬春篇','导演: 森淳一 Junichi Mori   主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...','2015 / 日本 / 剧情','8.9','尊敬他人，尊敬你生活的这片土地，明白孤独是人生的常态。','2017-10-10 14:05:43.294304'),(217,'时空恋旅人','导演: 理查德·柯蒂斯 Richard Curtis   主演: 多姆纳尔·格利森 Domhnall Gl...','2013 / 英国 / 剧情 爱情 奇幻','8.6','把每天当作最后一天般珍惜度过，积极拥抱生活，就是幸福。','2017-10-10 14:05:43.299304'),(218,'罗生门','导演: 黑泽明 Akira Kurosawa   主演: 三船敏郎 Toshirô Mifune / 千秋实 ...','1950 / 日本 / 犯罪 剧情 悬疑','8.7','人生的N种可能性。','2017-10-10 14:05:43.305305'),(219,'心迷宫','导演: 忻钰坤 Yukun Xin   主演: 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ...','2014 / 中国大陆 / 剧情 犯罪 悬疑','8.6','荒诞讽刺，千奇百巧，抽丝剥茧，百转千回。','2017-10-10 14:05:43.310305'),(220,'唐伯虎点秋香','导演: 李力持 Lik-Chi Lee   主演: 周星驰 Stephen Chow / 巩俐 Li Gong / 陈...','1993 / 香港 / 喜剧 爱情 古装','8.4','华太师是黄霑，吴镇宇四大才子之一。','2017-10-10 14:05:43.314306'),(221,'超能陆战队','导演: 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams   主演: 斯科特...','2014 / 美国 / 喜剧 动作 科幻 动画 冒险','8.6','Balalala~~~','2017-10-10 14:05:43.319306'),(222,'蝙蝠侠：黑暗骑士崛起','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 克里斯蒂安·贝尔 Christ...','2012 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚','8.5','诺兰就是保证。','2017-10-10 14:05:43.324307'),(223,'战争之王','导演: 安德鲁·尼科尔 Andrew Niccol   主演: 尼古拉斯·凯奇 Nicolas Cage /...','2005 / 美国 法国 / 剧情 犯罪','8.5','做一颗让别人需要你的棋子。','2017-10-10 14:05:43.330307'),(224,'可可西里','导演: 陆川 Chuan Lu   主演: 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L...','2004 / 中国大陆 香港 / 剧情 犯罪','8.6','坚硬的信仰。','2017-10-10 14:05:43.336308'),(225,'梦之安魂曲','导演: 达伦·阿伦诺夫斯基 Darren Aronofsky   主演: 艾伦·伯斯汀 Ellen Bur...','2000 / 美国 / 剧情','8.7','一场没有春天的噩梦。','2017-10-10 14:05:43.341308'),(226,'情书','导演: 岩井俊二 Shunji Iwai   主演: 中山美穗 Miho Nakayama / 丰川悦司 Ets...','1995 / 日本 / 剧情 爱情','8.8','暗恋的极致。','2017-10-10 15:27:11.968280'),(227,'天使爱美丽','导演: 让-皮埃尔·热内 Jean-Pierre Jeunet   主演: 奥黛丽·塔图 Audrey Tau...','2001 / 法国 德国 / 喜剧 爱情','8.7','法式小清新。','2017-10-10 15:27:11.974280'),(228,'辩护人','导演: 杨宇硕 Woo-seok Yang   主演: 宋康昊 Kang-ho Song / 吴达洙 Dal-su O...','2013 / 韩国 / 剧情','9.1','电影的现实意义大过电影本身。','2017-10-10 15:27:11.979280'),(229,'美国往事','导演: 赛尔乔·莱翁内 Sergio Leone   主演: 罗伯特·德尼罗 Robert De Niro ...','1984 / 意大利 美国 / 犯罪 剧情','9.1','往事如烟，无处祭奠。','2017-10-10 15:27:11.984280'),(230,'饮食男女','导演: 李安 Ang Lee   主演: 吴倩莲 Chien-lien Wu / 杨贵媚 Kuei-Mei Yang /...','1994 / 台湾 美国 / 剧情 家庭','9.0','人生不能像做菜，把所有的料都准备好了才下锅。','2017-10-10 15:27:11.989280'),(231,'钢琴家','导演: 罗曼·波兰斯基 Roman Polanski   主演: 艾德里安·布洛迪 Adrien Brod...','2002 / 法国 德国 英国 波兰 / 剧情 传记 历史 战争','9.0','音乐能化解仇恨。','2017-10-10 15:27:11.995280'),(232,'狮子王','导演: Roger Allers / 罗伯·明可夫 Rob Minkoff   主演: 乔纳森·泰勒·托马...','1994 / 美国 / 剧情 动画 冒险 歌舞 家庭','8.9','动物版《哈姆雷特》。','2017-10-10 15:27:11.999280'),(233,'七宗罪','导演: 大卫·芬奇 David Fincher   主演: 摩根·弗里曼 Morgan Freeman / 布...','1995 / 美国 / 剧情 犯罪 悬疑 惊悚','8.7','警察抓小偷，老鼠玩死猫。','2017-10-10 15:27:12.004280'),(234,'致命魔术','导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 克里斯蒂安·贝尔 Christ...','2006 / 美国 英国 / 剧情 悬疑 惊悚','8.8','孪生蝙蝠侠大战克隆金刚狼。','2017-10-10 15:27:12.009280'),(235,'被嫌弃的松子的一生','导演: 中岛哲也 Tetsuya Nakashima   主演: 中谷美纪 Miki Nakatani / 瑛太 E...','2006 / 日本 / 剧情 歌舞','8.9','以戏谑来戏谑戏谑。','2017-10-10 15:27:12.014280'),(236,'疯狂动物城','导演: 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore   主演: 金妮弗·...','2016 / 美国 / 喜剧 动画 冒险','9.2','迪士尼给我们营造的乌托邦就是这样，永远善良勇敢，永远出乎意料。','2017-10-10 15:27:12.019280'),(237,'小鞋子','导演: 马基德·马基迪 Majid Majidi   主演: Amir Farrokh Hashemian / 默罕...','1997 / 伊朗 / 剧情 家庭 儿童','9.2','奔跑的孩子是天使。','2017-10-10 15:27:12.024280'),(238,'勇敢的心','导演: 梅尔·吉布森 Mel Gibson   主演: 梅尔·吉布森 Mel Gibson / 苏菲·玛...','1995 / 美国 / 动作 传记 剧情 历史 战争','8.8','史诗大片的典范。','2017-10-10 15:27:12.028280'),(239,'剪刀手爱德华','导演: Tim Burton   主演: 约翰尼·德普 Johnny Depp / 薇诺娜·瑞德 Winona ...','1990 / 美国 / 剧情 奇幻 爱情','8.7','浪漫忧郁的成人童话。','2017-10-10 15:27:12.033280'),(240,'音乐之声','导演: Robert Wise   主演: 朱丽·安德鲁斯 Julie Andrews / 克里斯托弗·普...','1965 / 美国 / 剧情 爱情 歌舞 家庭 传记','8.9','用音乐化解仇恨，让歌声串起美好。','2017-10-10 15:27:12.039280'),(241,'低俗小说','导演: 昆汀·塔伦蒂诺 Quentin Tarantino   主演: 约翰·特拉沃尔塔 John Tra...','1994 / 美国 / 剧情 喜剧 犯罪','8.7','故事的高级讲法。','2017-10-10 15:27:12.044280'),(242,'素媛','导演: 李濬益 Jun-ik Lee   主演: 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ...','2013 / 韩国 / 剧情 犯罪 家庭','9.1','受过伤害的人总是笑得最开心，因为他们不愿意让身边的人承受一样的痛苦。','2017-10-10 15:27:12.049280'),(243,'本杰明·巴顿奇事','导演: 大卫·芬奇 David Fincher   主演: 凯特·布兰切特 Cate Blanchett / ...','2008 / 美国 / 剧情 爱情 奇幻','8.7','在时间之河里感受溺水之苦。','2017-10-10 15:27:12.054280'),(244,'入殓师','导演: 泷田洋二郎 Yôjirô Takita   主演: 本木雅弘 Masahiro Motoki / ...','2008 / 日本 / 剧情','8.8','死可能是一道门，逝去并不是终结，而是超越，走向下一程。','2017-10-10 15:27:12.060280'),(245,'沉默的羔羊','导演: 乔纳森·戴米 Jonathan Demme   主演: 朱迪·福斯特 Jodie Foster / 安...','1991 / 美国 / 剧情 犯罪 惊悚','8.7','安东尼·霍普金斯的顶级表演。','2017-10-10 15:27:12.065280'),(246,'黑客帝国','导演: 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski   主...','1999 / 美国 澳大利亚 / 动作 科幻','8.8','视觉革命。','2017-10-10 15:27:12.071280'),(247,'拯救大兵瑞恩','导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 汤姆·汉克斯 Tom Hanks...','1998 / 美国 / 剧情 历史 战争','8.8','美利坚精神输出大片No1.','2017-10-10 15:27:12.075280'),(248,'西西里的美丽传说','导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 莫妮卡·贝鲁奇 Monica ...','2000 / 意大利 美国 / 剧情 战争 情色','8.7','美丽无罪。','2017-10-10 15:27:12.081280'),(249,'玛丽和马克思','导演: 亚当·艾略特 Adam Elliot   主演: 托妮·科莱特 Toni Collette / 菲利...','2009 / 澳大利亚 / 剧情 动画','8.9','你是我最好的朋友，你是我唯一的朋友 。','2017-10-10 15:27:12.087280'),(250,'蝴蝶效应','导演: 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber   主...','2004 / 美国 加拿大 / 剧情 悬疑 科幻 惊悚','8.7','人的命运被自己瞬间的抉择改变。','2017-10-10 15:27:12.091280');
/*!40000 ALTER TABLE `douban_movie` ENABLE KEYS */;
