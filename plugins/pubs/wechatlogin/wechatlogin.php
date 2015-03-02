<?php 
defined('IN_TS') or die('Access Denied.');
//require_once("config.php");

function wechatlogin_login_html(){
	echo '<p><a href="'.SITE_URL.'index.php?app=pubs&ac=plugin&plugin=wechatlogin&in=login"><img  src="'.SITE_URL.'plugins/pubs/qq/images/login.png"></a></p>';
}

 ?>