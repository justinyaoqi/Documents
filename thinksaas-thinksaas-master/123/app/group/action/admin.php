<?php
defined('IN_TS') or die('Access Denied.');

//管理入口

if($TS_USER['user']['isadmin']==1 && is_file('app/'.$app.'/action/admin/'.$mg.'.php')){
	include_once 'app/'.$app.'/action/admin/'.$mg.'.php';
}else{
	tsNotice('sorry:no index!');
}