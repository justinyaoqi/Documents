<?php 
defined('IN_TS') or die('Access Denied.');
aac('system')->isLogin();
$arrOptions = $new['wechat']->findAll('wx_config');
		var_dump($arrOptions);
		foreach($arrOptions as $item){
			$strOption['token'] = stripslashes($item['token']);
			$strOption['appid'] = stripslashes($item['appid']);
			$strOption['appsecret'] = stripslashes($item['appsecret']);
			$strOption['access_token'] = stripslashes($item['access_token']);
		}
$token=$strOption['token'];
$appid=$strOption['appid'];
$appid=$strOption['appsecret'];
 $options = array(
 		'token'=>'tokenaccesskey', //填写你设定的key
		'encodingaeskey'=>'encodingaeskey', //填写加密用的EncodingAESKey
		'appid'=>'wxdk1234567890', //填写高级调用功能的app id
		'appsecret'=>'xxxxxxxxxxxxxxxxxxx' //填写高级调用功能的密钥
	);
switch ($ts) {
	case '':
		
		
		include template("admin/options");
		break;
	case 'do':
		echo "string";
		break;
	default:
		
		break;
}

