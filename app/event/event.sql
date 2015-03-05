-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 07 月 13 日 11:15
-- 服务器版本: 5.1.33-community
-- PHP 版本: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------

--
-- 表的结构 `ts_event`
--

CREATE TABLE IF NOT EXISTS `ts_event` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '活动类型ID',
  `title` char(120) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `time_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片路劲',
  `poster` char(16) NOT NULL DEFAULT '' COMMENT '海报图片',
  `areaid` int(11) NOT NULL DEFAULT '0' COMMENT '县区ID',
  `address` char(120) NOT NULL DEFAULT '' COMMENT '详细地址',
  `count_userdo` int(11) NOT NULL DEFAULT '0' COMMENT '统计参加的',
  `count_userwish` int(11) NOT NULL DEFAULT '0' COMMENT '统计感兴趣的',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐0默认1推荐',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`eventid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='活动' AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- 表的结构 `ts_event_comment`
--

CREATE TABLE IF NOT EXISTS `ts_event_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `referid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0' COMMENT '活动ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '回复内容',
  `addtime` int(11) DEFAULT '0' COMMENT '回复时间',
  PRIMARY KEY (`commentid`),
  KEY `eventid` (`eventid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='话题回复/评论' AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- 表的结构 `ts_event_type`
--

CREATE TABLE IF NOT EXISTS `ts_event_type` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `typename` varchar(64) NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='话题类型' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `ts_event_type`
--

INSERT INTO `ts_event_type` (`typeid`, `typename`) VALUES
(1, '音乐/演出'),
(2, '展览'),
(3, '电影'),
(4, '讲座/沙龙'),
(5, '戏剧/曲艺'),
(6, '生活/聚会'),
(7, '体育'),
(8, '旅行'),
(9, '公益'),
(10, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `ts_event_users`
--

CREATE TABLE IF NOT EXISTS `ts_event_users` (
  `eventid` int(11) NOT NULL DEFAULT '0' COMMENT '活动ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0加入，1感兴趣',
  `isorganizer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是组织者:0不是1是',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  KEY `eventid` (`eventid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动用户';


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
