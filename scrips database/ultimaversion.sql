-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: subastas
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio_ini` float DEFAULT NULL,
  `img` longblob,
  `segundos` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Martillo',1000,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\á\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0W\0g\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ýü¢ŠlµsŒ\Ð\0Ï¶¼\çö’ý©<û)|>¼ñ\'5«=.\Îd{h^EûF£\")o&$$ }\Ñ\Ó9$k\È?\à©_ðP¯þ\Ãß³®£2\ê\Ó\Úøó\ÅZuí¿„!†Í¦2\Ý\Ç\åDÓ–dhUm\Ú\â9Yd?8RXñ_‹\Þ#ñ_Š>.\ÜOñ¯\ã%\åÇŠ5_%Å®“±¥»k—6p\Æ\ÄV±€\ÌË·j3m\Ý+ª¶5*[Di\Üû\Ûþñ+\âÃx“]µ\Ñ|\àˆ–­“\\wl˜l-ž\å\Ú\îd FÎ¶\ìÈ¥\äò—nW\æ¿øj\Z|LZ¬ž$¼ð:\Ü\×Ww\Ój¨º\åò%»¿|H$ÆŸf[uQœ ñg\Ä\Ï\Ú[ñÏ¡\Óô;\ÍC\Äþ8†(\ìŸT½PSMHŽ‰\0Š8÷UŠ \"ù›j’\Õ\Ý|8ýŒ|Añ\ÅV³j\Ú\Õ\Ã\æi\'¸C\Z°\nŠ1´\"\í\0`c\0\0\0ç”¥ox\ÓØ¨¯3õ÷þ‡ñK@ñ\\4ðß†õxu«_\Çh.n£ù¼ù.$º—q“q\Ùn8\êFI&¿@«óWþ¯ð;^øU}-œ1ùz¾ù¤	\'Ë½\Ø\ã¯$ñ\'>ÿ\0Jý*®ªj\ÑF2\Ü(¢ŠÐ¢Š(\0¢Š(\0¯-ý³¿im?ö>ý˜üañ+R²“T·ð­¢\Ï’N k\Ù\ÞDŠ|\Â&ùdwm8\Ý\Ðô>¢ÿ\0v¿/¿\à\äÿ\0\Ú\é|ðg\Âÿ\0ô›\Ë95/\Ü\rOXƒ!\æƒO´•3”\Ý\"•`9û$ \rL¥dTU\ÙðO\Ä\Ú7\ÅðQÚ©|]â¹®Å¯PZh­s%ÍŽ“o…(cs±,³•{‚\Ä\Ítµg\ÃY\Ú÷V\Ñl¯!·þ\É\Ð!\Óô#\"5²ym\Öup \ç{\Í3†q\æ$ù\\Kÿ\0\ÅøK\'‰~%i\ìö7½\Ì2¼2’eÁ\ÉV@\ä«Aöj„:O~ÿ\0bx‹O\Z…š ˆ\Æø\'™8‡V$«(\\•\0\æ¹eMÊšIõjrÕ¿DÊ\Øþ	¥o¦¾Ÿ¥\Ù\Ù\Ù\Þ^\ì\Û-\à\Ò\Ç\îIRy%¾R{‚kô\ï\à7ü³\Ã?¼9n5e±Õ®¾þ%Ó‘V/E‹Š¿ðK\ân‡ð{\âN›ð\æhm\í[^‚Ytƒn´b\Ýs*N\Ì\Ü.Öˆ#måƒ«\Ûý\'V_•”ý\rkM\Ó\Ú;úŠ\\\Ï\Þfw…¼¦ø2\Ã\ì\Úm¥œ?Ý‚ŒI\è zÖµ5rúÓ«rBŠ3Š3š\0(¢Š\0(¢Š\0Žwò\âfÁ`£8$\×óûWüTÿ\0†Áÿ\0‚„üBñ†Ÿ|ºÕž±\â\Å\Ò/@aö:h\ì\Ê\ï•>\Ïd)\0ÇŽkúBý¥gÕ­gÿ\0É¡\\}“VG¹kiñ–„lw¦A\Ôd®A‚\ä‘_\Ïÿ\0\ì	û!\ÂQûO®Œ\×>]†¨\Þ\Ù\Ï;m[x\åS·hbw4g\äp3\\ò•\æ¢V\Ñr>òÿ\0‚Bü¼ð4—zÆ¯gq\Ä2e Ü¸p\ê	\ç~‚¾\í\Öõu°\Ócm\Ë\å´^`\n1€\ß6=ö†\ÇNqž:W‹x6\æ†^ºÒ¼oªKqa‘¥¹O6&}\ÆDßµ”œx¸8Á\é¬þ\"\'‹¼/y$…\âE\Ó\Þ\ëVžE\Ú-\ãKH\Ê9\ä€Hs\ÇTvFT\âÚº\Üù_\â‹­~*|uñý¬“6ƒ¤\ÛC¡Z\Ë,-\Zµ\Ô\\\Ëv\êÍÁf¹1’>\é¶\0ñÈ±ð\Ó\ã_ˆ>\êP\Ï\áýZhcÁž%>e½\Ñ\ÈÓ•\ä7)\ç\æøw\íž-ŽFñÃ¤\êZ”¢÷SŠ\Ò0#µ¸•š[‡Bz©‘œ)\É\'#8û\Ã\Ñ,­ô-/J\Òôû‹&;T“È¸\ÞeÀf2+±ù\î-\Î\Ü\0c\Óò\ZØªó\ÅN¼\'\Ê\ï§cô¬=\ZT\èF”£Ì­®\ÇÑŸ?\à ^ñ&ž°ø‰®<9©®\Õt–%†\\ÿ\0:)ùzgp\\g¸æ½»Cñ%‰,#º\Ó\ï-o­f\ÎÉ­\æY#|ppG5ð¬­<cn\ÖP\ÇqB~Q+\"¼*\Ãp\'\Ù\Û\Ê\î\ëÚ£ð\Ô>8ý—5´Ö´F±ž\ÛRe1Lžj:)\r‚¤‘ÀvpO<\×\Ñ\àxŸJ\Ñ\ÆE82\ß\æ#\á\ê7õYZ_\Êÿ\0F}üÜŠüµó\Ãø(D3\é’G\â\Ý-¡Ô•\ÛÙ¨¾YA€	W”·]\Ü\äö\â½\ëÀÿ\0ô?ˆú{]hº•½ôjp\Å2»O¡Þ¾\Ç›aqQ½)¦|\Þ\'ˆ¡+U‹_‘\ÒQM²MQ²\Ò\ÇS¾ºûE\ä\Í|\È\Û$˜´P…P¡cNŠ’\Ç$€\0ôŽ3BŠ( Ÿ}•|5¨A¢[³¿\Ú\Øò\Ö=§qm\Üc\Îx\Å~	\Ý\èš÷À¿\Ùó\ã\ß\Äý&\é\í5[MG\ìš|±©ŠE7×­™\\wXY\Æ\å\ä;£º3ú“ÿ\0tý°`ýš¾\0Ç¤ØµÇ‰¼Q:Cie>ò%4®Bœ\í\à)\Ù*q¸\Zü\ÌøÃ£\ÍñKÀ	>Ù±\Í\ã\Í]|C«¼{w}†5ò\à*\à\ãRñŒl\îŽÁ*\Õ2\ßeó6§kE\í{³¤ÿ\0‚p|Iøµ­ü\Õ5\ß|@ñ†£§x‰‘l,.µ\ËÉ£¶HšA#ùn\å¹`r3Ÿ/\'µ{}\î±y\âo\r\ëZJ\ëÚ”0\ëV\Íiva½tó‘†[\æ9Áö¯Uýšÿ\0d›\Úò\â\Ò\ãP¸·ð\ï†þ\Ï\r³Ù¾\r\Ï\Ê\Ê\á·|¯\n8\ç¸5\í\×?ðK\ß\0\Í\0_\í/nÀŒ°œÿ\0\ä*\É\à\çQ^r³}þ±?r7±ðn“«\éž\Óu€—\×\â\â\Æ%»€\Ü?›g#Ì§,U€a»Ô·@Mt\Ú\Å\Û]o\Ã1\é\Ó^\\[>Ÿ˜öý´B[\rÀa¹-\èsœó_ex¿þ	\ã Á\áˆ\×C\Ô5Ô¬\íš,†œŒ\à(\äeˆ9,q\Ô\ç\æ_þ\Å\Þ$ð&¯uö\Ý&ú\â6vcu¦\ÍÈ§¦¹úü\àW\Â\æ\\\'‹„\Üð¯š/¦\ÌúœPj\Õ\×+üø™.‘a¦4sI4\Ó\Ç-±¶²œü¤œ.Ý¹e\Ï^G$W]\á?‰ŠEÅ½ò¦¥\r”ˆ\ì—W\É-ór­Ï˜\Ä6¤\å±Ò¾z\Õ|7¨i—Mgc$rM1E2y2FT\nœ…\Ý\É8BpI<f¯\Ø|JŸH¾´]R\ÇËž4\Û\æo–l\ãƒ\ÇNaœžG¤q8Y{:±k\Ôõiý_¹©Jþ‡\ÑW^ðßŽ5¸\ïZ\Æ\ÇG’\ê‡£²\ÄÉœ\îUlµT®@=\È~µ\à¯xF\äðý\åò¬†P·\ÚCIð…,\æ>[I\êsŽk\Â­\ÖÉ ]°~ðM\æ\çkA\Ï8~\È\Ï\îŽs\ÛZ|U_\Ø\Þ[¬1\Ü\\#*ù\'dƒi¸6p\Øb¨!^9æ³•JoU\î¾\è¼Ž›®\Ì\è~þ\×-øm-ô:Ü“k\Ú|n»¼º-[$\Ûy*0\Ù\íŽõ\é>ÿ\0‚‹\è7º¬v:ö‹¨h—>\Ø\åY\Ò\â\ÚE\Ïˆ\ÉÁOZó;ýwKñs.£¨Y\Û\Ç\Ò$~f˜¦$¸+Á\È`~\î\à0vtdñ\\W‹|hÖ‘i6·Q\Ü*\r‚\Ò]\Ëp>b\0WÛ´\ã\ê§¥G:\Ì0\ÑN”\Ô\ã\Ùÿ\0W9je¸<D­R<²ò\Øû\×\Ã\ßt\ÈË¦\ëZ]ôŠ2R\Þ\é$`=HS‘×½ù»x¿\Ù÷R5\ì—_g„ùFa\Ù‡ð0¹\é\È\ã\ëÔ•\ëS\ã«+T¦\ï\å±\çÏ„•ýÚšzû7xþ\ëþ\n¡ÿ\0 Õ¯¼X·\Z—…þ\Øj0\é\Ú}\Ñ\Û¬?hò\ÕsÑ\Ó!brYc!²Nk‹øñj\×\â—üº\Þú\Æ\Ílô=mR\ÓM²DXãµ†;K\Ï-T\n$f8\Ç9\'©$\Þø[\á\roöO7t\Ù<Eg\ã¨Æ›«\Ú\Þ\Í\n\ßZ[¼‡{\Ù\Î|°§nU’M\ÙSwV_ü·\á\î±kñ\Å^*Ô¬[þ\ÍJ[h„¥pfŸ0\Ô\Ò×¦>µõ\Õj&\áüÏž§u)3ösö<øua\à/‚\ZJ\Ú\Û\Ç\×J\Ò\Ì\Ês½¼\Ç\çõ5\êØ®g\á•6‹ð\ëKµ¸Ëš(¾e\È8\É\'ú\×M^Á\çS\ÔôKMav\Ü\Û\Ã:÷¹«”\Z\0ó?þÉŸümq\ç_xz´pD°\Í$.¤t «F>•\ãÿ\0¿\àún½¡Ñ®¤Y\ã—\Í&\ä´\î\ØS€Y²\ÝO¯òú§´»A\éX\Ô\ÃÒ«üX©z«šS«RŸÁ&½4?+~)~Îš§\Â]UŒ\Ö\íCTº€3\0¥™~ebN3\ÙHô\ë\\\Ûx›[ð\ã\È&ý\í¼Ò‹„mó\"PNÖ‡Œ\0\0\è@\è?\\®-–x\Ù]C+{×|Zý‹ü%ñ.!³m?RU>UÅ³\Ø\ï\ï\ÐûW\Í\æ/‡¬ù¨û¿Šÿ\0€{X^ ­Mr\Õ\\Ë¿S\âüZó\îeFkYX`þTùqJÊ½a\n#\Î\à\Èw{ž:\ëµ\Ìv\rx\Ë$—n¦+™a$p\î6¾>h\ä\Ý÷›$«ƒÀ\ïŠ±Ÿ‰¼!©¯Ú´««‹VS\å_[”fˆŒ½ca\Ã±GLz×‹jzF­¥\Ì\Ël\Í\'\Ù\Ãl\åº·V_•“\'<¹\à\àžk\âñù.+ý\è\é\Ýl}>0\Ã\âvv}§|;\áÿ\0üD\Ô§’O\n\Þ\Æ<§’?\ÞC(VpU•›;¾X\ÎI=[œaT¯ž´_‹1»yz§—„Ê²B\n»\çkd(û\Üz7AŠ+–8š÷\é«ý\ÇL°õ¯\îTi}\çµþ\Û³Zü,ñš½‹[\Ïa©\ÊÒ‹}›\r¹bÄ\ÎtãŽ•ÁþÂ¾‹[ý§´{ul7\ÆY&g\0\çÊŽI€y\Ã.q\ÔûQE~½\ìc\í9ºŸ›ûIrXý7QKE\ÔbQE\0QE\0QE\0G$:•e\Ü=\ryO\Åÿ\0\Ù\Âÿ\0i¦µ·µ»“Ÿ:8~mÀpzcõ¢ŠOU¨]­‘?h\Ï\Ù\ï\á@_2\æ\ÏYY\\l”F }£ +/!±Œ\ä‘ú\ÑE\äU\ÈpU%\Ï(jz”³|TcÊ¤ÿ\Ù',300,'en subasta'),(2,'paletas',1000,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\á\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0o\0g\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ú\â\Ùÿ\0\ê¥{|þ#Ê´f´Ï¿9¦GhGÞ®9½M\"Qý\âG=*\Äv\Û@<\â­y \É\Ô)#œT\Ó\Ïmce’8û’\îë“\\õ1¦¯\'chBR|±We5´óGz•m6s\ÇLŠ\äuŸ\Ú/\Â^\ïÎ©p\ÇUŠ‰\Ø}pp?:Š\Ú\×Qù­ô}J%=<ôT\Ïáº¸#œa¤ùi\É7\ä}¾W\á\Ïã’•4¬úµc·[5\'ù\æY*œcñ®6z}¬FKˆàµz³\Ìù\ÕXÿ\0kG?—u¯iö²\ã\×Qñÿ\0W]<W2=œG„GFó£oš;“c½yùqÞ˜\Úkª>ø\Í\à\ß\Ê\"\ÓüI¡\ÝL\Ã;ú2ß–\ê\ê£\ÓVxH\Ù&ŽOº\èw)üG\Ñ&®Ï‰\Çd8\Ì$œ+Å¦Ž}-”\É\ÏËƒ\Ójd·_^½½+R}8gý_9\Ç<TOa´£mhpqvfsXÜŠ+C\ìÛ“ø³\íEhf6i#Q\ËòŒŸj§}©GcI,Š‘ª\ä’:\n\æ~ üL±ð.‹-\Õ\Ô\Ë–3’k\Æañž©ñ«R[¥ia\Ò\ä}©BP?\\:\×\Çqwa²\Ä\×øž‘][=§+©Ä¬==÷~‡§øŸã¬ò.›¶\âHÁ\Ü\ç*±Œóƒ\íÒ¼o\Æþ,\Ö~\"j²»™,ß†ý\éTðjˆ~9\Z¥ü~ð\Ô-5ìºiD‘ŽŸN}…Fþ\r\Ô4&;[‰Ug›g\'$\çñ\í_KŒ1\Ù\Ö!KÚ‹µ¡4\îýO\ë?x)Ë¥\Z¸¨ó\Özò½l®µ3´\ïøwÁ\ÑI‘Û¯\ÖM„\Å	=\Ç\ëš\Î\Ö.¾*ø\ïz\é:M¶‡i.wWWj\ÎAÀ\Î\Õ\äw\ê{Vµ\×\Ä/	ü#ƒeŒ‹ªj³Œñ\ÛÖ¼\Ï\Æ\Þ7ø…ñ‡Yš\ßAºþË´”|‘Án²8\æb8Ï±\ï_°a«\ÓË¨scd©G{]O\Ðø“Åž\È\Û\ÂÕ¯Sùc\ïK\î[g\Æ\ÏÙ£\Äö\ÚL“xƒ\âø·r\"	,‡òßŸ_Ò¾x×¾jš&¥,v^*Ÿ]U Yd‹ c\Ç\ã\é_RiŸðL\Ýs\ÄEg\×<Yü\r»—v=xSÌšÝ²ÿ\0‚pjZ-ºÇ¦ø²Å¶\äª\Ëi…-\ÏR¹®Œ/‹ü)ƒ\ÒX†ß”Sù“\Ä.:Ì³¸µ•\à\'g´¥Q\Åý\Èù+Eø‰}à¹‘µ»MR\Þ\0»9\Û\rž\Äg\ïŸ¿l-[@gIñ¶±(\ã\Þ\æòY¡úcŒ\è+sYýž~#x\Ùï´›\rSO\å[È˜c\ë\ë\Írúÿ\0ì³¦ø\Ý\Zñ´[V“þZDÅ¸\r¼…8\è=?:÷§\â\ÎU‰‡6\n¬_“Kó?“3*|YF«XÖ§\ïw8£\ïO‚ß¶½ŸŽ®-\ì|Em™4À,Wq\ÈZ9›Ð€¹SùzöÈ¦ŽúšÝ–H\ä•—\æ\È\ìs_•¿\r|/©xO]þË¸š]6ó ”\îŠS>R\ÜþZú\Ûö{øÍ«|.\Ó\Ò\ÏU¶–\ãK™Á/\Þ!aˆï»\ÇlW2\ìUu‡«js{.ŒúLe›Q¤¥˜Gž“ÿ\0—‘[yIN¹\äóô¢®Yu[H® x\ä†uØƒÈ¢¾\Ùj®}:—¼\Îÿ\0ÿ\0\æøµñFðÝ½\Ä\ßg¸¹q†\ÆPdc¯½z\×\Äo\ÚüøF\É\"¾¸´hm—`\ê~QŒc¹\ì;\×\Éß³‰O?h{©[t~•ƒý\Ý\Ùü+\Ô?o\ß\Ésû@hz/º\ßJH¤’0Þ»[úWó‰xVa\ÄhT_»Šo\î\éó4\á~,¡ƒ\ÃcqIûÐ’Š=[\à_€lü	¦\ÜkZ’–š;f–Y¤\åœðzŸ¥|\Çñ\Çöˆ\×>*|pÕ¬tK†·Ñ­fXKG!^Š¼q\Øö¯¤¿l\ï7‚?e´k\å\Ü\ê’FŒ\ê€\Æ\ÇúW\Í³Oƒ-\íþ\Zj> ¼ò\åº\ß$¤7ñ`õ?Î½xi\ã±x¬\ÛnD\Ôbû«Xýw\Ä,\Í2Nþ\Ô\Ë\çj•Ú5\î\Òk[\Z°\'\ÂR-½\å\â­Ä£,Á÷\ÅÓ¹5\×iÿ\0´ ðÆ‘¯‡´ûx£Œ`\ÜÎ¸2Œ’[ƒž¿¥x‡Ã^x\ë\\mRøyI1#,jq\Ç\ëÖ½/BðMœR=Ö \Íq.R£‘\Ûô¯g\ÄŸ\rF¢–e\'9\'K½R?”<9©Ÿæ™Ÿ\Ô2x©b&ý\ê’÷šZw:7â§‹ü\\¸†y˜ž?s*õ\ÍI{\Å\Ö\Ó\í?òÍ£fýCq]§ƒ~\Z\ßx–\ÛÍ¹o±Ø¢‚,®oJ\ÜÐ´\np\é¾$¸ƒWŒ€bûJ\ÈA<Œ¡ö¯‰\ÃðŽ3I\×\Â\á —iuÿ\0‡?¹²_x“ˆ­™¹UZµd\×\Ìóþ\Ò>9ð–¦¶þ\"–\ÚAŒ\\\å¹üN:Ö½E5\éq\êöö±\Åq:\å„+ˆ¤\Çb=\Åm\Øø*\Ç\ãi»ðÎ¹c:…¸Þ’l‹}\Ü\äóŽIâ¼›Oñsþ\Ìÿ\0§ø}¬3Gle°žl*NŽñ\Î:GµyyO–fõ§—Õ‡°\ÄG¢\Øû®©‡\ÅbI\Ä ª\ÛÝšVRò·s\Ò/|\r ~\Ò~–\Ö//Nñžžm¼\Ñb6W^6œsŒ‘X¿5«ï‡šýÇ…|Wmuk òüÏ™fˆðg±ÁüA«ÿ\0ü&ÿ\0uM/Æ¾Y\Þòe‚ò\Ü±\ç8ü1ø\Ô4¿ø^Ÿ\n4\ïè»­um	^ ƒ–k\06\Ç\Ô×\ä8\ì«õ,TŸ#\Ö2\ë\Ó^\Ý2ð»†©Ï‡_¸«u¶‰ök½Ï¥¾\Û\ÜxGQk9nÆs\ëB\í“\Èm¹öŠ\á¿eÿ\0ŠPüYð¼þ\í®m`\Ñg-\ÎóŠû¼‡ÅŒN.a*‘º¿u\Ðü+8ð\ïƒ\ÅÊ„=Ôº˜ß±Ï‰>\Ãñ*m\í\"\ÉkpsŸ÷”J\íþ?ø\éõ\ß\Û>\ê+š_.ÌØ«D+Ëµ‹3ðƒ\âU®¿c¾\"9\0\Ç\r»=0{}+®ý§´¹5»¯ü@\ÓW÷†-·gwle\Û\Ãx=…E\Ô\ÈpX\Ú\ÔñõWº\×+þ\ëz„ñW\ãð9\äò\è\éK¯	tr\Ý/[\è}Añ–føƒ\àME›o\Ùd‰‰\êB\0>¸\ÍyY\Ñ\ï>|6ñvŽÑƒ,V3ˆ†3´˜\É~Æ­ü9ø\ÃŽ>ŠEÖŒ\Évc`FP)V\äqŽ}{W´øO\ÂzOÅ	\Ù\ê1\\\\E\å»m;_i+‚8`¥<—.|5‹”!\É=t\Ù\Üþ§ð\Ç!¡\Æ\\.Í½\ÜN\ZoGº]¦¶>MýŸ>\'X\ê\Z\"\ì(­\äªäŒøÿ\0=«°\Ò|q5ž³omqµ¼21¹[{“»Žz\ãµRñüSÄž\Ö$\Ô<}j\Ü\Ïm+/9Kw\ÅT±ý—~(A\Û\ë.\ÍW\å‘ÿ\0D5\çñW\å9\Õ¯V­\ìõWMis\å8\'Áž9\à^ žc‘Q…zrV³v\Ñþ§\Ñ_¿h}\Ã\ßo4ý\"\â9/¯!X)\Ç\Ù\×°>¹\ãõâ¿±oƒ5+\Ï\Ùj,\Ò]·\Ú\Ë\Ë<ƒv\å\Ãw?^Õƒ¢þ\ËúÆ­«ÿ\0§x¢,’ì¬ª§\Øg¯jú\à\×Ã½CÁºv6B{–$+ªÝŸ©Àþµ\ä\çq\Ãù~`\èO™\Çy[·E\äTpž]Ä“\Æ\Ï6\â:±£[*qwKÍ¾¬ô\r/Æ©\'\í2\ß`ù£ŽÔ–\ãõ‚¼[þ!§\Çk\ã/ø‚«|±\åÿ\0‰Š\í_\å“^\ëð\ï\á\n5Yµ{©ck‰i`¹*:\ã5óŸ\íK\ãAñ\ï\ã„\Ö{c’\ÇJm*THv\r\Ù\ÏNx¯\çŽ\Çmñ\Ôq8Ujm\êÿ\0\Ôü{\Æ>5ÁeX¨\æxg~GÇ»ks\×>üK\Ô>-~\Ì\×1\ëÿ\0½´q)\×\æ»€v\ßð|8×¡‘£û\r\èù‘—Œ\í?\â+\Ã~øõtÿ\0ZøV=Å¦¹Kg\Îrv“Ÿn0kÖ¾$x€|;øWšenµ-\ážÀª“Ÿjý\ïŽò*U©J2W”ZK\æI\ä¸g95olÔ­Û­\È`\åo	üFžY­­Å”€\äpF\å#¿­\ß|ð\'ö‰»A@ Žœ…ù^c\Ã4)\Ö\åšW²>w‰2\Ü-lt¤—e÷\0ø“Ápx 6™z¢5\'|Nü\ìl\ã \ê=Ö¯hþ»\Ðü7‡uKV»\Ò][\ìÎ¸_+$’AõÁ\ä× |møe&š<\èQÕ\à¨Ç­s>4/….£\Óõ«´Zy›•\'jjý\Ë/\Ï\'ƒ¿XKFž\Ç\â\Ü+ˆ°´òŒñZ¤59\ì\Ó[+™~Î—7K¢\Ü}®I¡1IP®ŠH\É\ä\á»Æ»O\Þ|Nø7¬5½Ž–u\r¥2,\n\Ð\ç\æ`9ù‹Æ½c@øcáŸˆûo<#yg¦\ë1®ñ\"H$ŽQý\ÇQ\È\äŽý«/ÆŸ<ið‚\æk=S\Ã:…úZ\à­\í¤Nöò®3œ\ã°\àç¸£4Ì•L+‡3ökTÖ­y_sú\'$\á»Šú\í£]\ÆÒ¶œË¿gsR?Œž \Õm>}K<X\Ê\Û@úgŸ.Ÿ\â?Š7-m\ä0ƒ\Ô	Ÿ\Ç¼ÿ\0Iý eñæ´«¬F\Ú~›\ÜûÌ§\Ó5ô/\Â/Š\Zÿ\0Â«Ë«û·‘­\ír\n®\å\È\Ë\Ï\ã_\Ï\\m\ÄX\ÕzXG)G»\Ûð6\ân&Y^\ZV†±\Þ]\ÎcÁ?\rü; k+þ³—E~e€‡¿9=+\Þ<ðò+½%$\Ò/,\äL\ä1‰O?|Ã©|3ñ7\Ây¿\á1[Øµ¸n,öS€\êŠü\ï\èH½¸«ðüjðßŒ­LËª\êžÕ—÷s\Ãc¨ˆ\áÏ®ÌŽØ¯ÍŸ\ãó9Æ¥*’œ\ít}¬\ì\Ï\ä5ñ¦†»£ˆ¯y\Ù;m¿c\Ú~:C†|#3]\ß-\Õ\Ô\Ä\Ç~f$>S\Å|s\ã8\íþ\Ãy¬\\;Cx[\ÎÙ‚\Å2xÇ§cÚ»\Éõ\r[Ä—l·^8\Óa³\É!‰I$9>\Ç\ë\ÍygÅ‘ \éZœže\ä\Ú\Åò\à,ÿ\0\ëz`®>\\òy\ê1\íŠþð‹\Ã:9mUŒjVZ¶Õ¾HþO\Îø\Ë2\ãlÚ–÷#%dºy¶/\ì\á\íSÇŸ®µýk|:F•\ÜfB0ò\ìqŸZú+V»‡\ã\ß\Åh\ã\ÓY_Dð¿\îÝ‚ü³\\–__—\Ó?z¼oà¯ƒü[ñnÁ|7£\é—\Ðd\Ú\×WeJ™\"û¥Cc\ç$Jú\Ã\áGÂ½\à„¡\Ól\Û.÷Œ\êwd8ó\Å~‘œJ5*Jr\Ú÷ûõ\'„+G-\Ê(\Â\í¸B\Ú\è—vu\ÖZLš¤öz“m¸XÌ’2· (ÔÎŠ\ï¾ü6\Ìú¥ä›µ\È\Î\ì¸	ò•ñr\È~¹\'ˆ\Änöô\è~\Å>*{,\Ætð^ô—\îúŸ:üHøs£\Z5Ç¿\ãþ5ó7\Åß€“Gu4ö\Ëó*\å@Ž+\ï­k\Ã+wA\ç<Ž•Áx«\á’\ß<£\Ïœtý+\Ð\Æ`Z»^\Çp9‹§$Öu??|+\â_\áN²·\\M¥É‚¦T\å[œò1Ž\Õô\ç\ÂÚ·Xñ†­\ío›¬+f3+¬\Ù\ÈÁ\ÈÀ\éŽEh|Dý›\íu«&F·\r¹º\í\ï\í^K©þ\É7šn¬\Ói·—V2d>cm¸#ð¯’\Åå¸ºqsÀ\Ôt\å\Ût\Ï\Ø238\Ñ\ÄZ¬\×\Ýz2¿Ç›­.Àþ\ïH²\Èù\Ä*¸<\çµx­ñ^ox¾\Æk˜ôù¥y\äô\È\ÏÖ½ÿ\0\Å\Þñ6Ÿ£ÿ\0¤j3G€!\' w¯!‚óø¯\Ål×²¼\Ï4»\àƒ \0sŠóp8<T\åÍ˜\Æ<©\Ýòõ=\î6ñ\ZC“\Õ\Ê\áOh¬\äº™ñ\ã}¯ƒ\Z\Ó\ïMòj1\ïC;Ë‚yû»±\ë\\D;\Ô<s|³Zøf6¸“\å2˜F\â\à þµ\Ùø‹þ	\×wû=\ßiú‹\ß\\\ê\Ún¤@HS&H\Î7r6 \ÇÒ»\ïxoVÒ¬\ã‡O±’\ÚFSi\ï\Ô\ã5úF2É¨¤ðd¼äµ¹øÿ\0xÁ’\Ã,G\â\åV}®\í\èr^ø\âzô\ËT\Óba\ÈdŸ¯Zô\Ïþ\Ê^\Òo#¿\ÕÕµ;ˆ\ßq\Ù\Þýý«¶\Ñ|\â\ryü¹¼«u\á·F\ãù×¥x\àJ¤q\Érò]I\×s’\Ã<ôý+º|AŒ\ÄC\Ù\Æ\évZ#õü,¼:\áxód\Ø4\æº\Û_½•|)\æ\Þ[\Çc£\Ù\Çkj¼7”›Tg\×ô\é^Ÿð\ë\álv¬—WH·7\n\ÙW+\Â@?­oøSÀ\Ð\ée\Ü`p@\Æ+±Ó´ø\í\âùVtðóŸ½W\î\è~yÅž&c³(\ËG÷tû.¾¬}¥¸¶‰Gp=(©z+Ò=\Ég\'\'vpe\Ãdª—\Z<sœ0>ø¬¸SQ·6?:SÜˆÔ’g\'©øR¡¡ˆ\è1\\\î­ðú9›\Ëý+\Ò^%q\Ç5J\î\Û\ålò1\\up\êKDu\Ñ\Å4Ï›þ-x[IÀi\ÜG¼\Ö\Ã\á¢\Ùi²^ym\Ä\êzq\×\ë_J|J²Yl\Õ~U\äœb¸_\é1\Ø|>Üª75\Â.q\ê\Õ\ã\â0v§&{X\\d¹\ÔOTñÿ\0‚\×\Ä\Þ\Z\Ñ\"eW…m¥{\í\Çõ¨<?ð’8`Q\åÆ»¹ /Ö»\Ý7N:†Ÿe•V\Û#=¸®ƒN\ÒP«\ÓÒ«\'À\Å\ÐRgF;3œ\'\ì\âÝŽOJð$v\Ò«\Æ8\Òiz2[Æˆ±·©\ÅkÃ¦¢7¿rj\ÊZ…Ö½\Ú8xÇ¡\à\×\ÇJ[²;nùú\0*â£ÔŒ\Ç\É\î8\æÚ·Z|ª6ÀsEF²\ï}¹ý(ªŽÄŸÿ\Ù',350,'en subasta'),(3,'caballito de juguete',20000,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\á\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0q\0f\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ýü¢Š(\0¢Šb€\Ûz\×\ÊðV\ßø*\ç‚\à”³›x·^[=sÅºÌ‚\Û\ÂþkÖ´¸ñ«$B}²,Ryq\Ãžc».Ñ„L‡•Oø*ÿ\0ü\Ç\á\Çüs\àÝ¾·\âô¾\Ö|Y\â+{¦ð§†­b™$ñ\Ö\ín²¡¹¼V\É\ÚagyH;7IXl?\Ê7\í¥ûk|Pÿ\0‚ˆün\Öþ$üH\Õ\îµ\ÍJnR\Þ”ižµ-ˆ­-b,\Â\0\'s¹gvyYÜ¢e+?n_\Û\ã\â\çü[â¦¡\ão‰\Þ%Ôµ¦ûl²iúdsHš?‡V`£È²¶,\ËoHbRyy< ò¼¹\Î\ì\Íû(j´¿†¼Q‹5¼ZÆŒömn÷\ë	<\Ý\ê\ÅCu\n\Ý<¨	¯Xÿ\0‚Uü1\Òþ:|Tñ—ƒuø>Ù¢\êžžf‰‘_\ì÷,0\Ås`Ág.&	&2»\Ûƒö\Ï\ì	ÿ\0ÿ\0¾ý¦ñƒj\ÚÖŸ¯®½sn¶\Â\ÞÕ£e†&÷1\Ã7šrƒ!B\çsn\Âù†aì”¡‰[\æw`ðN£S{j|/ûø@üø¯\âxþ#xN\âö\Ú\Ö\Ì\è\Ó\Ø\Ïs!’`’1I	)‘>\é\'‘\Æ~„ý’ÿ\0d½O\á“«_Y4Ú´\×\×8¡X\Ü[(=\Ñ\î![s9!]‡+‚@\ÈûwÅŸ\0|/ñL’R\Æf¨\ç#¡\Æ{U\ßüµð–%¼\×_k’g\ËH!	œÁ½sÞ¾wŒ©^z\ék£\Þ\Ã\à\éÑ\×Ä™õ/¿Æ­~\×\áüð\æ\ÕMþ¶—62ù\Ù\Â\à\Ì2\ãh\ß4Ö‚»÷…y)\nk\ßþü\Ðþ\nøV=Âº=Ž¥ù²\ÜI™šG9g%‹1#\'\nª¼(\0c~\Ï\ÞŽ\ãöŒø\Ó\â?·µ\ì3\êzv‡¸\ÉX>É§\Å+\ç»\Þ8\Æ0\n““»\ï\Ú?ög?ü¾›«M\áŸ\érµÎ­Ú«¥Öœ\ì\0’0ñº6\É#\Ý.\ì«”´¶Ô¤ý\Ó9j\ÝTµ\ès?µ\Ï|\Õôý{Pñ×‰þk—±>§\ámróIÔ¯­Y	\Û÷’À¯±ðÀª1*[W{ÿ\0\í~\É¾7|l¸ø÷\áøüy\âO\é\Ú6›c§ø¼C­Å¦\Ç|\×S\ÈÁ%ó#\Þ\Â\Ú¬9UiFöW\ÑQÀòÁ.kü\Ï\Z¦..Wqü\Ü\Z(¢½Cˆ+7\Åþ*Ò¼	\á}K\\\×5-?F\ÑtkYooõ\é\Ò\Þ\Ú\Æ\Þ5/,\Ò\Ê\ä,hŠ¥™˜€ Ni_ƒ?ðy\íó\â=Qðo\ì×¥\ÛÉ¦ø{Y\Óm|q®\ê^Ê’j\ã\í7vöö\rr[›†\Ý*\Û2ˆ\Ì9p\×?9ÿ\0\à¶?ðW]sþ\n\ÓûJC«\Çc>‡ð\×Áÿ\0h³ðnp‘ý®¥òüë«‡L\æ{ƒl\È£ˆ\"F¥\Èidò_ø\'Wƒ4ÿ\0‰ßµ¯‡|/­@o4[_Y\êV…\Ý#»ˆY\Í*«`\ç\å–(Hû¯2\à€k/ö!øy\áÏ\ß\Z-ü\â‹YOñDN°\ß[Ê°^i·\Ç$\Èñ±VVH\Ìl6·˜§\ï\"\ã\î\ïÙ§þ	c¦þ\Î?´6\ã«_jVºKN\Ö\Ú}Îœª\äKo,?4\ÂL¢L\ä\"ò½9\ã\Ë\Ç\ã©Ó„©\ËI[OS«„©Vq©Uõ=[öhÿ\0‚{x#öYø—ªx§\Â\×\Z\×Úµ;W±û5\Ý\ÒKokÈ²\äFc@³’I¯ ­£(p¥$^‡±”%d_—#o·\×Þ¯Z±•~ót\à\ìW\ÆÎ´ªKš{ŸQ\n1‚´M8?t\Ã¼t\ç<õ\çœ÷§k\Zõ‡‡t¶½\Ô/¬\ì\íSY®\\G\Z@f8\'¹\ê}\Å6%=~o˜\ä\ç95æŸ¶÷€\í¾\0j¶¿5	,|)}5¼¤\"k‰«$i\Z®Y›1\î!A;cc\ÑMiKY$=Ø¶q¿ðOŸ\Ã\â1ñrX\î¦7\ßu-Nkˆ\Ú+²O\ro!‰€‘\Ô\r»\Ôp=«\ÝSâ§†#ñ¤^o\è­\â&P­¥‹ø¾\Ö “ \ÛÁÙ†\éœdŽk\ÅþM\ã\nþ\Õ7\Ñü@]2\âûÆž²’\×QÓ­ž\ÓO´ž\Òk–m6#&\ã<¦9¥¸$º°Ul Ur<yû2ø»\Â?·%\Äý3Rµ“\Âú\åõÔ­\ïnDPÁ2Ä–HZA\æ6\×-.\â\'‘W`\\¹ô]8Ê«RvVº8£RJ’\å]uô?D¿\à•\Zwü#ßµÏŒ®\í4‡\Å\Þ¯À’[½°I…\01)*’N@Ž03“‚µ\à™¶ˆ¿´†©)uÞ¾¹@\0\ìnl\É\ëôWµ—\â%\ì#}\á\Ï+M*\Î\Ç\ßTQEz\çž5\ÆV¿\à\ã\Ø\"ûö«ýµüA­hjZn½¦\éöhox$–\ÊòÀY£û¸\Å\ã\\ñð\ZI·+W÷\Ú_õf¾ÿ\0‚\Ì~\Îúõî­£|Q\Ñ\Ö\ãS±²´‹E\Õ,`¶fk8Q\î.\ã:\ç\ì¬[hg\ÞÝ\ææ’«\Zô·N\çf4\åS–®\Í[\æ7¿³‡\ìñWÀµg\ÚóÀþ&³M/\ÄS\Ý^Gk8\áI‘\äcp›¢+\å\ç8sžW’q_° *¤«*\ã8QŠ\ç4\Í^i7\â\ÞUe$)m¼Œž¶	ô==3[Qj\×JP\Ç™<v~<\äw\ÏC_#Œ\Ì%ŠjR\Ò\Ç\Ðap‘Ã®Xõ5m¶£d$\0\Ë(ÀýkJ\ÎÜ•ùc^xnþÕƒ\\\Ì\ÇÌ·¼Gn\0þ•p‹‰m\Ãn6ž\0yC°÷\ãŠ\åGa\Ò[Å³k\0T6s–ü¿§ùâ¼¿\ãô\ïŒ_< \ë¶öš·‡tM7Q\×u\r:xc¸µk’`µ²7\n\êp&¿hÁ+¹\àr7yG\à\êŸ¼Sg¢\èú]\åþ«¨7“1!\Ü\ÄòN\ì\0.I$€¡I$&¾‡ý¯¿\àžkð\Â\Zˆ¼k©k÷\ÓFš^º\â-\×\ß$3(Ž\"\ÉgHw`¾daFY\Øú8\\5I\Å\Î=EhFJ\ê|µûChAð\ÞMkD³ƒR×¼/q¹ck¸™nD\r™áŒ€\ì%–\×Ïƒ[>v?‹#¢øK\ã\Èþ\'ü:\Òu¶··\Ó\ç\Ôm\Ò{«2C¶Ÿ615»\ã`B\È\Ê@*@e‹ýª’\ZE`\ÎOa\ë×·\ã^E\âoj³Œ5«¡M\âo\ëLú†—kc–¹Óµ	\Å\Ä\ïi.7±[©¢\âbnó•U–,+§iÇ—­\Ç\'\Ë.nO¾¿\àœú½·ƒþ3j“jš…­¾\íXÌ’Ÿ%›ˆ\'À<g<Q_¥¿\ÄÏ‰–³I«izOÃ»8dU·´ý±y3m;ž9cDŒ\ä\06–%[$\02W«…›§MA´yÕ¢ªOž\ÌýÖ¢Š+\è\Ï¥gø›Ã¶>/ðõö•©[Gy¦\ê–òZ]A ùg…Ô£¡öe$~5 Fk7\Å\Þ)±ð?…õ\rkS›\ì\Ún‘k-\å\Ü\Û\ZO&(Ô»¶\Õ›\n§…ž€S+[Pô?,ÿ\0o_\Ø\×KýŽüM¦\Ühú¥\ÅÞ‹\âi®ç¶µ’¿\Øñ\ÂÐ9vó?×€¥‚¶ø5\ãº|\Þs(9÷!ðI\éŽ+ºý©þ>\Ý~\Õ5-vþ£\ÒfÅ¶•c8¬\í‰Œ¬B\ÈKyŒÁ˜‰ŠªŠ\át\ß\êzf‰q}o§jZNœ\Ñ\Å=\Ú[I4V»\Æ\Î\ê¡\"\Ü\á\ÕI!IFN¿?\ÆB›­)RZWg\Ö\áe%I*›š0«8ß£/#¯\åÖ´m$bFc“‚\0ù¿¯\Ô\Ö^ S\Zü±6\È\Ç¯ù\Ï\Ó7¬\ïü\Ô\Ý\æFrÀ¯\Þ>£ü\â¹y•Î›iÁ2~M©øŠ\çÇ—ö3Eic[iO(\Â\Í#nI]`HET©2\ÈqöÃ¯˜˜`­\ìG¼gþ	\æ\Ûÿ\0d?	;c\æûa\î>\Û>?JöŒ\Æ+\ï²\ê*ž)uWûÏ“\ÆT\ç¬ü´?8¿o/\Ø\æóöQð}×|IŸSŽ\ÙtK\é^\Ú-&õ’^˜ùjF\Ð]\Ì\èÅ«æ¯…ÿ\0\ílu\Ï\ë\Í&­\âMz\åo\îOÚŒö–\n¨\ëm&Ø˜[\ÂòF³”ó_Ì²Œ£õ£ö\ÃøE7\ÇoÙ£\Æ^µYšóQ°g´Ž&ž\â&Y¢{^H\ÕK0	9G\æn•\à\ÍKÀ¦_\r\ëv³izÆ‚~\Ë}a#‡xÀF\Îy¥]X¬\à\Ä`Ÿ3¡\ìe\ÍOD÷=,EQZ{­‡]x±Oˆ­tæµ\íçµ–\å¯…5“\Ç\ÌÁ\É\0öF\ÆyÁ]W\ÂßƒZ÷\ÇmV\â/	\éòk\ßd‡ÌžCq\nÛ¸ý\áùgp\0°\×aÁ\\4ðò”n¢ÿ\0ª¥H©k/\ÈýR¢ŠF8¯´>d\àwü+\à\ïø+\Ç\í ³¶Ÿð»K›*†=S_’+…#æ·´![!ó¶vWöv†8úÿ\0öøÙ£þ\Î\ßõo\ë\Ñ\ßM¤\èþOž–p‰¦>l\ÑÂ»T\Í\"“\ÏLšüø\éñRoŽ\ß|K\â‰$¸o\í\Ûù.`K¨\ã†h­wl·‰\Äy]\É\Ç ¶Jd³“\ã\ç¯gK\Ù\Çwù–[Cž§<¶_™K\Ã67ž\"\Ô\á²\Ó\íg½¼¿‘mí¢…+¿\nFI\'€\0\É=8\ë_§aÃ¿³¡\àŸX\Ûÿ\0hxš<k767#$\ï%³#?FŒ8Û°°l†\ç\çOø$\Â\ë?|JñŠ®·´\Þ·†;²F\ç\ÏF@l$n¡NG\ï3ÁU#ô9>\à\Ís\äø8û7Vk}>F™–%óû8ô?*þ8ÿ\0Á>þ#|ñ,vö:E×Œ4»¶v¶»\Ò,\î.\Z5W\Ç\ï‘A1±[•ùð¬û\\Ž3\à¯Á~\Ð\Zœ^ÒŸUÓ¯®\Ö\Ê}R\äš\ÂÍ›Œ\Ò&B\áX1\ïŽÇ¡ý‡#?Ö‘iª–AE\Ôç‹²\ì(\æ\ÕT9Z×¹•\à\é¿<)c¢\èöP\éúnŸ—Žd“\îIbI\'’I\'’k`QE{‘•‘\å¶Û»\nó/‰_²Ã¿‹ž1m{_ð\Ü7ZÄŠ±\Éu\r\ÕÅ«Ìª\0]þS¨b\0-“…Qœ\0+\Óh¢QŒ•¤®8É§t`ø#á¿‡þh\ßÙ¾Ð´\é¦F˜\Ú\é–Q\ÚBdl\Ûc\n2@8\çÒŠÞ¢…+\"w\Ü)	¥®ö€ý ü1û4ü<ŸÄ¾*½kK8\ËGo.é¯§I\"\Û\Ä	\neq@\ÈäŽ´JJ*\ìi6ìàªŸµýç¾)\Ïð\ïB\ÔBx_\Â\îUá†£¨ŽYù£€»10“p&8\Èù[ÂšMÎ½©\ÛY\Ø\Û\Ü]^\ßL©\Æ^IÙˆTEQ\Éf8À\äö\ç¥gkþ\'¾ñÏŠ5-cX¸mCQ\Ônd½½¸’4O´M+—v* *å›\n\0\0q\Å}\Éÿ\0‹ý™ôÿ\0½÷\Äm^;[\ÅÑ®Ž•no&\ä\"HÓ‘¹T‘u\Ã8ª\Õñ±\æ\Æ\â}#\é=\Ü5?\éŸ^~\Ê?³¾Ÿû7ü&\Óôh¢±—X’%}Vþ‚µ\ìÄ³r\ØÈ›Ê¦\ìa@\àk\Ó\0\Èæš‹·¹?Zu}:j1QG\ÎJNN\ì(¢Š²BŠ( Š( Š( ™0\ßwõ\ë_•ðV\Ú\âŒÿ\0£ð~ƒLð%\åÕ´—q\Þ9P¸\"$—|%)‚H\åŒ6\ç\ÜˆÀ<ý÷ûm|pƒ\à\'\ì\Ñ\ã\ro\í\Ò\Ùê‹¦Kš\Ö\í\Ú\æ\\Cˆ®pDrK±ÁÚ œ‡ñ\ZÀ5\ÍÇš\Ñü±\í1÷H\éôÇ§½|\îy\åJ„^¯V{^™ûW\Ðô\ß5oŽt\ß	\èp\Ú\ÜjÚ •¢Žg	˜\ãy[,\Ü*63\è=~\Êþ\Ì_¿\áŸþxo\ÂF\à\ÝÏ¥[s.ý\Êó\È\í,»N\Õ%<\Çp¹ÛŒ\ä\ä\×Ê¿ðH¿\Ù\ãÂšs|N\×mVõKv‡C‰°Î±³-\Ã\\«0P±°a˜\Ùø\Ã_s*\í>Õ¾Oƒötý¤–¯ò1\Ìq^\Ò|‘\Ù¢€9¢½³\Í\n(¢€\n(¢€\n(¢€\n(¢€?\'\àº_òw\Þÿ\0±Bý*½¯‘´\ïõc\ëEðÙ·ûÌ¿®§\ÖeÀ^§\î·\ì‘ÿ\0&»ð\ßþ\Å}7ÿ\0I’½Š+\íhÿ\0>ˆùZŸ\n(¢´$(¢Š\0(¢Š\0(¢Š\0(¢Š\0ÿ\Ù',420,'en subasta'),(4,'pelota',45000,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0_\0^\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ýü¢Š(\0®\âO\Å|ð…\æ½\â]V\ÓG\Òtô/5\Ä\íÀÀ\Î³1\ìª€&¼\×ö\Ìý³ô/\Ù7À²\Í+\Ã\âk\È\Êiº\\rFóh\å1O4FD“\ì\Þd[Y\×<ð2x¯\ÈoÚ“ã·Š¿ißˆ\×>(ñ4ÑµÜ‘ˆ¡·€2\Û\ÙD£ˆ\âV,Us’y$±$’M&\ì~•Àþ\âó\é,Ei{*\Í\Ö^Q_®Ë³\Øýø¡ÿ\0\Ìø%ðÿ\0Pi\í\âŸ\ÆÑ‡7\Zv™\åB¤’6´¼O¸`Œ0Á\' |õ\â\ïø9;\ìSÄ·\átk$f\ëZ.\Ì;p°Œ~f¿9<c[5\å\Þ*\Ô\Ê1æ¥¶~ùƒðw…\èFÒ„ª>ò›ÿ\0\ÛyW\à~¸xþsðÌº¬Qx¯á®«ce†óntI.\åSŽ6\Ã*DN3™O=\Ðà¼Ÿ³\ÅÏ°\Ã?‹u\ê:…\Ê\ÚEg®\ésDU™‚«<\Ñ	m\Ñ2~ó\ÊŽ[¿\rcZ\Ø\Ç\'Œö®~\ë\Å-¼<V|\íq\áC8·‡R¦ü¥ý*ÿ\0¡ý‰Xj\ê–q\Ü[KðL»£’6®=ASWósÿ\0°ÿ\0‚\Üø³öñEžƒ\â	oüQðº\á\Â]i&F–\ãJL\Ì\æK\0ò¬q¹’R\î„m“%X‰ô)û>|uð÷\í3ðS\Ã=ðµÐ»Ð¼U§Å¨Z±ti\"¿42lfU–7\Ýˆ\ìtu<Š\ÒR?žø“†1Y=gWX=¤¶\äüŽÊŠ(«>l+Šý¡þ2\Ù~\Ïÿ\0uÿ\0ßñ\èö\ÆH¢\Ë´L\Ä$1d+\ß#\"\î\ÚB\î\É\à\Z\ísŠü¨ÿ\0‚\ÇþÑ±x\ãö‹³ð–¬‹\Ý\ÂöŠ—V\ÑªƒPi$órvü\ì#òW©C†.(>¿øfY\æmø½7ýÕºõ{/S\Çþ!üTñ\ÇK\â\ê³\ë:£F°‰e\n‹j>TD@¨‹\É8U\0³1<±\'\Îük}©‘FÑý*=GÆ‘\Ù\Ø\ãx\éþ{W™üAø‘I/\ï\ï\éô¬›?°iPF•¨\Æ:$•’^Ihsu´@ø#¯?x‹5¬±\ç¹þu¿\ãŸý°¾‚súý+\Ì<I®‰3ówõ¬\Û:}£KVf\ëZ±\Ë|\Ý+•\Ô5‚¡Ž~•>¯¨ŽN\ìs\\Ö£}½¥d\Ù\ãcñ¶V¹<\Þ xŸ;}³ÿ\0fÿ\0‚¹x¯öý <5¢j^%¾O„:\î±\Zø—I‡µ\Z¶ òe–6‹z\Ê\ën¦\"1 .ß\î\î¹8<f¡¶\Õ\r¼\àƒ¦³Mó\\ü×ˆaGJTk+§ýi\ç\Øþ\á’U‘FA\éw\nü\×ÿ\0ƒeÿ\0n­#öŽý†m>^jaüoð\ÂY\íæ¶¸ºy®o4\Ùfim\î†\ä\0\"™Z\ßb³\ìFN\Ñ,k_¤µ\è§usù\Ë†ž´¨\Ïtÿ\0§ó \×õ«_\r\èwš…üñZ\ÙX\Â÷HÁR(\Ôf$ð\0\0œ\×ó\ÙûS|Q²ñ\Ç\í+\ã\Í{O”Ë§\êþ!¾½´vKC%Ä Œ”Ž\"¿u¿lgòÿ\0doŠg\Ó\Â\Z±ÿ\0\É9kù¿ñ\î¶a\Õ\îH<o<\ã\Ü\Ðö? <À\Æø¬czû±ýM\ÏüEÿ\0G Þ¿Zò¿\Zø\Ä\ÝH\ç=½}ª§ˆ<PÌ˜\ßþy®\Ä:\égc»œ~U„´?u­h•üC¯ù„ó\\Fµªsþ{ÕcS2’7ü+™\Ôu\"\íÖ±g‹Ä¨\ÇB-Bû\Í\Ï$V%\å\ÎsJ±wwŽ+*\âlP|^aŒ\Ò\Äw3mü*Œ²Ÿ7ñ©g›q?Ê«cçªŠ>?]\ËCõCþ\rAøÁ¡|7ÿ\0‚Šj¶š\æ¥Ÿ\'Š¼!s¢\éžnv\Ý^=õŒ©G™a“\êp:°úO¯\ä+þ\í4–\ßðQ‚{ hˆ\Øô:•¿ýz\×U-É¸®’Ž)Mu_‘\Â~\Õúß‰ÿ\0eÏ‰\Zm„\Ý_j>\Ô\ím\áK<²=¬ªª\0\ä’Hü\ÍüTw²\Ö\î\ãp\Êñ\È\Ê\ÊxÁA¯\ê†E\ß£\×ó]ÿ\0<ð}\çƒ?m¯ŠÖ—–c#ø›P»ŽR¸†k‡–&}ÖÑ‡¨`{Öcôÿ\0ó_eWƒ}R—Ý§ù-xƒU\ÅqºÞ¤^V\äô5»\â)’?\Z\äu‡\Û!úW<\Ýñ•cV¼ÂŸ\ë\\õ\äüÖž¥\'˜qX·ŒI\ïYXùLn#¡N\â]\ÍTn$\Éüj\ä«\ÅUš=ÀŠ”|–*nM•\Ü\Çù\Ò\Åo½ÿ\0\Z™-ò\Õv\Ê\Ì3ŒÖ‡…V-\Ê\ç\Öÿ\0ðD†šŸÿ\0\à¢ÿ\0	—L´¸»“Kñ>™ªÎ±F\Ï\å[\Û\ßA$²QI$ñ\ÅYÀæ¿Ÿ/ø4÷Á÷–Ÿµ¿Ž¼H,\åm2\ÇÁòiò\Ým;!ž{\ëI\"Bq€Ì¶ó\Îqu\ç¿ö:š\Ï~u\ÑKcò\Î+«ÍŒ\äþT¿M:ü³ÿ\0ƒ†¿aY<K¡/\Æ\í\Þ\Õ²­!\Ó|HŠR7‘L\Ëµ\ÈP™‘³(‰ÙŸ!\Õb?S+3\Æ^\Ó|{\á]CE\Ö, \Ôt­V\ÞKK»Y\Ó|wH¥] ©#ñ­ƒ9«•ã¡Œ¥\Óu\Ýu_\×Sùñ]©ŠS\Ûðú\×¬FL§\ë_xÿ\0ÁPÿ\0\à–>0ý‡|g-Ì‘jø#Tºu\ÒuxUK\Ìb‚\àùh©s\åG½•AS“´œ>$\×tW†VR1\ÅL\á\Ôþ¦\Â\çq´|<¯p\×pdóÇ½e]A–\é]]öšTŠÌ¹\Òþl\àVŒ\â¬\Û9·¶\ã üEDö9=mË§\í¥@ö»irž=zn\æjYa¿õj\Îxõ#.\Ñ^ÿ\0û|\r¸>;Ò¼Y¬C\0±³&\â\Ê\ÞO™å—.R¸\ÆÁ’\Êr\äS§•cÁ\Ìñ”°”]J\ÓÍŸ¯ðGŸ‡öÿ\0±¿\ì\ïm¡\ÝC§Á\â­^f½\×f·`\ÆY7°Š# pŠ2¨f“i!²B|ñG\íö…–PF;±ÿ\0\Züµø9ñ=L\ÈùöÏ¨÷¯¬þ|P?al\Èÿ\0w\ß\×\ëV¤\Ñø¾1Ê­GZoV~„SdZu5þ\ítaæ¿´\Âoüpøq¨øc\Å:T\ZÎ…ª K›YK(p\àC!¬2F85øƒÿ\0&ÿ\0‚8k_<g¨kŸ\ì/uÿ\0	\Ü1•,`W¸¾\Ó3ŒG·\ïJ™<2\ä€>p1½¿{5ô1\×Ö¼;ãž€—¶w ª¡j¸\ê}7\çø¬º­\è¿u\îž\Ïþ™ü¸k~û7QŽÿ\0Z\ço¬\ÄG\ß\ë_©ß¶¯ì¥ O>£w¥Eqs3I,\ÑÛ¢K+4™f.>l“\Ô\ç¹õ¯\ÏßˆF‹t\Â/•CÌ„÷ú\Ör\ÐýB<}ƒ\åý\å9\'\ågú£\Çnc\Åf°k™\Ö(Ñ¤w8TA¹\à~uÞ¿\Ã2S»<ù\èÆ»|4†\Îñ%[{t“»ª($dw¬™\æ\ãxöƒMa\é»ù\Ù~Mœ\ç\ÂÏ€\ãT	u«\Æ[x\Ê\Úä§\'– óÓ \ãšú{á¾ž\Ö\ÞJó\Æ;V/‚<€Ÿ*ôÿ\0\Zõ\ïx1	‹\äNqÚ¤ü\ë1\Ì\ë\â\ê{J\î\ï·E\èwÿ\0\r$x\Ýx>\ÞÜŠúW\áN±\"\Ú6s÷z\ï^\'\à?\n„(6¯_\ë^ýð\ÏÃ¡-›\åwúÓµ\Ï\'™£ÿ\Ù',120,'en subasta'),(5,'reloj',65700,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0Y\0N\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ø‡A…\Ã¤*F\ã\ä·\ÝR	\Ç®p[\ß¢ñ\Ý\ë\\\éf\É.[Î»öˆ¢‘\"7\ï08$®rg\0\ä\ìø/G\Æ6ºžŒl.nu‹\ëhmôö´³k¹c_´Dó!n£\Ë\\\Î\âÆ¤ºùF‡\âŸ\ìÿ\0¢\Íg§i¶²»CV‘mhd\Ã|Ž\\\ÙWq\ç Ö¿(\ä\ænIjØž\"0¨©\Ëcj\ëV¶ðÆ‡uö½=g·†\Í\í\íY‹GöG\ÚV9@B	\Ûü*\ÙL€q\Åz\Ï\íðö\Ëölø\çu¤ZC}m§\Þ^=¤wWR„vY\0‚U|\0IR\êÃ¿\ãp¯#ñ­”þ#\Ñdµ%\ã‚\ãùŒ­´\ã$€d`ó\ê+\ê\Ï\ÛKA¼ñÄô‹\Û\Ë-\ZK—Õ¦`\Z\Þ\Ø\Êm\Ú\0Xt>RJpxÉ\ç\×œš“eÔ«j¾\Î=O‘%ºEXž$ò¡\Þ\ÊÉ¼¡~\è\Îq\É\Ç9\Ú0O \Ód“\í<k }ž[ÆƒwN¤\â\0Žpzœú€ýN)|\'­®Ÿ7/>\ãe9Œ\îª9=H\äû\í\ÏR@S±\ÙW’)Ð¼©\Ëe²G_¼Þ˜ô#â³»‹ò4\æv2\á½o<4»ÁF”|…G\ç\ÏS\Ç#‘‘WŸCþ\ÐB–Ì±‰Km\Ão\0\Æ\Âz¸\ê\0\0\ÕmR\â³\r›^Á*­\Éq\ÉcÀÁ\ÆsM°\Ôf\Ó.#J¼2\ÙS\Î\ÕÏ¨\ä1\ê¾+¢Qº\æ[¬™RM¦ºt\â9\Ðþõ0Hq×‘˜\Î\0 \Ï-[\Ë),$yc’IVFÀ\Â\îXýPó‚T÷\Õ\ßG¢E\â;!z š	v“\ï\Ã+n`›¹\äg\0\î\àžk›Ö´i&\æ¹šU‘•Íß“’Ü‚\Ä\É9\äû\Öt\ë\Ý\ÚA::]ZÁ2>\é¾2\Ô|[¯\Íû]\è\Éoch¹1í¼\Ï5ƒ®í„¦›Xw\Íÿ\0ÁJg›h¾ÿ\0\Âcý™«M¯\Åf$\ZtV\Ó[Û˜\îfów \ß\'\ïLXw\åŠó]ÿ\0\ì\Ï\á|ý“4\ïhVº}Å¦½×ˆ.\Éb÷J«ct\Ö\ß)\\4rÉŒ±†U\r¿»ÿ\0û‰ÿ\0e\ß§E6›i”š•Ý®ÖŠ+ÿ\0¶D\Ê\0g`\Îo˜‰FqŠ\çö’§UTR\Ðò\'.z¼¯¹ù­\â=I¬|6óNö\í‚#7¨\Ú\Èo˜†Àþø\ï^\áûmüoO~\ÜË£Z[iNtù‚`G4³\ÏR\ç¡>T(¤ž\Ë\ÆErI¥.¯\á}+Až\Ú\Ô5\ë\Ëy­\å\äB-¤B\æÃ¬€d¯\Ëûµ\ç\å®Thw7ý°<cª\êS\Ûl†\æ\Þá¦’Vh\ÒEHœ\ílr@~øÁ\Ý\ÍzxIFpœŸK›TRU\àRñ•ˆ4ƒo5»\Üma2\Èÿ\0?‘!F	$÷Á±X\ZOwe­\ÌoôO ˆ<\êC\á€|ü\Ø\ÈÁ\èWgLt÷3-á¹’dn$†h¶°ºR\n˜\ÝŒ¯\æ#“\ÆC\àO‡zŒ\Þ\ÂmR\ã\Ç?g]\âYt©\"ˆ\à‚]\ä+3 M\ÞX*BžTœl‘Ý‰\ÅR§.f\Î\Î\ÂK\ã»ËŽY•Š\"€B™S\Ã¹ œ\àŒs‘X—ö‘µö\É?\ã\äJ\Ò$ò3ˆq·<u\\½ˆ<šú³ÁŸ±g€¾8øª\ÛLð_Æ™,|Ks,qC¥x÷\Ã_\Ø\Ñ\Þa\Zùw6³N‰&X\Ý[p‡\Ä~\Ö?±w‹ÿ\0e?‰QøO\Ç\ÚD6\Ïwn\'·¿\Ì\Ú~¢ªp\Ò[LT\Ã\0luB7|\Ê3W\É$®È£\Ã\Ö|±zžO¦YN\Ð\Çög1ù22¼.x™óƒ»<œÿ\0²(ŸÉ¼šK\ËÞ±lÊ€ü­\ËrBõ\ë\ß\ëƒQ\êÖ¤jb#\Zn|; \Ú\ÊÀV\\On¿.i|5¯\Ï©)\çÉ¼‡Ql\ê\×\nT\á²Up¼);‰\áx\Ç5\Î\à·L\ê\æiYŸp\è\Þ,ñwƒ~ü8ðî“§Øˆ \ÓD7wW¯\"´>Th¶°nE%7§š\åÊX\Æ]J\Õýµ>2øC\áŸ\ìÕ¨x1ó­]kþ\"\Ólµ;Ö¶im4\ëw¥Ñ¦tVO:\Ò5 ©Y[\îô~¯\ã\ï\Å\Ë?\Ù\ëD“\ÅWº\Íö™¤hú]»\Ý\Ë\å42,²B¶\áQrX»¦0Tùø\êò¿j\ß\ÛGUý¤<_Þ©£\éV2[!ûû3\ÌY”\0!Q•„¸2÷Šr0¸\ë\Â\år\ÇÏ–\ZG¿_‘ó¬¨Þ¤÷G\éw\ÄýC\á4·\Ú^‹\á«y¼Uw\áƒö·§Sððk‹›\Ívòkk+F›~\×oŸQ|\ÂÄº›‹} a\Ô|±ð\ágŠ4·±\Òf\ÐuHüSã›˜¶I<D\ÛC\ÄpOopÍ†m¢ûgv\ÚII!®\É2\Ço\áÃ¯|ÿ\0‚c\ê¾>“Å²hž0ø©¬‹x4›	¤’\îÿ\0Lf»†\Þ\ÅH\Ü=\Ìdsû©--e1JUR¾\Ðý‹>Mð\áßŠ/¼`ú\Ãx¿]…¼G\ãkZ½k{m@?™q3\ÚW#\í\r!L‚L\Ò\0˜\à2\èÓŒ\é\ÂM\Å>]wmoø³\\~`\é¥7»G¦þ\Æ_°Ç€þøz9üg7†ücñ\'TWŠ\Â\ÇTò\Ú\Öx\âI¶ƒii°Ó¢0Ø¡Nß¨¾øš\Î?Š^\'\Ðô]N\æE\Ó#‚\Ú\ê\Î\Ý ·²²\nó,FI\\ƒ#¥\Ä.¬ŠÁ¬]\ÈX\Þ7\ào\Ù\Ç\Â^2Ö¬¼q\æ¿&·\rò4×’\Ç\å,>T¶ðDQ¨‘-¦ke]­=¬R1rv÷\ÄË¿\0üHø¯©]Z^\Ü\Ç\á\é7öÖ¬\ÑÄš‡˜/¶[[³ü¢y.Q¡Á\Èo:\ÕT?_\ÂB\n\Ö>#‹YóI\êuRxûÁŸ>)A\à¯ü7Ý¬C¥Oª\Ü\Ùkš5š_[[ù\Ã\Zn‰¦€4žl¤/™¡He\ß\"ù\ím¯YþÏŸ®<5ñ3B³ñÀ/_}‹\Ã\×0¦\Ö|-Å¬ñ,v\Æa²%þK£¶Â­~\é£X½;\á÷Ã†øð\ÛVþÆ‡þoN³_\È\×7iÎ½t‘\í\'¹‘@„Š\ì\0TE\Ï5g]ø+\Åx§Ã·všm´ž4\ÐgƒR/¨\É|\Ör¼9t¶’c»É\r$h#Œ‡qŽ(\Æ\à©Ô¥h\è\Ë\Â\âe\nŠúŸŒ2ðm·ƒ¼W¨\éPk\â\r.-­\È\Êý¦\"V\Ù2ô[…WhBÈ³$ s\Èj0A ¦\ànb†fÞÁÁ»…u#Áºõò>³·ý’þ\"|Pý“|U#j\åýn/¢°°M8\Â<A¦Kvö³\Ç\æ\î\ÛvŸ`¼F\ÙróI¹\Þ\ß(\êwSiöò\êWµ˜—OÍ·*»2\ÝN\0a‚\Üc¡ZødŸ3û\Òð˜ˆT¥\æ­r¯\í\Õ\â_üXºðv›¯«kš.•eq®\é>M¾.b¶¾˜\Êm˜«–™ 6$‘‚±1\Ï\'\Èj\ã<;û<\é5­_ñ¦¨ø\Â\Û\Ú\\ø’\å%{;š6–\Õ÷&YBì ©6kgö„\Óõˆ¼o¥&Ÿý©#Ã§IWPC+b+;!h\ÆJÿ\0¬!r\0iLš\Ëø“\ãük\Ñô\ÝY´\Õl´]*%š[¹,d³ò\âQ± ˆ;?ˆa°„@„Š\ÃÔ¤\êJ1t¥Ê»õ_#š§,d\á%·\âz§À\Óÿ\0h¿\Ú\Ã\Ã\Þðø½\Òü ó\Ë6ž·\ZKE\rÅ­µ¤1yÍ»\æYg6F]¡Š\Û4œNYKuß‰\Þøy­øV\çZ\Õí¥¹ñwˆ,ô]\ËI$I/d’H¢Mñ0L\ÐOóI”\\?3`_išW\í}\à±a\åiöÚ‚è¨¨BCgY]C\æœr\È†\Ü~\ê\äð¼~§OðŸ\Ã:T\ÖúÖ(·ð\ÄÖº¤ú|H\ìöOq=¼‘\Ãh‘\r\å\Ö\ÕPÛšwj÷r\ÊpM¯\å\Ûüþg\É\çs›’oKŸA\Ø²\Ú[\Âò\"}™6l 8\ç(#ž¤t\ìr\ÍóøQø­ÿ\0\Ô\í5/\ëñøgÂ–ZN¹mªO¦ÈºuÞ§d³5·‘t\È#bY¾VE\ÞsdÄ…*µ\é\Ú?Ž5/\Æ54\Ôdð‡„\îV!¦\ß	\"·Ô®™-\ësyi.~Hv«‚\Ñ÷ð:kzÆ‘¨&¬^G¨Ê–‚\ä]\Çdðù›\\,›¹\Úx’5‘’ÛˆR=Zn\×}Ïžš:¹eòÐ‘ó\áN}1\Î~ƒÖ¹\Ï\é>1ñ?Ž\îo\á\ÕÍ†žöº’\Üiš•·Ú¤‰\Ö\Ú\î8.­^)•R6„D\ÆC“,û˜¶\ÕM‰oü¤óMƒyL\íb£¯=½\ëX?³·\Å\ß\íkSñD\Ú×†\ìa±Ô®\'ž\ïL’\Ö\×J+<–ÿ\0ežvÁ}©o5Ø“\ÉE’\Ù\áª\Í&u&£\ËQ»\Ðù\çK\Ó,<qð\Ûö¬¶¸ñ\nZ\Ûx~ó\Æ-\"*ù©2\ßxR\Û\Ì+Œ˜;\íÿ\0kS\Í~Y\Èúˆt›w¼·”\Íq\Z\\\É?\ïG\Ú	TV`ª2Cu$K|¿ªn|5¬ÿ\0Á2?j\èö\Ú\Ï\Øþ \Øø»T±¸ž\Û7|°\Þi\ï±Ps\nE»n\èªY˜…/\å5¶­Ÿñ~ñÕ$·\\%ª¬%p\ÊÀa”ƒòJ”?\Â\Äüg\í%Q%ð\ÉúŸ•E\Å\Éy#c\Å>%Ž\Ö\ê\Îþ[{³\Ú,¾eºÈ¬\ÐneU\Ï\rpA\Ún_9\0\ÕO_Z\êVðÁn\æu½\0\Ï.ýþI\çzÿ\0²FG\Ë\Ûp÷ª6ú¤±5Íœ\Þ}\Æøÿ\0\Ö3g$|\Çw\Ê>l6I\àaF;\Ö7Œõ™,tùc\Ù>¡)¶Ñ”I_3y“\å\Ì\n›˜\àÿ\0NÎ”h®e\'\Ðö*\Ô×•l\Í?\Ù/Å²\èÿ\0¯#ð¾ƒu\â\ÍGº—\ËÒ€iÎ§iql`—dq\á\Ûiy`N\Ñ\"\ã\r\Éýnýš¼g/\íA\àx|q¢\êš¦…¬\Å2Û½¤hm\Ö%ò\çó|\ØÝ‹¬¢m‘—M¨Üƒ¿\åüE½¼\Õþø\Æ\ÏP\Ðõý*=jÍ´kù¬›mÄ±†…›{*\r¨À¸V’\r}ûÁ@üYû	j×‘i\ZWˆ¼	\â=N\Ío®5ºžV	‘*X:J‰\ãDB\írñ\Êa…ŠE\'\é0Íªž\Õ;¦|®k‡R\\½O\Ö\Í\n\ßF›\á“ _kz¬røXi÷—\ÑY]\Ç\äGN¹‚\ë\Êd\æ·B±²²\îx;³W4ßˆ\Z|ÿ\0¬\ÇË¸W\Ñ.b]B\ÖE’(\ÊOnÍ¼e\\€X1xÕ”4ˆŽ\Ñù‘\Åøc\âŸüfðô¾!þ\Õ\Ùm¬X.£\r½ôO£\\\Ûi2\0I\ÇÊ²Cö„w‚QŠ\Ícƒ\âO\n¼-ñV-F\ç\Ç\ß|9ck¢\Ï\r¶¤\Þ\'²€Ù¼\Ò[	-\áY%T³µy\n«—6\Ñ” /\ì½\ç>[\ÙI¶’:M\Ä^)ð¯\ÄI\Å:ÿ\0…›\Âúeª\ÞY.)tùµÂ²¡Ž`ò¸û2©<Œªó`aKöŸ›ÿ\0\à®ÿ\0ðP9>\rü5½øI\á	\ï\äñ_Šm\Ýõ?!’e´†d-™û\Ûn&F,w	lÃ q¿µŸüG\á/ƒl4­/á¦Ÿe\ãmR\æ\êB=SW…£\Ò,SsF]c–DšáB\ÑÁ÷ƒ;¡ø\ÏMøÏ§h\í\ã?Ž>+Õ¿\âu¨\êW\×:.—”©_9Š\æ;™-Õ9e2Çµ$xqœxÚ’§Ê®\ÞË¹\ée\ØËž¦ˆ÷Gö Ö¿bØ¯\áOÁ=k\ÅZdþ9Ð®­|_£I©HšÖ‰o¨¤W°¬†\é\Ì:|‚\ßTU%¢U‘¡}\ì0Y1>~Í¿¿h\Ëk-3Á¾(¼Ñ Iµ«­S\ÅòÅ£>‘§\Ãi§\Î\Ñý¢	.%’MB@\èBºZ’v¸?™þ:\ë~4k~-ñð\Þ\\ø‹P{™ã‘¤tˆŽ YˆŠ5ª¹\áT_ ~ø¿\ào\ÙG\àw„að¾¹\á¯\ê~6Ò­5{\Ø\âµ3\Þi%–¯¬fI\Ò7%\ìò3\"\ÈYcx¾|?\Õõ\nršøÞ¯Õž¤qño\Ù\ÃcŠñd’Z\Ú\ÆAŒ\Éi™rÈ¼\íÂŒ‚{.O\Ê8#>•\ÂjOuw\"#0›O\ÖH\æ ¥óµú¸Ûµ}·“^…â¯¹ø\Éÿ\0µkÍ¯\ã\î\çý\çÿ\0Ð–¾Z•G±õÓ‚d:\åªø\×\Â7V),ö2\È\é*H\è\ãerA^1\Ãl\É\00 ŒŒq•ðGãž±\à¨õO‡ú\Í\á\Ñu=}ã²¸°ð\Ék\â%—z¤¶2B\Ç\Ïe\ÆSsò5·gÿ\0![÷\åÿ\0Ò—¯ý­>\æÿ\0`\Éÿ\0ô3_C•5*ž\ÂKM\Ï5‚öN³\ÝPüZñEÿ\0Âf\æ\ÇY±º²¼µ\Ó\ÛK7–w\Ú&£¥\ÄUJ;\É\0e\07Þ\åWÊ“¸(aóm–—g=\ëƒ§\æTÁÌ¦\å—;p\Ã\É¸\Ç$q\È5ú\ßñ\ÃþQ\íû8ÿ\0\Ø\Âÿ\0úoJü\áø¯þ®\çý\ß\èk\é1P”l¹œÀ¶\Ûgñ[ðÇü6°´VúœsÉ…’\ê\Õcb\ÌØ±9\ÆÀC±\n72ƒ\ÉÏø\Ã\â·ñORx\åx\ÅY(ã·Ž$†8ò¨>EQ“ò”`wª\äiŸþ¼­mü5ÿ\0‘^\Çþ»/ò*1\Ã\Ç\ÚüOÏ¡º”ñ}…ì¼·f\îðy\Ã\áš&‰\Þ0Mó6\â«\0NÑœqW ñŸˆ\ÓÁ^\Ñ4\ë3\'†m\ç\Ó$¸Ž(–u\"\î{†\Î\äó\ë‚Cx\Úp1\é\Öt¯ú\à?ô^Nÿ\0ñ\í}ÿ\0a)ô¯&†cR¤\åN¦¨ôç§©\ÓÑŸÿ\Ù',45,'en subasta'),(6,'laptop',800000,'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\á\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0_\0q\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ý\Äý¥þ2\Úþ\Î³§¾!_Y\Ü\êð\æ¡\â+›[w	5\ÔV–\Ò\\4hÇ€\Ì# \ÆH\Í1š\ïü?ö®ý³|i­x\ìürñ§…Zò\ï\Èþ\Éð÷‰uL²\0Xà¶·}X.\æ-#\0\Ù\ß.£?ø*oü£öÿ\0²_\âoý5\\\×ó%ûŸø¶×½ÿ\0\âg&3ÿ\0\\¡¯¨\àüžŽg˜\Ç_\ái¿¹3Å¹µl·/–&‡\Åt¾öwö\ßÿ\0jhÀ\ÝûG|Vbz\ç\â±ÿ\0\Å\Õøh?\Ú~4*ÿ\0´\'\Å|·uñö®HüÞ­\Ç1ã¿¥\\´Ò·’J\ã…~·ÿ\0\Ï)]þÿ\0ø\'\å?ñ3G\Ñôÿ\0\Úö—W_3ö…ø¸Ts\ã­Sÿ\0ŠµkûKþ\Ñ!>o‰ôÿ\0„\çUÿ\0\ã”û]wð\çð«ðxp–ùc¬¿\âe+«ûÿ\0\àšG\Ä\\Ó²û¿\ànÿ\0i¿\Ú(\Ú2\Ûüvø¨·L\Ãi“\Æú®\Ìt9>f{ŽÞµ!ý§hIS#\ã·\Åp[\×\Æú§ù´—\Â\ìƒô¡ü.Ê¿\êÿ\0JŸø‡YGy}ÿ\0ðM?\â!f½—\Ýÿ\0\0Â¼ý¥ÿ\0h\Å\ÎÏ_·vÇŽµQü‰X\×´?\í3#\r¿´/\ÅÞ§øO5Oþ*º»\r²\0ªZ&\Ã÷j£\á¾Tú\Ëúù™¿3E\Ñ_#š½ý ?iù÷´7\ÅE>¿ð°5~?ñúÎ¸ø\ßûTJ7\'\íñe\î \ë?\ÒJ\é®ôÖzcÒ©\ÉF~j\Ûþ!–Wm\å÷ÿ\0Á3ÿ\0ˆ‘š.‘þ¾Gmÿ\0\îý¿ÿ\0h\ïÙ¿þ\nðv\Ï\Å_<iñ\Ãÿ\0<Ak\á]GI×¼M}«Y›{Ë˜m\Ú`—„š#*HŽ¸bP©;Áþ•c\ç×šþX>&à ¿³>\Þÿ\0´pOýÄ¬\ëú¡ø\çet²\ìÎ¦\Ã[\æ“?\\\á|Ê®a–\Ó\Å\Öø¥}¼›B\ÑEó\Ç\Ðÿ\0Pÿ\0”aþ\Ñ\ßöK¼Mÿ\0¦›šþe?cóþ\Þ7ýD\äù\Zþš¿àª¼Á/ÿ\0iÿ\0T·\Äÿ\0úiº¯\ækö\Zo\Â\Ûÿ\0û\n\Éÿ\0¢`¯¾ð\ÛþGQÿ\0¿#\á|Dÿ\0‘<½cùžÑ¦\Øn\é[zf˜[wøS4»\å]Nƒh\0n3_¿V¬\Ñø-\n|\Ö+i\Ú98ÿ\0\nÜ´\Ñr}1Zš>žg‡­}Uÿ\0¸ø%¥üWý¨mÿ\0µ•g²ðöŸ.°¶î»£º‘$Š4W\è\ZPþ\å\09ƒóÙ¶l°t%ˆžª*öþ»ŸC•\å²\ÅW}§cÁ~þ\Ë~,ø¯¯øgO\Ó4¹£>0’\ê=&\â\å|˜/M´e\æ(\Í÷‚\Ég d‚ß±\ÄÙ²\Ö\Ò\ã\Æ\Zi\ÖZ„¾E½\ÜsGqo,›wl\ß!\\€\Ä+`°F#![£Ÿÿ\0i‡ÿ\0ðP\ËU±þÕ˜\é\Úo…0Ú§Ù†›%\íÑšI„Í¹~Í—\\*\ìT,À~8ý³¿\á#ø\Ïuð\Þ\ÏÀ0x\ËÃ·ú…–…{©\Û\ê‹,\ì;Ü´\"&Ü«\Z\ÜðV\ÉQ\Óó\éqžf\ê\Âj’pk™«ô¿{ôV\ÝoË½œ\â\êµ4ùS¶úzŸŽw:\Çÿ\0Z±5-g?^\Õô¯\í{ð?Oøñÿ\0\Ä~\Óf–\â\ÏJ™\n4ƒ\çH\å&ElE÷#8Àñ}_O]ßŸjý#˜ªô£ZI&¾gÀ\ã0.•IRž\éµ÷k¨\ØLÿ\0J\Â\Ô-H¯@Ö¬TD>µ\Ë\êm?\Þ\æ½\Ê5´<j”ù]Ž\á\Êmÿ\0‚„þ\Ì\Ëý\ïˆ\Ú?þœ¬\ëúœšþY|&\ßgÿ\0‚‡þ\Ì\0\Äm#ÿ\0Nv_\ã_\ÔØ¯\ç_Ÿü.\Öÿ\0·ô”Að\Z¶GGþ\Þÿ\0Ò˜QEñg\Øÿ\0Y8ÿ\0‚]~\Ò_öK<Oÿ\0¦›ªþe`‰wü,Ô½µi1ÿ\0~`¯\é§þ\n¶\ãW´Ÿý’\Ïÿ\0\é¦ê¿˜\ï\Ø*P¿	5ÿ\0QyôL5÷\Þÿ\0\È\ê?\á—\ä|/ˆŸò\'—ø£ùŸIé’‚‹ô®³B‘vžMp\Úuò€¿J\è´]YPE~õZ\Ç\áXy¨\èz‹2\às_dÁ 5»-/ö£\Ô\"¸º·‚}C\Ã\×6Ö±¼Z\âA=¼¥\Û\0\çj1\Ç\×\ÃzV² }\ïÖ»o‡?®¾x·M\Öô\éR;\Í.\æ;¨÷;*’ŒV\ÚA\ÚH\0€FA5ò\Ù\æZñ˜Y\Ð[\Éi\ë\Ðú|Ÿ0X\\L+ôM_\Ðûó\âWÁ\ï~\Ïþ×¾#ø\Ö\ãC¾\Ö-$Ôµ=>k’³Gªjgµ…UfB;tY%@O´m\Ý[_°g\ì\á\â\ïø—\Ã÷^$ð¶¡\áû=)\ïõYî§¼¶i5Çm-\áh“÷\"\î™w†™ˆ 6+\Äþ ÿ\0ÁE´\Ú\Â‡\ÚŽ,tÿ\0\riº.¸5]v\ím^ú\Þ\å!Œlò“qtów\ÜFQ\ÑÀ\ß#zW¢þÔ¿ðW\ßj?\rõoø\ßVm[RCiý§sÙ¢¶ŠH\Ø<\í”J&^\åTù²À`þe<¯6t\Ö\Ù{\Òvo¢[o¶Í¿¸ý9†W\Zªû±WK«{þz7~\Þ?¬>&þ\Ö7Õ´\Öy,\Úñ-QË£+›xb·gM¤Œ\Ñ§\'*A\ã8¯\Ö&þ&¦¿ñ\n9\çiÀõ\Ísº®°®~òõ=\ëõl·õz0¢¶ŠK\îG\æÙ†1Ö­*\ÒûM¿¼¡®H#\ë\\¦ª\à7\ãZÚ¾¨®Esz\ènA\ï_EF›±\àV¨œ´8\Í}ŸðQO\Ùd{\â.•Ÿø™\ØWõB+ùU\Ðf\ßÿ\0\Zý•ÿ\0\ì¢\éút\Ó\ëúªüñ\âükÛ¿úJ? xþD”\í\ïý)…Q_}q\à?ðU\î?\à–ÿ\0´§ý’¿\é¢ê¿˜_\Ø9\Êü\Ô\ì3/þ‰‚¿§Ÿø*\è\Ýÿ\0¸ý¥89?<N\0õÿ\0‰M\Õ(_³7\í)¡üðÎ—ª[\êS\ÜO¨=\Ðkh‘”)Š%\çs\è}k\í8‡Áæ±¯ŠšŒm-_¡ñüq\Äbò©R\ÃE\ÊWZ/S\ë‹KÂ˜æµ¬5b£¯\ëÒ¾s_Û·\Âÿ\0Çˆ?\ï\Äü]M\í\ç\á\Ïüzk\Ã\ÛÈŸü‰_·Ë‹²G¾\"?yø¬xO9_ó/¸úr\Ç^d?{õ­{_2ú}wWÊþ\ß~SŸ±\ë\ßø?ù­\'ü\Â)ÿ\0.zÿ\0ýø‹ÿ\0ŽW4¸£${b#÷›Ç†s˜ÿ\0\Ì<¾\ã\ê˜üNÁ‡ó¡üPBcÎ¾pðí£¢xöö\â\ßI\Òu\ë™-`ûL\Ù[x•zG’\Ï*Ž^D^¹\Ë\n\ÈðP\ÏH¹šû\ÆE´Côó+?õ›$¿û\Ä~òÿ\0\Õ\Ü\ëþ\å÷L\ÝxŸ\Óó¬»ýpžÿ\0­|\ìÿ\0ðP_¸ÿ\0?ßˆ¿ø\åV›öüð‹øó×‡\Ö\Þ3ÿ\0µ+hñFH¿\æ\"?yœ¸g9–ô%÷ùy¬ÿ\0¯YWwFN?­xƒþÞžaÿ\0Zÿ\0ýøÿ\0ŽTGö\ìð‹øò×¿\ï\Äü]tG‹²Eÿ\01û\Ì\Õ<\åÿ\0\Ì<¾\ã\Ñ|4\Çþ7û*ÿ\0\ÙD\Ò\ÏþU4\êþ­+ùýž~:i?\à£ÿ\0³öL\Z„?\Ù´e—\í1¢\îó5[»B³\àl\çÖ¿®„?5~\Æ\Ø\ÊX¼\â®#%(»Y¯DÜ¸7[”R¡]r\É^\ëÕ±\ÔQE|©õ”þ\Ù¼ð“öuñu\×\ÄI#›\Â÷º]ÍÞœ|ýa%…\Õ\í!RËºI°r€	,Ê¡˜Z\çÁ¨µ\ß_\Âu«^x^mN\á4›\íCE¹W[%wòž\à[¬Áf*Yb\ÞØ\Ä\r\Õû\çÿ\0~\ÐVþ(\Z_„ô+¨\'\Ô4ñ&—o5¢<³¥\ÍÃƒxh\àÁom\ænhq´Ë²¿Ÿß‰þÿ\0„O\ÅW›U·ZÉ€\Z	#ù6Í‚xÛ°SÖ¸!Z¥Z’T\ì£={ŸY‰\Êðy~\n…LZ”ªÖ‹•¶\åW´~m+ú2\í\×\ì\ë¯i±¡\rU;~Á¤jqlõ/ö‹d=‚\ç¡ÝŽ2¶Ÿ\0µ¦“÷\Úv¨Ê¿y^\Â\çŒŒ\â }\rWÓ´‡º¶kVYŒš’F	³\È	8#’8\Þ Ÿ˜gšÙ“\Æ:ž‰os3¬v\Ëcrmd••\äð²6Y‹G>`%\ès\Ñ\Ë[º<˜\Ô\Ë\ßÙŸÞ¿\ÈFø¨e\Z-\Ê\ÈFúþAÇ µC\ì\é¬I‘ÿ\0/]¿\Ù\×d~-\ëz/]j–~O“4q\Ý¹\'ì®¯o\'Ë°®\ãÀ$?Í½’,(Ò¬¼\Û[­rI®•E¾«’Z\Ý6H†\éòI\ËÆªü‚s\å\àg4¹kw_pÔ²þ‘Ÿ\ßò0\ÓökÔ¥o˜\ê—§üK.\Ï\'ÿ\0—qúR·\ìß«H›\×ûKoLf]ñÿ\0’õ\ßxgA¾\Ó5«[hn¯-#ŽÕ¦°’%uybguš‚!A$EP\àŒd©5£\é+}o¨]k‘Ã¦\êzdFMR\Æ\ËC#rHv’„D!;r\Ë[ºl¾ÿ\0ÿ\0ð(ÿ\0‘ÍŸ\Ù\ÏXQòÇ©ž\Ãþ%\×cŸü©›\à5ù‡¤]#ýb\Ø\ßn®FS\ï[ºÇ‡\Z\Ó\ÆZu¬÷G%\Ô\ÛÊ«û\ÛöŒ3J&?\Ä…8ùG\ïH&µeŸKV˜G9´›u¼ˆ¶`\Îb\0®\Ð\Íå‚£<7^2-n\ëñ|¿ùgÿ\0GüŽbo€\Z\ìk•Óµ†ïŸ°N?öÿ\0³¾¹¨fš=,.\0Ký#U™Û“\Î`¶t\ÇÔƒZÚ·ƒõ§YB\Ã¡d\ì\à[>•\ÜA9\ró““ý\ßz\å¯õ)­\ím.BÌ„\Û\ÈÄ¿\îFFwc\ï©\\°=ª¹k=\Úûˆs\Ëÿ\0–_|\È÷\Ïø&†ü/ðKþ\nðW\Å_eñV™\á]\Å\Z”­§i.³-\ì.&µ\æ@€\\$m*ª´­\nHª»\Ê\ãúôðôoˆ~µ\Ö4\r[O\Öô›À\Æ\Û+•¸‚l1VÃ©*Hee8<#Œb¿Š\ß\Ùó\ÂWš·\Ävµ\Ó\ç6×–H÷–.‘}\É\ã \ÆB’ù‚ž>l:ÿ\0JðAo\Ú\ï\Ç_ˆ\Ì\ÃIÔ´±­[Z´\Æ_ì«„t†\ê\ß~\0 Jû\n€˜xe;rí·Ÿ\ÛT§V0©ª•\ìûy\ïöF–V\Ç`o\Ñkš-\Þñzs/G¹ú3EG±¼\ÔWv§\Çi\Üþxmo„\Þ+ø\É\ã]Z(|7\âHmGö¾§5Í­ÄŽZwGo1”JÜ\Åv´\çq#ó/ãŽ…©ø;\â%ö‡y¤h°\êZk:xg2F\á¶È»BÝ¬ª7dŽ	\É\ÎX¾*x\ãË±\Ú÷kó\'öÀ\ßöŽ\Ôî™·.£2 Sÿ\0d¯\Ïò\Ü\ã—²O\Ý^GöGxo’TŸ\×g\í$\Ò~ó²IY$¶VI{mª\\\Ér¿ñO\èf¹ƒ\Îù]”©V$\ÂXœ©\È\Îö\ã²\Ó<Myp¼øWB* ÿ\0‰”ÀŸù\áŒsý\Ðzäœ€0ô=?\í’\Ç\Z¯\ï$*ª3Üœ\n\ë´ûxf¿-[#S\Ô(\è?*õ%›b_ÀüöŸ‡y4¾\Ëÿ\0À™.•n÷z}Ý¿ü!>’A™§x‡\ï]§‡+òð0F\Ú\éú†¡4a¿\á\nðzü\Ã\ïø‘TŒ\02‘žœpGN•— \è\Âvùcl\ã¦zþµ\Öi¾\"ü§<\ç\Ð\ã\×Ú±y\æ!lÿ\0Ñ¡\á~K-\àÿ\0ð&r¾=ðf¥\â\ß	\ëV¾ðn›s«:\ÊnW\Ä\Ë1‡–8_)GÝW‚:g“œ\ÝñLº”ö¶·ø/Â¶·—QÊŽž\"7EWv$M‹\0\á\â2&ã»\Ã\0JŒ÷6¾_/=?\ZŽ\ëÁ+°»°9;ºÎ£û{\ÖK\î;Ÿ„ù%¯\É/ü	žj|M&-ÄxA\îŸÍ”.¶\ì&\ÕB\ØkC\ÕQx\Î23\Ü\ç{\ÍcLðüš|ZƒBÌ¶Sý£\Ìû$@\æ8\ÙZ\ß÷»G\ÊX•g\å[-^½«xuQºz÷®W[\ÒGO^õq\Îë¾¿Á[\Âüšeÿ\0\àL\àõ\Ï\Í:ø¥ô8‚7\ÊV\çs0\ç>@ö>Ÿ/Nr8­kÍ»•Œz.—nd$\Éþ”Ï¸ñ\Ó÷ch\ã \ãœðI¯EÖ´ ‘~>µ\É\ê¶\Ë­l³\\C\ëøtü<\É\àþÿ\03¬ý¼«|Eøšº~“¦øt\ê6\ïu8¾¹)kw(0-\ä1\î ò\ã<œþ›~Á~ø…û2ø\ãP\×!¼\Ñ|?kx°K\r†¨\Íw76D‹º$ŠJ\Ë\Öyi’e?ÿ\0ðO\rKû+ã¾¡q\Ñ[J”tõž_¥^\0ñ¯Ú¬Â–\Ï\Ê8\ÛÖ¼Œ\Ã:Ä¹*m«iÓ©úOxi’Fƒ\Ä\ÆóE§\'fŸFºŸ|ÿ\0\Ã\Ûu/ú¬ÿ\0ðz\ßüE|eý¸Ÿ\Þo\Ëÿ\0­Eeý¿‰ò:¿\â\nðÿ\0üú—þ\Ïÿ\Ù',10,'en subasta');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_vendidos`
--

DROP TABLE IF EXISTS `articulos_vendidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_vendidos` (
  `id_articulo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comprador` varchar(50) DEFAULT NULL,
  `fecha` char(10) DEFAULT NULL,
  `precio_final` float DEFAULT NULL,
  PRIMARY KEY (`id_articulo`),
  CONSTRAINT `articulos_vendidos_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_vendidos`
--

LOCK TABLES `articulos_vendidos` WRITE;
/*!40000 ALTER TABLE `articulos_vendidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_vendidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pujas`
--

DROP TABLE IF EXISTS `pujas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pujas` (
  `idarticulo` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `pujamayor` float DEFAULT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `fk_pujas_2_idx` (`idusuario`),
  CONSTRAINT `fk_pujas_1` FOREIGN KEY (`idarticulo`) REFERENCES `articulos` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pujas_2` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pujas`
--

LOCK TABLES `pujas` WRITE;
/*!40000 ALTER TABLE `pujas` DISABLE KEYS */;
INSERT INTO `pujas` VALUES (1,3,1000),(2,3,1000),(3,3,20000),(4,3,1500010),(5,NULL,65700),(6,NULL,800000);
/*!40000 ALTER TABLE `pujas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `prov` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `cod_pos` varchar(50) DEFAULT NULL,
  `targeta` int(11) DEFAULT NULL,
  `tipotargjeta` varchar(50) DEFAULT NULL,
  `contra` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'raul','c','a','a','a','1',1,'jaja','a'),(3,'Brandon','bran_37@hotmail.com','Costa Rica','Cartago','Los ANgeles','32659',123456,'Master Card','oveja');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'subastas'
--

--
-- Dumping routines for database 'subastas'
--
/*!50003 DROP PROCEDURE IF EXISTS `cuenta_nueva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cuenta_nueva`(
IN id int,
IN nom varchar(50),
IN corr varchar(50),
IN ps varchar(50),
IN pv varchar(50),
IN ci varchar(50),
IN cp varchar(50),
IN t int,
IN tp varchar(50),
IN pw varchar(50)
)
begin
insert into usuarios (id_usuarios,nombre,correo,pais,prov,ciudad,cod_pos,targeta,tipotargjeta,contra) values (id,nom,corr,ps,pv,ci,cp,t,tp,pw);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(
IN usuario varchar(50),
IN contraseÃ±a varchar(50))
begin
select count(*)as cuenta from usuarios where id_usuarios=usuario and contra=contraseÃ±a;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11  2:27:19
