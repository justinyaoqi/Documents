<?php 
defined('IN_TS') or die('Access Denied.');

$arrwechatlogin = fileRead('data/plugins_pubs_wechatlogin.php');
if($arrDouban==''){
$arrwechatlogin= $tsMySqlCache->get('plugins_pubs_wechatlogin');
}

define('WL_KEY', $arrwechatlogin['key']);
define('WL_SECRET', $arrwechatlogin['secret']);
define('WL_REDIRECT', $TS_SITE['base']['link_url'].'index.php?app=pubs&ac=plugin&plugin=wechatlogin&in=callback');

define('WL_SCOPE', 'douban_basic_common,book_basic_r,book_basic_w');
define('WL_STATE', 'Something');

