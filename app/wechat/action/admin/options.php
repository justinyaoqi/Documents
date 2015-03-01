<?php 
defined('IN_TS') or die('Access Denied.');
aac('system')->isLogin();

switch ($ts) {
	case '':
		$arrWechatConfigs = $new['wechat']->findAll('ts_wx_config');
		foreach ($arrWechatConfigs as $key $item) {
			$arrWechatConfig[$key]['appid']=$item['appid'];
			$arrWechatConfig[$key]['token'] =$item['token'];
			$arrWechatConfig[$key]['appsecret'] =$item['appsecret'];
			$arrWechatConfig[$key]['access_token'] =$item['access_token'];
		}
		include template("admin/options");
		break;
	
	case: "change"
		
		break;
}
