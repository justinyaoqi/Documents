<?php 
defined('IN_TS') or die('Access Denied.');
//获取的微信登陆appid
$wlarr=fileRead('config.php');
$appid=$wlarr['appid'];
$appSecret=$wlarr['appSecret'];
$code=';';  //远程获取的code
function wl_get_access_token(,$appid,$appSecret,$code)
{
	$url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$appSecret."&code=".$code."&grant_type=authorization_code";
	$json=http_request_json($url);
	$data=json_decode($json,true);
	if ($data['access_token']) {
		return $data['access_token'];
	}else{
		return '获取access_token失败';
	}
}


function http_request_json($url){    
   $ch = curl_init();  
   curl_setopt($ch, CURLOPT_URL,$url);  
   curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);  
   curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);  
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);  
   $result = curl_exec($ch);  
   curl_close($ch);  
   return $result;    
}  
 ?>