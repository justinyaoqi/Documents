<?php 
defined('IN_TS') or die('Access Denied.');
include './config.php';
$arrchatlogin = require('config.php');
var_dump($arrchatlogin );
$wxappid=$arrchatlogin['wxappid'];


//点击按钮请求url数据get_file_content();
//$urlencode=urlencode(WL_REDIRECT);
 $urle=urlencode("bibizan.cn/index.php?app=pubs&ac=plugin&plugin=wechatlogin&in=callback");
 $urls="https://open.weixin.qq.com/connect/qrconnect?appid=".$wxappid."&redirect_uri=".$urle."&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect";
 //echo urldecode('https://open.weixin.qq.com/connect/qrconnect?appid=wx6d56e4f25ff79b77&redirect_uri=https%3A%2F%2Fbibizan.com%2Findex.php%3Fapp%3Dpubs%26ac%3Dplugin%26plugin%3Dwechatlogin%26in%3Dcallback&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect');
 echo $urls;
 $data=file_get_contents($urls);
 var_dump($data);
 exit();

