/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t146`;
CREATE DATABASE IF NOT EXISTS `t146` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t146`;

DROP TABLE IF EXISTS `bangongshi`;
CREATE TABLE IF NOT EXISTS `bangongshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongshi_name` varchar(200) DEFAULT NULL COMMENT '办公室房间号  Search111',
  `bangongshi_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `jiaoshi_id` int DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='办公室';

DELETE FROM `bangongshi`;
INSERT INTO `bangongshi` (`id`, `bangongshi_name`, `bangongshi_address`, `jiaoshi_id`, `create_time`) VALUES
	(9, '办公室房间号9', '详细地址9', 3, '2022-02-07 13:57:29'),
	(10, '办公室房间号10', '详细地址10', 1, '2022-02-07 13:57:29'),
	(11, '办公室房间号11', '详细地址11', NULL, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `bangongshi_shenqing`;
CREATE TABLE IF NOT EXISTS `bangongshi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `bangongshi_id` int DEFAULT NULL COMMENT '申请办公室',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongshi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='办公室申请';

DELETE FROM `bangongshi_shenqing`;
INSERT INTO `bangongshi_shenqing` (`id`, `jiaoshi_id`, `bangongshi_id`, `insert_time`, `bangongshi_shenqing_yesno_types`, `create_time`) VALUES
	(14, 2, 11, '2022-02-08 02:44:47', 2, '2022-02-08 02:44:47');

DROP TABLE IF EXISTS `bangongwuzi`;
CREATE TABLE IF NOT EXISTS `bangongwuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongwuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `bangongwuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111',
  `bangongwuzi_types` int DEFAULT NULL COMMENT '物资类型',
  `jiaoshi_id` int DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='办公物资';

DELETE FROM `bangongwuzi`;
INSERT INTO `bangongwuzi` (`id`, `bangongwuzi_uuid_number`, `bangongwuzi_name`, `bangongwuzi_types`, `jiaoshi_id`, `create_time`) VALUES
	(1, '16442422491944', '物资名称1', 2, 1, '2022-02-07 13:57:29'),
	(2, '164424224919420', '物资名称2', 1, 2, '2022-02-07 13:57:29'),
	(3, '164424224919418', '物资名称3', 1, 2, '2022-02-07 13:57:29'),
	(4, '16442422491940', '物资名称4', 2, 1, '2022-02-07 13:57:29'),
	(5, '16442422491948', '物资名称5', 2, 3, '2022-02-07 13:57:29'),
	(6, '16442422491940', '物资名称6', 2, 1, '2022-02-07 13:57:29'),
	(7, '16442422491944', '物资名称7', 2, 1, '2022-02-07 13:57:29'),
	(8, '16442422491944', '物资名称8', 1, 2, '2022-02-07 13:57:29'),
	(9, '164424224919418', '物资名称9', 2, 3, '2022-02-07 13:57:29'),
	(10, '164424224919418', '物资名称10', 1, 3, '2022-02-07 13:57:29'),
	(11, '16442422491943', '物资名称11', 2, NULL, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `bangongwuzi_shenqing`;
CREATE TABLE IF NOT EXISTS `bangongwuzi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `bangongwuzi_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongwuzi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='办公物资申请';

DELETE FROM `bangongwuzi_shenqing`;
INSERT INTO `bangongwuzi_shenqing` (`id`, `jiaoshi_id`, `bangongwuzi_id`, `insert_time`, `bangongwuzi_shenqing_yesno_types`, `create_time`) VALUES
	(12, 2, 11, '2022-02-08 02:54:20', 2, '2022-02-08 02:54:20');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiyanghong/upload/1642732280676.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiyanghong/upload/1642732293404.png');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型名称', 1, '公告类型1', NULL, NULL, '2022-01-20 06:43:29'),
	(2, 'gonggao_types', '公告类型名称', 2, '公告类型2', NULL, NULL, '2022-01-20 06:43:29'),
	(3, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-01-20 06:43:30'),
	(4, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-01-20 06:43:30'),
	(5, 'shiyong_types', '是否使用', 1, '禁用', NULL, NULL, '2022-01-20 06:43:30'),
	(6, 'shiyong_types', '是否使用', 2, '使用', NULL, NULL, '2022-01-20 06:43:30'),
	(7, 'danyuan_types', '单元号类型名称', 1, '101', NULL, NULL, '2022-01-20 06:43:30'),
	(8, 'danyuan_types', '单元号类型名称', 2, '102', NULL, NULL, '2022-01-20 06:43:30'),
	(9, 'danyuan_types', '单元号类型名称', 3, '103', NULL, NULL, '2022-01-20 06:43:30'),
	(10, 'danyuan_types', '单元号类型名称', 4, '104', NULL, NULL, '2022-01-20 06:43:30'),
	(11, 'danyuan_types', '单元号类型名称', 5, '111', NULL, NULL, '2022-01-20 06:43:30'),
	(12, 'danyuan_types', '单元号类型名称', 6, '112', NULL, NULL, '2022-01-20 06:43:30'),
	(13, 'danyuan_types', '单元号类型名称', 7, '113', NULL, NULL, '2022-01-20 06:43:30'),
	(14, 'danyuan_types', '单元号类型名称', 8, '114', NULL, NULL, '2022-01-20 06:43:30'),
	(15, 'jiaofei_types', '是否缴费', 1, '未缴', NULL, NULL, '2022-01-20 06:43:30'),
	(16, 'jiaofei_types', '是否缴费', 2, '已缴', NULL, NULL, '2022-01-20 06:43:30'),
	(17, 'liuyan_types', '留言类型名称', 1, '留言类型1', NULL, NULL, '2022-01-20 06:43:30'),
	(18, 'liuyan_types', '留言类型名称', 2, '留言类型2', NULL, NULL, '2022-01-20 06:43:30'),
	(19, 'liuyan_types', '留言类型名称', 3, '留言类型3', NULL, NULL, '2022-01-20 06:43:30'),
	(20, 'liuyan_types', '留言类型名称', 4, '留言类型4', NULL, NULL, '2022-01-20 06:43:30'),
	(21, 'weixiu_types', '维修类型名称', 1, '维修类型1', NULL, NULL, '2022-01-20 06:43:30'),
	(22, 'weixiu_types', '维修类型名称', 2, '维修类型2', NULL, NULL, '2022-01-20 06:43:30'),
	(23, 'weixiu_types', '维修类型名称', 3, '维修类型3', NULL, NULL, '2022-01-20 06:43:30'),
	(24, 'weixiu_types', '维修类型名称', 4, '维修类型4', NULL, NULL, '2022-01-20 06:43:30'),
	(25, 'shifou_types', '是否维修', 1, '未维修', NULL, NULL, '2022-01-20 06:43:30'),
	(26, 'shifou_types', '是否维修', 2, '已维修', NULL, NULL, '2022-01-20 06:43:30'),
	(27, 'weixiu_types', '维修类型名称', 5, '维修类型5', NULL, '', '2022-01-21 07:09:19');

DROP TABLE IF EXISTS `fangke`;
CREATE TABLE IF NOT EXISTS `fangke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `danyuan_types` int DEFAULT NULL COMMENT '单元 Search111 ',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '访客姓名 Search111 ',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '访客手机号 Search111 ',
  `fangke_id_number` varchar(200) DEFAULT NULL COMMENT '访客身份证号 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `fangke_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `fangke_content` text COMMENT '来访事由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='访客';

DELETE FROM `fangke`;
INSERT INTO `fangke` (`id`, `danyuan_types`, `fangke_name`, `fangke_phone`, `fangke_id_number`, `sex_types`, `fangke_photo`, `fangke_content`, `insert_time`, `create_time`) VALUES
	(1, 5, '张1', '17703786901', '410224199610232001', 1, 'http://localhost:8080/xiyanghong/upload/1642748983934.jpg', '<p>看朋友</p>', '2022-01-21 07:09:50', '2022-01-21 07:09:50');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/xiyanghong/upload/1642734073396.jpg', 1, '2022-01-20 06:43:29', '<p>公告详情1111</p>', '2022-01-20 06:43:29'),
	(2, '公告内容2', 'http://localhost:8080/xiyanghong/upload/1642749004164.jpg', 1, '2022-01-21 07:10:12', '<p>公告内容2的详情</p>', '2022-01-21 07:10:12');

DROP TABLE IF EXISTS `huiyishi`;
CREATE TABLE IF NOT EXISTS `huiyishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议室编号',
  `huiyishi_address` varchar(200) DEFAULT NULL COMMENT '会议室地址  Search111',
  `huiyishi_size` varchar(200) DEFAULT NULL COMMENT '会议室大小',
  `huiyishi_types` int DEFAULT NULL COMMENT '会议室类型',
  `zhuangtai_types` int DEFAULT NULL COMMENT '会议室状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='会议室';

DELETE FROM `huiyishi`;
INSERT INTO `huiyishi` (`id`, `huiyishi_uuid_number`, `huiyishi_address`, `huiyishi_size`, `huiyishi_types`, `zhuangtai_types`, `create_time`) VALUES
	(5, '164424224920714', '会议室地址5', '会议室大小5', 1, 1, '2022-02-07 13:57:29'),
	(6, '164424224920716', '会议室地址6', '会议室大小6', 2, 2, '2022-02-07 13:57:29'),
	(7, '16442422492071', '会议室地址7', '会议室大小7', 1, 1, '2022-02-07 13:57:29'),
	(8, '164424224920720', '会议室地址8', '会议室大小8', 2, 2, '2022-02-07 13:57:29'),
	(9, '16442422492075', '会议室地址9', '会议室大小9', 1, 1, '2022-02-07 13:57:29'),
	(10, '16442422492073', '会议室地址10', '会议室大小10', 1, 1, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `huiyishi_shenqing`;
CREATE TABLE IF NOT EXISTS `huiyishi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `huiyishi_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `huiyishi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='会议室申请';

DELETE FROM `huiyishi_shenqing`;
INSERT INTO `huiyishi_shenqing` (`id`, `jiaoshi_id`, `huiyishi_id`, `insert_time`, `huiyishi_shenqing_yesno_types`, `create_time`) VALUES
	(17, NULL, 9, '2022-02-08 06:46:10', 2, '2022-02-08 06:46:10'),
	(18, 5, 6, '2022-02-08 07:49:35', 2, '2022-02-08 07:49:35'),
	(19, NULL, 7, '2022-02-08 07:52:35', 2, '2022-02-08 07:52:35');

DROP TABLE IF EXISTS `jiaofei`;
CREATE TABLE IF NOT EXISTS `jiaofei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `danyuan_types` int DEFAULT NULL COMMENT '单元 Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '缴费名称',
  `jiaofei_time` varchar(200) DEFAULT NULL COMMENT '缴费月份 Search111 ',
  `wuye_money` decimal(10,2) DEFAULT NULL COMMENT '物业费',
  `fangzu_money` decimal(10,2) DEFAULT NULL COMMENT '房租费',
  `zong_money` decimal(10,2) DEFAULT NULL COMMENT '总费用',
  `jiaofei_types` int DEFAULT NULL COMMENT '是否缴费 Search111 ',
  `jiaofei_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='缴费';

DELETE FROM `jiaofei`;
INSERT INTO `jiaofei` (`id`, `danyuan_types`, `shangpin_name`, `jiaofei_time`, `wuye_money`, `fangzu_money`, `zong_money`, `jiaofei_types`, `jiaofei_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '101单元2022年1月缴费', '2022-01', 300.00, 400.00, 700.00, 1, '<p>无</p>', '2022-01-20 08:18:17', '2022-01-20 08:18:17'),
	(2, 8, '114单元2022年1月缴费', '2022-01', 200.00, 400.00, 600.00, 1, '<p>备注1</p>', '2022-01-20 08:18:17', '2022-01-20 08:18:17'),
	(3, 7, '113号2022年1月缴费', '2022-01', 400.00, 900.00, 1300.00, 2, '<p>无</p>', '2022-01-21 07:10:58', '2022-01-21 07:10:58');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `sex_types`, `jiaoshi_id_number`, `jiaoshi_phone`, `jiaoshi_photo`, `jiaoshi_delete`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 1, '410224199610232001', '17703786901', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283669105.jpg', 1, '2022-02-07 13:57:29'),
	(2, '教师2', '123456', '教师姓名2', 2, '410224199610232002', '17703786902', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283657139.jpg', 1, '2022-02-07 13:57:29'),
	(3, '教师3', '123456', '教师姓名3', 1, '410224199610232003', '17703786903', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283646392.jpg', 1, '2022-02-07 13:57:29'),
	(4, '教师4', '123456', '教师a3', NULL, '431332199911211111', '13344225151', NULL, 2, '2022-02-08 07:45:53'),
	(5, '教师5', '123456', '教师a4', 2, '432114199911214111', '13311442141', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306452613.jpg', 2, '2022-02-08 07:47:18');

DROP TABLE IF EXISTS `jiaoshi_lizhi`;
CREATE TABLE IF NOT EXISTS `jiaoshi_lizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '离职申请时间',
  `lizhi_content` text COMMENT '离职原因',
  `jiaoshi_lizhi_yesno_types` int DEFAULT NULL COMMENT '审核结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='离职申请';

DELETE FROM `jiaoshi_lizhi`;
INSERT INTO `jiaoshi_lizhi` (`id`, `jiaoshi_id`, `insert_time`, `lizhi_content`, `jiaoshi_lizhi_yesno_types`, `create_time`) VALUES
	(1, 1, '2022-02-07 13:57:29', '离职原因1', 3, '2022-02-07 13:57:29'),
	(2, 3, '2022-02-07 13:57:29', '离职原因2', 3, '2022-02-07 13:57:29'),
	(13, 5, '2022-02-08 07:49:17', '<p>2312312312</p>', 2, '2022-02-08 07:49:17');

DROP TABLE IF EXISTS `jiaoshi_qingjia`;
CREATE TABLE IF NOT EXISTS `jiaoshi_qingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `jiaoshi_qingjia_yesno_types` int DEFAULT NULL COMMENT '审核结果 Search111',
  `qingjia_content` text COMMENT '请假原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='请假申请';

DELETE FROM `jiaoshi_qingjia`;
INSERT INTO `jiaoshi_qingjia` (`id`, `jiaoshi_id`, `insert_time`, `qingjia_time`, `jiaoshi_qingjia_yesno_types`, `qingjia_content`, `create_time`) VALUES
	(1, 3, '2022-02-07 13:57:29', '2022-02-07 13:57:29', 3, '请假原因1', '2022-02-07 13:57:29'),
	(2, 1, '2022-02-07 13:57:29', '2022-02-07 13:57:29', 1, '请假原因2', '2022-02-07 13:57:29'),
	(13, 5, '2022-02-08 07:48:55', '2022-02-24 16:00:00', 2, '<p><span style="color: rgb(96, 98, 102);">请假原因123123</span></p>', '2022-02-08 07:48:55');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuke_id` int DEFAULT NULL COMMENT '租客',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='留言';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `zuke_id`, `liuyan_name`, `liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '标题1', '省政协委员，市政协主席、党组书记王加培表示，代省长许昆林所作的政府工作报告全面客观地总结了去年取得的成绩，部署了今年的重点工作和目标任务，为我省下一步的发展指明了方向。报告政治站位高、把握大势准。报告提到盛虹炼化一体化项目、连徐高铁、花果山机场、连云港入选“十四五”首批国家物流枢纽、中哈物流合作基地建设步伐加快、连云港新亚欧陆海联运通道建设取得新成效等，听了之后深受鼓舞。我们一定要深刻领会，将其转化为积极履职尽责的强大动力。市政协将在市委的坚强领导下，围绕报告提出的各项任务要求，坚持建言资政和凝聚共识双向发力，努力发挥专门协商机构作用，奋力书写港城新时代“后发先至”的政协答卷省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量', NULL, '2022-01-21 01:18:36', NULL, '2022-01-21 01:18:36'),
	(2, 1, 't', '省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量', '省政协委员、市政协副主席、民进连云港市委主委徐善明表示，省政府工作报告务实，重点突出，亮点纷呈，听了后令人振奋。报告总结成绩实实在在，分析问题、研判形势明明白白，安排部署工作妥妥当当。今后他将在围绕中心，服务大局中展现新作为，努力助推高质量发展。同时，充分发挥界别优势，找准和全局工作的结合点，更加有针对性地聚焦教育、文化等领域，为推动教育强市、文化强市建设贡献更多力量', '2022-01-21 02:01:18', '2022-01-21 02:03:25', '2022-01-20 09:07:11'),
	(3, 1, 't', '888', '省政协委员、市政协副主席、民进连云港市委主委徐善明表示，省政府工作报告务实，重点突出，亮点纷呈，听了后令人振奋。报告总结成绩实实在在，分析问题、研判形势明明白白，安排部署工作妥妥当当。今后他将在围绕中心，服务大局中展现新作为，努力助推高质量发展。同时，充分发挥界别优势，找准和全局工作的结合点，更加有针对性地聚焦教育、文化等领域，为推动教育强市、文化强市建设贡献更多力量', '2022-01-21 02:01:18', '2022-01-21 02:03:25', '2022-01-20 09:07:11'),
	(4, 1, '刘安333', '阿斯蒂芬阿萨德奥迪\n萨达阿萨德\n萨达 ', NULL, '2022-01-21 06:48:55', NULL, '2022-01-21 06:48:55'),
	(5, 2, '留言3', '留言内容33333', '回复内容333333', '2022-01-21 07:06:16', '2022-01-21 07:24:15', '2022-01-21 07:05:28'),
	(6, 1, '6666', '666', NULL, '2024-04-19 12:56:34', NULL, '2024-04-19 12:56:34');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'slk3dpdvjxe2m4dnv3g33qe4lwtea8s7', '2022-01-20 07:23:58', '2024-04-19 13:54:43'),
	(2, 1, 'a1', 'zuke', '租客', 'wkcckdaetowsavjfkti34s7wk3ztg8h0', '2022-01-20 09:27:32', '2024-04-19 13:56:17'),
	(3, 2, 'a2', 'zuke', '租客', 'vbkj5674zp3n5178wej6vvw74l1gw62c', '2022-01-21 07:05:54', '2022-01-21 08:35:55');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `weixiu`;
CREATE TABLE IF NOT EXISTS `weixiu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuke_id` int DEFAULT NULL COMMENT '租客',
  `weixiu_name` varchar(200) DEFAULT NULL COMMENT '维修名称 Search111 ',
  `weixiu_types` int DEFAULT NULL COMMENT '维修类型 Search111 ',
  `weixiu_content` text COMMENT '申请详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `shifou_types` int DEFAULT NULL COMMENT '是否维修 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='维修';

DELETE FROM `weixiu`;
INSERT INTO `weixiu` (`id`, `zuke_id`, `weixiu_name`, `weixiu_types`, `weixiu_content`, `insert_time`, `shifou_types`, `create_time`) VALUES
	(1, 1, '屋子里的电灯坏了', 1, '<p>我是101室的，电灯坏了，麻烦过来维修下</p>', '2022-01-21 02:40:11', 2, '2022-01-20 09:07:11'),
	(3, 2, '维修2', 5, '<p>维修2的内容详情</p>', '2022-01-21 07:38:27', 1, '2022-01-21 07:38:27');

DROP TABLE IF EXISTS `xingcheng`;
CREATE TABLE IF NOT EXISTS `xingcheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuke_id` int DEFAULT NULL COMMENT '用户',
  `xingcheng_photo` varchar(200) DEFAULT NULL COMMENT '健康码 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '行程轨迹 Search111  ',
  `xingcheng_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '登记时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='行程轨迹';

DELETE FROM `xingcheng`;
INSERT INTO `xingcheng` (`id`, `zuke_id`, `xingcheng_photo`, `gonggao_name`, `xingcheng_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 'http://localhost:8080/xiyanghong/upload/1642750716059.jpg', '去了地点3', '<p>备注无</p>', '2022-01-21 07:38:48', '2022-01-21 07:38:48');

DROP TABLE IF EXISTS `yinzhang`;
CREATE TABLE IF NOT EXISTS `yinzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '印章编号',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='印章';

DELETE FROM `yinzhang`;
INSERT INTO `yinzhang` (`id`, `yinzhang_uuid_number`, `yinzhang_name`, `create_time`) VALUES
	(1, '164424224924611', '印章名称1', '2022-02-07 13:57:29'),
	(9, '164424224924611', '印章名称9', '2022-02-07 13:57:29'),
	(15, '1644306803398', '教师a4添加的印章信息', NULL);

DROP TABLE IF EXISTS `yinzhangadd_shenqing`;
CREATE TABLE IF NOT EXISTS `yinzhangadd_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `yinzhang_file` varchar(200) DEFAULT NULL COMMENT '材料',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhangadd_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `yinzhang_shenqing_content` text COMMENT '添加原因 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='印章添加申请';

DELETE FROM `yinzhangadd_shenqing`;
INSERT INTO `yinzhangadd_shenqing` (`id`, `jiaoshi_id`, `yinzhang_name`, `yinzhang_file`, `insert_time`, `yinzhangadd_shenqing_yesno_types`, `yinzhang_shenqing_content`, `create_time`) VALUES
	(13, 5, '教师a4添加的印章信息', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306617591.index', '2022-02-08 07:50:22', 2, '<p><span style="color: rgb(96, 98, 102);">添加原因11111</span></p>', '2022-02-08 07:50:22');

DROP TABLE IF EXISTS `yinzhang_shenqing`;
CREATE TABLE IF NOT EXISTS `yinzhang_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `yinzhang_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhang_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='印章申请';

DELETE FROM `yinzhang_shenqing`;
INSERT INTO `yinzhang_shenqing` (`id`, `jiaoshi_id`, `yinzhang_id`, `insert_time`, `yinzhang_shenqing_yesno_types`, `create_time`) VALUES
	(1, 3, 1, '2022-02-07 13:57:29', 1, '2022-02-07 13:57:29'),
	(14, 5, 15, '2022-02-08 07:54:26', 2, '2022-02-08 07:54:26');

DROP TABLE IF EXISTS `zuke`;
CREATE TABLE IF NOT EXISTS `zuke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zuke_name` varchar(200) DEFAULT NULL COMMENT '租客姓名 Search111 ',
  `zuke_phone` varchar(200) DEFAULT NULL COMMENT '租客手机号 Search111 ',
  `zuke_id_number` varchar(200) DEFAULT NULL COMMENT '租客身份证号 Search111 ',
  `zuke_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zuke_photo` varchar(200) DEFAULT NULL COMMENT '租客头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `danyuan_types` int NOT NULL COMMENT '单元号 Search111 ',
  `shiyong_types` int DEFAULT NULL COMMENT '使用',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='租客';

DELETE FROM `zuke`;
INSERT INTO `zuke` (`id`, `username`, `password`, `zuke_name`, `zuke_phone`, `zuke_id_number`, `zuke_email`, `zuke_photo`, `sex_types`, `danyuan_types`, `shiyong_types`, `new_money`, `create_time`) VALUES
	(1, '租客1', '123456', '张1', '17703786901', '410224199610232001', '11@qq.com', 'http://localhost:8080/xiyanghong/upload/1642670872532.jpg', 2, 8, 2, 0.00, '2022-01-20 09:07:11'),
	(2, '租客2', '123456', '张1', '17703786902', '410224199610232002', '22@qq.com', 'http://localhost:8080/xiyanghong/upload/1642748792951.jpg', 1, 7, 2, 2700.00, '2022-01-21 07:05:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
