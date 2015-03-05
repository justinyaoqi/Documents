<?php 
defined('IN_TS') or die('Access Denied.');
include 'config.php';

$urlencode=urlencode($url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$appSecret."&code=".$code."&grant_type=authorization_code";);
$appid='';
$appscecret='';
