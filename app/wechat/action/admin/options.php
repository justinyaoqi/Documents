<?php 
defined('IN_TS') or die('Access Denied.');
aac('system')->isLogin();
//var_dump($_GET);
//exit();
switch ($ts) {
	case '':
		$arrOptions = $new['wechat']->findAll('wx_config');
		//var_dump($arrOptions);
		foreach($arrOptions as $item){
			$strOption['token'] = stripslashes($item['token']);
			$strOption['appid'] = stripslashes($item['appid']);
			$strOption['appsecret'] = stripslashes($item['appsecret']);
			$strOption['access_token'] = stripslashes($item['access_token']);
		}
		//var_dump($strOption);
		include template("admin/options");
		break;
	case 'do':
		echo "string";
		break;
	default:
		
		break;
}

