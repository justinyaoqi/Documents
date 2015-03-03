<?php 
defined('IN_TS') or die('Access Denied.');
aac('system')->isLogin();
//var_dump($_GET);
//exit();
switch ($ts) {
	case '':
		$arrOptions = $new['wechat']->findAll('wx_config');

		foreach($arrOptions as $item){
			$strOption[$item['token']] = stripslashes($item['token']);
			$strOption[$item['appid']] = stripslashes($item['appid']);
			$strOption[$item['appsecret']] = stripslashes($item['appsecret']);
			$strOption[$item['access_token']] = stripslashes($item['access_token']);
		}
		include template("admin/options");
		break;
	case 'do':
		echo "string";
		break;
	default:
		
		break;
}

