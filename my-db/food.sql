-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for Win64 (AMD64)
--
-- Host: uuboyscymysql.clrhltpp3icl.ap-northeast-1.rds.amazonaws.com    Database: food
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
-- Table structure for table `membersInfo`
--

DROP TABLE IF EXISTS `membersInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membersInfo` (
  `userID` varchar(45) NOT NULL,
  `name` varchar(40) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `photo` longblob,
  `qrcode` longblob,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membersInfo`
--

LOCK TABLES `membersInfo` WRITE;
/*!40000 ALTER TABLE `membersInfo` DISABLE KEYS */;
INSERT INTO `membersInfo` VALUES ('U0fe5e2ddf71a138b6e21d4a970592127','????',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\04IDATx�����0D�����\02���І��ș@p�*��\0�����kj�d�Cׯ��@����(`���\Zk���\Zk����I�\'�\0��$I��<�M%	c����GP��Ƕd@ҵ��1k�k�H�z8$;f�&�y��?����y�N���C$j�r\'f�0f�3�H�jWc{�\0\\�\0 �����,�UĔ��yz�oŎ$H�@yB��J����������}V��:\'i�|n�\n������iU��	@�������>RU^S�^�W\ZRY�m�P3�I�*/�w�)���ѽf\0�$5�`�����+}��U>p�M0��)�e��>�f��,b٩��i5��u�Nc�(y�Yx\"Q]�����<˥%�-i���ͳ�V�&\0��5�����|��<C�ʋR���[��J�5���Y�<��ҳ��Y^T(5X�}���;�b���;z8�tH�]�$�R,�~˶d��\Z�<�d��<�5/{z8�|nΉl�iRg�����|&���j��j�\rps>�\"���l�{�\0\0�	M\0�Ä��|��[wc�5�Xc�5�Xc���ؿ��s-���\0\0\0\0IEND�B`�'),('U19a0dc2519f15c625ea764802cd62202','Kevin/??',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\03IDATx��An�@D��%ؑ��Ln6��\r7�7vX�/;�?��\n���-�-J������J�_����\Zk���\Zk���\Z�v\"I�\n��a��6�$6�;��$\083�p~%)n�awlO���D���\0y���N���(S��a_l1�Ϝ��xxuZ4���h$�e�S�g~!�W��Z�$�2�\r\0�GI�o�a�-g7%�0u����U�g�\"(�&B\Z\0���[�fW�b4Է��c)Ep\Z�g?�SՓ�O�s>7uD�m�a\'���D1C��Sg��#�n}(.u:{ꈞ��v���L�2a9���\0�SJ\0�R���:�ُ�T��#\0�wt�o����>�]�N	�($EhD�!�6����L�9ͅR��B���i5��g�R�R�y��~���[O�\0��h;/�Ͼ�jր�p��u�;g��^�������&���V�;�sP���mG��{���O.,��(�m�a��|�\\�%uK!-g�f�O.��:���yj��v��y�z����/�~w�}�5lG�^��z\"_\r���v����u7�Xc�5�Xc�5������]7{T�z\0\0\0\0IEND�B`�'),('U1e91bf35eb5315bc17da624e46a65c51','??',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0r\0\0r\0\0\0\0�_l�\0\0mIDATx��A��0E_E�Y�a�GQ�,�f�Q�\0{9 ��vw�4C<N;T-�m�ŇO�%�l�3��}\n�w�y�w�O��� �\0��.�S������(I\Z�.�� ��A��[���8�1?��0u�b�ǹ�+����ỻg���A�!�B���8�-ﯘ^d��Ĵ�翆�%\r�]�vT�����k��R�Cy�8�fcz��|S��M��G���I)Ȑ��4k=��翂�+ܩ-��[�!�f+�=�8�OY���^*_b)C�8Ջ$\rϦ��Q��s��>��e�>7���;� Z���e�d���I|����;�q,��وo/b��P���ιS��HϦ�������6�jvT�ٞ��i̓�2YC��G����<͹�4�ލ�Mv��/���`�Z�@��������_�2�Z,�$���W�X�\n%b)�jS�����|X�R����o]�<����A�U�޼k��E���!�e�\\�nR�����_�����L�J����qq\0�^Q:�~F�/���m���������;�����2k�%��wk���]������??I:�q�;�iT;���y6��?�Z�%����n�������K��k\r�uO�׿����v�y�w����_w��UJ�l\0\0\0\0IEND�B`�'),('U26c1d062b5768c0ab8721698973d67b1','Gregory',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0r\0\0r\0\0\0\0�_l�\0\0�IDATx��I��0E��t� G��V7���4`-������R�	��b4�P<��R4ɘ��\Z�|�w�y�w�=��j���1���T�\r+�q�^|�BH{Kk��Ҋ��\0�:z�����;P��X�of��z��-�i1�]������;�9ov�!�TO�_�����^R3���u���ym=�߇G��a�a��� I���;��ʉ��9;��\nf�}?�~���!�� �[�G/��D+�q�^|��9HI�Ԕ-��s�������j�	�U�A#g��r�n������l���<s�n���W^��WS�d]Eo�����=Y�@�a�´ǂ@�A��lW���w�k|j�d��\\�0#������U��7��4e�G������ñ�I\'#�dٝK�|�����8\'�\\�lj�ϵ�|{���a~�K8v�\r�0�֯bj�a]=�߅�_�k�9V��Ǹ�n��g�cK�JRf���S#V���}�K�H�2��S��r�^E���/�,�H�����t��T����3�\\J/��:C���m�u~2�^9Γп���G�b.Wv��8uz���·7�\Z�Š��Z�\',-\\zϦ���W�o/ ��i�`A������_�$�v~�i��B����&����r��&u�r=�;���;�?��\0�ej7��\0\0\0\0IEND�B`�'),('U2dd03f0598a942d9050eea3c4676f85d','Ching Ho',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0EIDATx��A��@E�w;�R����oF�(�	����(�����(�MP�@�_���\n���Fc�5�Xc�5�Xc�5vlO�<�$�7[^\0�$�jv�Bu�$QR	��F%)�İ�c�d�3Bd_=yY��>٤� ӱeȿ��ق��,~��-��z��2DJu�gV��¶$��W�&�\'\0I^W����go��1��0[�<��=���5\0n\"�o�E\\��NX�&�$�N%J5BT��g=C���{�Ns�Kj��RS߬S��$�5^�@b}�������7���pͪv��O�\0�ߚ\n\rh�⊞H�s{c_z\0\0p|M����L��U������>�,5�\0���\Z_\"��TQj�4�Z�l� �K�K�@�W��^��>�w�,D���\'�\0��<��}���!�Kj ��7���G��,����ޫ�W�a�5�@Z�fzδ�\084\'��8\0~%��-����w��5��|������?/\0��nH��{�M���X������&�n�u\r*ơ繺�����=l��׳@��T#D �m�Xj1�yIp�rL����u7�Xc�5�Xc�5�����\r_�R�M#�	\0\0\0\0IEND�B`�'),('U3635a6a27c2907e7e6f1cf2d8dd41a0c','Hsieh',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0(IDATx��A��0E_�-����s�f�*s�M���x�d�^1AS�@oQ�*��-L|W:|g�u�Yg�u�Yg�uv����\\N��x6k�����j�[I�#�֚�Q���a\r�`Q�X��L4���id#Ĝ\n1�B���^�u�S����Wg�V�A矿� >-mTÎ�Zj��i��5��mZ��؋�\0�<���oX�>�e�Qf\n�����k�jV�ҁK�>Lo����v5섽�\ZQ��Z�D�\Z��Y�A_k��Pw�ڒ�ܳ��\0�,������{���9��`\n�S��:[�v�\Z��ޝ�\ZMA}���#�H���Q_k�VNP�QmyLa�;�gZ��	je$���Ϟ�kmJ94?��:���٥�L7�|�L�}& Ms��<{�ϊ=]#���S��u�V�]�K�/[@t��{�3&�1\'���g���\Z6V�Z�ԑ����=���07SP�g��<�tVN���a�r�VZ{6O��Bc\n�{�����z\Z;Ѵ�����z��@�gsZ�>[i�oRw�&��|�D���;묳�:묳�:������[�n(.\0\0\0\0IEND�B`�'),('U400b95f5a7d6cb62ef336f96b26de6dd','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0\'IDATx��M��0���H����&�f�������ف\\�py���\nDӵ��E�տ6~*m~��\Zk���\Zk���\Zk�\n�Ir�3���3�\0I�a1VǶ��J{�%���au����>4gw .�vQV�^\\����Sx�\r+d�/p��m�h\Z5��D��)phs}�g~$�\'��Y�$qq��NM$�[Іu��8�tr������bq6際pR@sB�xԏ�{��Y��Q�$JJ��6�7��떔���k�z\r�,E�g��+BRF/�����3͊�_ꬡ�ͩF���߬/h3���Ŵ,k����L\0�ۧBid=��n.�]Di��J}(hsg{������#G�3�z���4�i�����*�sh3��`��$���8n{.o�*���;�q>��5l�}��Ϥp���,�ճ\'�wUוFR�\Z\0�g���\0\0`M�q��k�f�w\'\0�P.�\n��nA���{\0�Y�7J#%\0�-���k��p;���`�g��q�|��۾�D�)q\0��2�\0�7��o�U��S}���A���k���\Zk���\Zk���p�B��i�\0\0\0\0IEND�B`�'),('U57dae482fd0d30eddb584a0e3e69d7fd','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0*IDATx���m�@E_\r��7�A;�\rg����L6�	Π}c$��`��W>�\Zm��J_�U�&�*�����:묳�:묳�:��dff�O����,�����Ű;6H�G�,���IRw����Yc�Кhdc���F�];�;����c�C�h��,���>��+���mT��g��>1�]�MI�1�!Gi�g~6?e�ff\0��F�5����1샽��B�R��מgk�d6Odϴ���Lǧ���Űv9k��Ԓ\n!�$���z�֢�M2\r��vn��JWy���i����%���4׭�=;�ó�oT9vPI��\n垭t9�@3M�JTQI#SֹgWZx�J�;\nA}#����2πj�յTC-%���--�&�ʜY�f�o��b>�D�m�$)��Eݳ+-<�4��<�|������2�J5;\0��m�k���8f��Ϳ���N@��Ɓ���N���V��!���?�U=;i�����L����e|��ڳ���l�9�|�ժ�M�r�,4ܳ�>�\0��F��.\0��g7d�����:묳�:묳��w��\"��!\0\0\0\0IEND�B`�'),('U5dc989d65f1897bd44fcbd415b47e164','??',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0=IDATx��A��0D� �[���sr3���M�\r��fA:�t4ӛ!A�k��ST*�o~*%?Fc�5�Xc�5�Xc�5v�@�LБ�O\0I�a3�c�$Nu�N5@I*7��;�!�񔇴�hx򴩇]�C�5G	/�C�_8U�z��IisD�}��@*՛z�ۑ$�,����$�z���f*!)\"_����;����{o��e������2[kYIe1�E/QR��.z��lÂi���a���q[�`��t�s�p�t@���z�D��?/d����<;��J�̦�2��T�]���7}�,\0�W@*I�jm�|�eoJc��3)\0.Vgk��٣���4�Nc�e�U�̐kL�<X�����	����Tbo��3}���Y�pї\0���zs��|��5�ۯ�\n�Iw�\0���������s��E_b����gk=�l8\0\0o���Hn�1������b��\0TAj����z���>����j`L�ۙ��OX/az;0�-|�\n�b�*<^�H�,^����7g��$�ˉ��=�x���	�g6����7�������\Zk���\Zk����w�on�G�HV�\0\0\0\0IEND�B`�'),('U6d22d8292171bb2cfd96d2b9ef5383a9','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\01IDATx��M��0��㑜]��M��lnnn`vAJ\\oaÄ�G�\nD�k|�R���n#�_���(����*����*����n��ED��k\0�j��C	�y�kI\0�hO\";I�+z�{	����^&4�Y�]��F�S$�cۅ�y�k��{�t,�,I�8�\0�|��B�O��Y�YD��P�F׃\"\"�=l����U]H@3����yvѵ6Ѱ���� G�c2#p\r��쎵�>�u3t���{1�z]�`����=d�Q��9;��4�!Tf<�a�fX����<�U���_h��/\0?��G�}#��pɌp�\'��|��\\j���\0`F8��E5f�u�gL�e>������g�um�#\0�j̭\0\Z�\'Z�7{�c\r�ё:k<��r4t,��d`9h��ts�y����&u��@�\0@8]�5���g�Y��2�p{��p��t�^��F�Gy�r+�2Y��Wl~w�{\r�FZ��6�Ŭ�r[BɺHͳ׬aD$�*�������M�>�e�h�q��޽;Y�����:Ӿb˻�Y�K����ٽD�뮬��*����*�����0�#���0\0\0\0\0IEND�B`�'),('U7173dc299af6ac3fe7697a75c2a280ad','\\u65bd\\u4e1e\\u512a',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0&IDATx�����@E_�����\0g�!0�l(�6�̈́�g�oX�����a.�5���F�P*������w�÷Qp�Yg�u�Yg�u�Ygw��ffv��Ȏ���̬~Z�csIb<r���S6�$5O�aw�Ŭ&�/��>����F��Sc�%;�&�V5�*�Wg��L���L�6����X�4�dCޕ��BM��,$bz�x_�����)��	df������|6SÔm|v�-��,Md\'�!�No�����b�	;�gmUOPH���V�����Z�WEK�}���\\��3���dC����s�н6��(�JR��}��y�d�j�}>��Ð�X�d=e��\r�}VHu��D�� �775�J)^�� �+}X�����4���lK��)�2��	n%��l�٬A��\0@��l��/|>[k�31gS�j���ن��T�CޕMH�j���f�&`����A�+��Rs�I�i��3�ٖ�Y����O?lh#gIw�y�����OWB��l�E?�Y��ϴۺ�o^\r�Oh4:�je��c�k�����:묳�:묳��w�\\5���zy\0\0\0\0IEND�B`�'),('U7cb420838034721c73198cf46a9fb195','\\u7acb\\u6615',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0.IDATx��M��0�_ő̎��s�f��l����EKD�Y��!��44�6A�Tz�*�m�����6\n(����*����*���`Gٍ�?������HX-����˓��_O�~T/���Oǰa�	���E/�0�V�a�lw\02l:�E�z�bM����o���,X4X����P�\r�$�/D~�x_��=\0�`����L�zv/�+�	�^�g���f���E�=�MͳG]��>�2X2B�i?{Х�z\0��\0�mM=�ӕg�a*Q/�k2�h?��+\0��M\'/ܣ�w�W�a#��|V�����e]{F\n��ar��Pg��z�a��M_�\r���E͞��J.�읲!�F=��<�bJ08�b��δ�YÄc�$�g�]�2��F؛�fD���V׀͵Y��l�pyk��-��\Z,}6}��&����z\r\0.�Y_���V]k�)kIc4!�U�D��iYsQ&��t��u#5ϾfM�� ���̦{�1������q:�\0l:��Ë��N�e:�o�6��g��^�5g�yZ{�x���]Ye�UVYe�UVYe�;��|v���\n	\0\0\0\0IEND�B`�'),('U7d56a120b59383802416bde5192f0adb','???derlichan',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\03IDATx��͍�@��ܖ�\'�&�\r��R�Lڙ0�\rK@��cc�����wxzz]�?��S��c0�Xc�5�Xc�5�Xc�$�n\0�KKV$IV��p86�$|��:/U���c\r�c[���ڼ�Nå�\'0���5�.�F��j�v�ᷳ�o������N5��&��$�Ϛ�jr��g�D�������H\0p{���I~�X�1�e�V��T�|���lֲ6$���\"F�����=��g\r\0��Fd���7?�jYzB,��ϋ2bl�^��WM��:��%7�g�ف@�3|\r��e~�p�����pv�>�F�8�~v�O��Y�\0�K���ml���=V��\0������q9J�o�8}�E�[\ra�l���UO�is���ϤX\"���g��^i�!B=�B���}�f=[�����\Z\Z�y\0,7�ңz D��T����?���)kPTJ�9�B�V�A��{Zu>ݟ5!ڜ��*��}֤�3?��Xnn�ܳ���Y@Z_�Z�fmz�k���$ klζz�i��\0)>�g�6X�4�����h�u7�Xc�5�Xc�5�����,2����c�\0\0\0\0IEND�B`�'),('U8b575a120d53d40ad98617d52a1ba9b4','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\03IDATx��M��@����Ȯsr�w�����nBn\0;�B�[@~&�D�<&�V �E�r�m\n�J_o����\Zk���\Zk���\Z�v$I~�$�f�u$I2.�a%,4�K%5\0\\� JRU�D���vd�-B�)o`$w�zX\'�w(�\rۢ�5+dk�s����Of�Y��������v I���菻:�$�zX{ɳs���*)���˳�n�ՠ�z�j�T��|�k�PTHNmqi�t,��u�Z���l�^���]�U���$��^��ej1��%$��\0�\"O���Z=���Ș\\�J��M1n�P-�alv~�\0|%�B \0�\\��jY�mQǄ�hjRj�\nʞ������ѷ�k�}9r���uE�_��\n��c D`�ఙޖ����E��Z�I%���{�A�g�9t�IM�\Z]�i_��`�������l�����U�O�\ZHn\Z�Ov6�鶞�Ԅ�\0L�\'\n��t��%���R�r��^��6\rN-p����^��Ѕ�L��͛��۟I-��z ���s�ճy�x�����two��%�I\r�\0mC,f�h��k���\Zk���\Zk���L�N�a�\0\0\0\0IEND�B`�'),('U9a1715c6ffdf0ef2ffe148726d336011','Yiying',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0r\0\0r\0\0\0\0�_l�\0\0fIDATx��K��@@�Ɔ,��(������Q��}�B*�Izz���� -e��@���(?��׏p>���>���ƋK���@�s�v=P����QUU����NU�@҂�]E�W�?���s��Izt�O*W�\"�����?�%�3�\":�;��X}�ߗ�/���Iy��_M����:�~�T���%m1�X}�߇w���e;$�7{�~�X�H}�ߗ��y#�j���D��$/r�K_�҇���u�z�>���S���JxS�z%L�+�j��1��[���2謫��a����}aPu_�@ʝ���m��v3��t�u�\rY}����kY�]��R�>P(�U��1��/��/������<���$_��P��7��x����i>}�X�kǼӥv:��G��N�]}��Qj�_�������Ia�}�;]|�����F�5�Z�66�P�Q�6�o�kV�Ne�y�D��(�8?�;Ypk:M��6�5��\rg���M�۸0����?iMh7hu�/4���Imac�I�f�P}�߇ޯ�O\n,��C ���	��r�	��/xO����N��\n̬�#��خ��V$�G����s���Կ�Q���?o�)�w��|������ f���f\0\0\0\0IEND�B`�'),('U9dfb30bda156b01ce822ca67d4282927','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0.IDATx��A��0E��]��������W�87!70;R���H�=�bB��x�J�%!~*���UVYe�UVYe�UV��7y��\0�ԉ���\r�c-I�v�E������;�p�m��\ZJ�lJ\\�#Q^��Wdo��\n���eë��g��ק��;�p4v��$)�&�\0�\"9�3��/٫�\0�L��R�ED~�h�1�{��Q��k��I��\0\0.z�.���j��R3����+�S�Q��z��,�چ���u�in�twI_1zf<z�\0@ssC�uS�+F_5�6�3\0`��E�0�	�-�������Q�a�؃ֳ���R7r�L8ft5`2�vO��>���d��bz@s�K�v�j�]݄��0�J�g���6���	�Ő�(\0#��٤��Y̰s$����oس�l�7�\0�~�zg�.�\Z��\0�q����\0H�$��ɋ��{v�w2���P�2���g�1��S��E?\\8�I�͵�>�0I��7�7�Z��П%Gj�m��3��fv֟��lK�s�m8\0��ؔ���*����*����*�߱\0-\r���].\0\0\0\0IEND�B`�'),('Ua0ac6b70d3611ea9d3d4665941dbf3f7','Even(Yves)',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0+IDATx�����@D���\rg\0lL&\nx3�Lz2��fKM��6{5\'�h]��J���\r�+%�Fc�5�Xc�5�Xc�5v�@�Lp9h?A�d�Y\r�cSI�p@˚ꏹ%�oX��؞���}Q�ɐ�d��,6�a��p�\Z �r������ُŽS��7�����M\r{c�I!�$���UO�m�g�D�w����I\0�Ā���E��ְ����<���r��H�&�U���q9���հ���s֠R@&)YS�!U�gK�=\0N�I]�Z:g�n�5��T�1`��7��;2�����gQNm�a\r;a�9�=��Ԡ��f9[�6�\0Ri�i=�;�n��8�I�r��Cy��g=�@&_@�+��s�<�=\"�.4è�泵n��jPQR�*:u��ps�<��ѳ��=�g������G20o�!��)Aj���Qc[cH��W�n>���l�i��=Ѭ�I�u;�����ݳS�| �~���l��gו�C)�N�̳�֞5�������,\\h;\0\n���l��	�Tt�m\0l�\\������\Zk���\Zk����w��S����dX\0\0\0\0IEND�B`�'),('Uaefa84530bef60672e135c6cee89341d','Leroy',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0r\0\0r\0\0\0\0�_l�\0\0|IDATx��A��0EE�,m��(���)7��2��\r2?��d�ä�v,�Z�~���T*�_��ۗp�x�7�x�����z\0�\"2̒N�c��| IF@,\"��;p$I>��c����3���u��L�M�\\=����\\�}x�K�$.����c���������1��������\0���:%Ӟ���s�N\0p:�$	�|�șz�?�W�KJ	�nw!�E��v��_��\nw.Epx��t#E�E0�5�����O#�]�\"Xwb2!�x���j���o���z	Gu:_r�����ߚ�\0��XLJN�����|5�c>D��\rN}���\0f_\n���7�I��oN��j�a�n������:�p�*o6����V����Ʊ{<N����o�|I�Xj��NW�g���o��u��o�A~���<��ꁪ���\r�?�x��� ����٫�7����������Q\0y��_M��O�����\Z�wҶ>��o�O&p�\"�D�����L=���	*|���r%|���7�/Bt���u�q�>7χw_�6�R\n������߿��t�¸xuZ�Sv������$6m�����%�M�d�s�|��Ԩ�A}��I�R1[����m���o����1�g8�\0\0\0\0IEND�B`�'),('Uc12878ff30adabf6f390bbad29147153','Thomas',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0CIDATx��͍�@��<+�o��8�ΌIe3��@p	�w�`�}�2z]��Z����~+~��\Zk���\Zk���\Zk�؉$y���I���Ű;�K�#\ZF�˃\"%��0�ݱ���T�Ô����Ӧ1쒝�Y\r��\"�6���ٯ�w���7���F1썅�\Z�$q�mP|�T��+1B���$	\0��#�KI�7�a�=��0���-�^ى�Nd\'�9.�א7��b�	�ȳ(4�>�4÷(\"୞���Z���\Zɥ�L���|�k����>���<����7g�3����o��9�4�6T���\"�\rV��t�g��\"@PzT��U[={�\"ς$��*HjS�Y�\\�2�\0�G�J\0U9�t`ͳg=<�8��)��.\"G�\'�l��-\07y�(fMQa�}W��M�`�{���줺�U��lU�Z\0L�*\0H��<{��5`D�\n����[��]�\0pD��sJ;��Z�3I�ڐ�g5J��̳w=ճ�Y����ƪ�<�W����!��_l�(єtC֜�%t�>�}����(�u������SV�א��:�]�`i�u7�Xc�5�Xc�5�����(~���9�\0\0\0\0IEND�B`�'),('Uc132d7550826d16f3d86f60a24aaae20','LiYu Hsu',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0=IDATx��Mn�@��2H=;|||3�7��07h��Y@<6��l�M���?YO���i��W�×Qp�Yg�u�Yg�u�Ygw��ffv�fv�X~;�F33����ݱA� �k5T�$�����ثY�����݊�f��촩�]�c�\0��l�����bԞ��ÏfѢ!H���T�!�R��Y��O���؛�c�h�;�6��켡�}��<{W_�AR���ϳ5;�.�s=Q[~+�,���o���\r�,\ZB��<[���u�d}�QKJ�H�٫cVIR�Ҳ����G�g\r��6��5�{+��L	Cm$���M=�}�i �R�����|�Ǿ��j��M���A�3;B��v�˘����}��0eJ�4eR6P���[tpAk�юTQ9�Ӧv�>�k�)닮�U��g)|�*{�`:X�����{����BZ�N�5\0>Ӯuϳ1�7���|��\r<�^�T�4wJ�	��z��%��%�DP|��{;�p��zʞ~~��~��}ɳ��\'B��\r~6_��g�V>OkR�{��w�y[�*ͣm��.���;묳�:묳�:�����VA�>�\0\0\0\0IEND�B`�'),('Uc72bfd5a14b0e6bd6d8a8e78491b6ca3','???',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0LIDATx��A��@E�f׾� G`n֝��$7�ev�k$�8��ؚ��Rc����RuU�@�ϊ�O����*����*����*�\0����i)\0�8-�X\"\"\"�0����+���`f��$h߿�C��(��\\6N�Ijz,\"աe�\n�0l���pi�Y�\\�Ϳ���,�i6$)3P��a��B��ۈ�\n~_���\0 ���m+�1ۋ{\r�}ĚnwҘ]t�3�Be2\0p1�<{Ǝ��)lW��RXR��8�CZl,�O�(\\\\�cn�#=$�ޞ� �e���~\r�ֳ���\"v�0�X����@i�׾\0 f�m\"�Y���3����$2\Z������l��~�<����l�����[�����+`�1V�����U�����l6�.��r�!A�w>b�����Edɧ�;�C\n�mX7f����`������[^�\r3��lh�>�~>�Ȃ��d6�s|�\Z��R\0��T�u�x��4؛��\08Y�\Z�t[�yv�|w���_g ~������=$�Ng�ŵ}Sپ���ٿ=w��h6[G��DD\0��	�b�ඎp��4X�wݕUVYe�UVYe�U��c#I���b�\0\0\0\0IEND�B`�'),('Ucfe8ccde71931f874b974c3b7221ad84','Peihan',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0BIDATx�����@E_U���Pa��Ca�L�	�	�\0n�\n�}\0I,��=aQ�C�]�z��{d����(8묳�:묳�:묳;`�ffv��\n�^Z�dff�6�awl�$�/�-���B�$��0�ݱ�Y\"��SL�k��-q5;m\Z�.��K^��en��1<;{\\|gj��42q�V��&���hR$���J\0EU�������}.�bf���\r 3��ư��g3U�TS�������(��$�rUY���=[j�Hu���BC���ts�n����4u�KE�\0��͵�5�$u��)Ӽ��g7�=�����u\0C�Qx���-*��k�w�cP�]���3�J�z�\0&5�Y�Kiwϳ��_�ԏ�FP���瀵�uӴPHC������Sկ���}��<+��jʩaz�����@hx�øM�8�=�y\r�����ΧMc���k�A\Z[AM9-��l����;ўb��b\'8�_q?U���]�i5.�MQ��}F�H��M�3�(*WB��BK����jƝ����ʆ�lIG��8���1<9�~wRE&�\0�n��=�i)j��5\Z�V2�����:묳�:묳��w�/��@O��\0\0\0\0IEND�B`�'),('Udf8f1c512878156d2bf8d0051d4f2429','OoO',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0)IDATx��M��0��B$�#7 7�#87�W������H�k�Fz+&h�6��[�J���\r��J�����\Zk���\Zk���\Z{\0�M�<��/x�A���-�ñ�$�}���j^�%��1�ñ/�#i^7�O���x��]c8$��d�^��?������=���o\"�,v��h,�+��Đֹ<�ֹ����\'�7��]lK�\0��\0<�H�c�`�<��DLT��-���$=I�P��^�����y�/���S?�$5���T�뺛��M�e*\0Y��%�D����Z3�*��tcHUq�y6jV�y	d��� �_.�٠�|V��\Z�%�H\n˳-�i�\0��b���+��g��\Zn(�85[>��M$�ʂ��c����S�g}����̳�枕\0�\Z(b24�l�]�lТ6��̉cw3�64��	Hk8E\0}�Y?���\n��]T(�C5��/�p��y��?[��Ь6%QM�݁��٦f�&��R�1\\�9�l�\rφ1�Ǥ���֞��PĤ�*���<[h���8��e�ךg+MC\00���g��7?E���Xc�5�Xc�5�Xc�;�����}\0\0\0\0IEND�B`�'),('Ue5148dd83b43580ee1b47aa93a371244','Jason',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0:IDATx��A��0E���.���������}��A�A�s$\'&hX����\n�[|��\\e!�wo����*����*����*�v�� \0ʾ�\"\"\"~5a���!I���V���\'��0���8�\0�|��D�z�&�Wpd/��=�c�N(\"��������~K�ZH6N�������|\00�;w�9��a�5�&Ųq^a��h�M��&\0GI������\0����-H��`�\n��/\0�;6+z�{��{?ӆz,�%�y6i�7`�dV��ҏE,hm.�5}(\"����W?.\0}e\0��=L}��O`絙W-�\'#�<�h�=�n?�;�oJB�3���1��ڀfv8И-4J#��dZK�@�8��R���1O��<�:k<�l�`@���`kCt5f/�\"v�G\06@z��8��3��j��y���e3�7�⽒im�tq�Pjm>�\Z,\0���]��dZh�|�\Z�\0KR�������y�;�-P��P�\r\04��`��G�7�����ɯ�a��&�RP�����]�]�;�+n$�����E��7��z�|*���+����*����*����?͂�,T*�\0\0\0\0IEND�B`�'),('Uef7546599902de083b6bbe1d85821323','shiki',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0W\0\0W\0\0\0\0>J0�\0\0AIDATx��;��@D_��3*s8���0{3��7���pCgT`��)�귢��Ĵhwe�^Ph�t�d����(8묳�:묳�:묳`ff�bo��bO{ۀ��Y����� I�l5ԀIR=��ű;�{ۤ\\�?���ͬ�>�|>��\Z~X��g����� h��=<4���$�:������8Ϫ#1<���b�ffʖ�����23{���2�s��ԕ���&���}v��lRJ��#�EW�������`@5p\Zd-)����F�]#�b���U��e&Kc��f��В�����yG����l=�]���ot�\rHjc��+�$�)�fS]J֒��Tf����{z�g��kN�Lj���VW�,*O#@���#z�Mt]��:^;�Bj�|�����$����V[�2����a�ͻ�P�%�BjR�����g\']լ7�&i�1\n�yvGz�>��f���R���\'\0���-yEx]��g�������޾��k�B��y6�ա�X50j��5{���i(v�c����i��P��YYO�gs��<+���g������5�X��ʒ�7������:묳�:묳�:�߱�\0�{�����\0\0\0\0IEND�B`�'),('Uf0bca333372b3950aa8b82afdac9a6f3','??',NULL,NULL,NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0r\0\0r\0\0\0\0�_l�\0\0{IDATx��Mn�0F_\rHY\Z)�Q�7���(}�Hf�蛅m��$ӊBH#U-�(�î��gl��)�w�y�w���x+���0���\rƺv���7�$)������Ǟ4�$������c١��6_�w*kyc������)L@�`x��S���q�k|��Y�O�r�\"�}�q�{� ��Ի&G]I���8�)?��YW^��T��sN������x{�?i��V0�oW�?yH�T�c-�㹅�k��͖/{���V<���DԄ� �Se��R\"����wlm^�����h�E�49\\ߣ�>c��*z�,��	�v2¥��G����[�נ�^[\Z^.��������K�-]+)-Uo�<FI���_ �F�NRּg����Xэ�*����U%��h߿G䋾�ts \'(=�zf��=$_���eJ��������Yժt~Wz�����oޡ�k�f�u��=(���`|V��\n��%r�y��� |4���c�5��4���������,mP��r�e���=\Z��ߵ�-\"�Y�����7��*m��9+���[�����Є�~��¿��$����%�ۉx^�)w���m��o,��b�\\��_L0W���w����?Sb׮�?�w~�c��I�w�y�߀��w�*	�\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `membersInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productTable`
--

DROP TABLE IF EXISTS `productTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productTable` (
  `productID` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productUnitPrice` int(11) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productTable`
--

LOCK TABLES `productTable` WRITE;
/*!40000 ALTER TABLE `productTable` DISABLE KEYS */;
INSERT INTO `productTable` VALUES ('1','Salt',40),('2','Sauce',50),('3','Egg',30),('4','Chicken',150),('5','Pork',170),('6','Flour',75),('7','OliveOil',120),('8','Cream',100);
/*!40000 ALTER TABLE `productTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `orderID` varchar(45) NOT NULL,
  `productID` int(11) NOT NULL,
  `userID` varchar(45) NOT NULL,
  `productQTY` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('1549410042',1,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-06 07:40:42'),('1549410042',3,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-06 07:40:42'),('1549410042',7,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-06 07:40:42'),('1549400042',2,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-06 04:54:02'),('1549400042',3,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-06 04:54:02'),('1549400042',5,'Udf8f1c512878156d2bf8d0051d4f2429',2,'2019-02-06 04:54:02'),('1549430042',1,'Udf8f1c512878156d2bf8d0051d4f2429',2,'2019-02-06 13:14:02'),('1549430042',6,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-06 13:14:02'),('1549430042',7,'Udf8f1c512878156d2bf8d0051d4f2429',2,'2019-02-06 13:14:02'),('1549300042',2,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-05 01:07:22'),('1549300042',3,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-05 01:07:22'),('1549300042',4,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-05 01:07:22'),('1549350042',5,'Udf8f1c512878156d2bf8d0051d4f2429',1,'2019-02-05 15:00:42'),('1549305042',6,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-05 02:30:42'),('1549305042',7,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-05 02:30:42'),('1549305042',8,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-05 02:30:42'),('1549410041',1,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-06 07:40:41'),('1549410041',2,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-06 07:40:41'),('1549410041',4,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-06 07:40:41'),('1549410041',5,'U7173dc299af6ac3fe7697a75c2a280ad',3,'2019-02-06 07:40:41'),('1549410041',6,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-06 07:40:41'),('1549410041',8,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-06 07:40:41'),('1548300042',1,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-01-24 11:20:42'),('1548300042',3,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-01-24 11:20:42'),('1548300042',4,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-01-24 11:20:42'),('1548300042',5,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-01-24 11:20:42'),('1549201042',2,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-03 21:37:22'),('1549201042',7,'U7173dc299af6ac3fe7697a75c2a280ad',1,'2019-02-03 21:37:22'),('1549201042',8,'U7173dc299af6ac3fe7697a75c2a280ad',2,'2019-02-03 21:37:22'),('1548410041',1,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-25 17:54:01'),('1548410041',2,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-25 17:54:01'),('1548410041',4,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-25 17:54:01'),('1548410041',5,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',3,'2019-01-25 17:54:01'),('1548410041',6,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-25 17:54:01'),('1548410041',8,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-25 17:54:01'),('1547301042',1,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-12 21:50:42'),('1547301042',3,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-12 21:50:42'),('1547301042',4,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-12 21:50:42'),('1547301042',5,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-12 21:50:42'),('1548103051',2,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-22 04:37:31'),('1548103051',7,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',1,'2019-01-22 04:37:31'),('1548103051',8,'Ua0ac6b70d3611ea9d3d4665941dbf3f7',2,'2019-01-22 04:37:31'),('1538400021',1,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-10-01 21:20:21'),('1538400021',2,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-10-01 21:20:21'),('1538400021',4,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-10-01 21:20:21'),('1538400021',5,'U26c1d062b5768c0ab8721698973d67b1',3,'2018-10-01 21:20:21'),('1538400021',6,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-10-01 21:20:21'),('1538400021',8,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-10-01 21:20:21'),('1546260012',1,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-12-31 20:40:12'),('1546260012',3,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-12-31 20:40:12'),('1546260012',4,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-12-31 20:40:12'),('1546260012',5,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-12-31 20:40:12'),('1541000050',2,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-10-31 23:34:10'),('1541000050',7,'U26c1d062b5768c0ab8721698973d67b1',1,'2018-10-31 23:34:10'),('1541000050',8,'U26c1d062b5768c0ab8721698973d67b1',2,'2018-10-31 23:34:10');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-16 18:04:18