<?php 
defined('IN_TS') or die('Access Denied.');
//require_once("config.php");

function wechatlogin_login_html(){
	echo '<p><a href="'.SITE_URL.'index.php?app=pubs&ac=plugin&plugin=wechatlogin&in=login"><img  src="'.SITE_URL.'plugins/pubs/wechatlogin/wx_login.png"></a></p>';
}

function home_login_wechatlogin(){
	echo '<a href="'.SITE_URL.'index.php?app=pubs&ac=plugin&plugin=wechatlogin&in=login"><img align="absmiddle" src="'.SITE_URL.'plugins/pubs/wechatlogin/wx_login.png" alt="豆瓣登陆" /></a> ';
}

addAction('home_login', 'home_login_wechatlogin');


addAction('user_login_footer', 'wechatlogin_login_html');
addAction('user_register_footer', 'wechatlogin_login_html');