<?php
defined('IN_TS') or die('Access Denied.');

$userid = intval($TS_USER['user']['userid']);

if($userid =='0') header("Location: ".SITE_URL.tsUrl('user','login'));

//活动类型
$arrType = $db->fetch_all_assoc("select * from ".dbprefix."event_type");

$title = '发布活动';
include template("add");