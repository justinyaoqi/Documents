<?php 
defined('IN_TS') or die('Access Denied.');
aac('system')->isLogin();
$ret=new('wechat')->findAll();


switch ($ts) {
	case '':
		include template("admin/wechatmenu");
		break;
	
	case 'addmenu':
		# code...
		break;
	default:
		# code...
		break;
}
 ?>