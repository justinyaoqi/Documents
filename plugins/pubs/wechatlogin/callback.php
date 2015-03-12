<?php 
defined('IN_TS') or die('Access Denied.');
include './config.php';
$arrchatlogin = require('config.php');
$wxappid=$arrchatlogin['wxappid'];
$wxappSecret=$arrchatlogin['wxappSecret']


//获取code和state
if ($_GET['code'] && $_GET['state'])_ {
	$code=trim($_GET['code']);
	$state=trim($_GET['state']);


}else{
	header("Location:http://www.bibizan.cn/index.php/user/login")
}

//获取access
$datas=wx_get_access_token($wxappid,$wxappSecret,$code);
$access_token=$datas['access_token'];
$openid=$datas['openid'];


if ($access_token) {
	$userinfos=get_user_info($access_token,$openid);
	//查询用户信息，返回session



}elseif {
	echo "获取access_token失败";
}
//返回用户信息

$openid=$userinfodata['openid'];


function wl_get_access_token($appid,$appSecret,$code)
{
	$url="https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$wxappSecret.'&code='.$code.'&grant_type=authorization_code";
	$json=http_request_json($url);
	$data=json_decode($json,true);
	if ($data['access_token']) {
		return $data;
	}else{
		return '';
	}
}
//获取微信用户信息
function get_user_info($access_token,$openid)
{
	$url="https://api.weixin.qq.com/sns/userinfo?access_token='.$access_token.'&openid=',$openid.'";
	$json=http_request_json($url);
	$data=json_decode($json,true);
	
	return $data;
}
function get_local_userinfo($id)
{
	
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