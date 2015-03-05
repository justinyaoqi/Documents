<?php 
defined('IN_TS') or die('Access Denied.');

$arrDouban = fileRead('data/plugins_pubs_wechatlogin.php');
if($arrDouban==''){
$arrDouban = $tsMySqlCache->get('plugins_pubs_wechatlogin');
}

define('WL_KEY', $arrDouban['key']);
define('WL_SECRET', $arrDouban['secret']);
define('WL_REDIRECT', $TS_SITE['base']['link_url'].'index.php?app=pubs&ac=plugin&plugin=douban&in=callback');

define('WL_SCOPE', 'douban_basic_common,book_basic_r,book_basic_w');
define('WL_STATE', 'Something');
