<?php 
defined('IN_TS') or die('Access Denied.');
//echo "string";
include_once 'app/user/user.class.php';

$arrTopics = $new['group']->findAll('group_topic', null, 'count_comment desc', 'groupid,userid,topicid,title,count_comment,count_view,uptime,content', 20);
foreach ($arrTopics as $key => $item) {
	$arrTopic[] = $item;
	//$arrTopic[$key]['group'] = $new['group']->getOneGroup($item['groupid']);
	//$arrTopic[$key]['tag'] = aac('tag')->getObjTagByObjid('group', 'groupid', $item['groupid']);
	$arrTopic[$key]['user'] = aac('user')->getOneUser($item['userid'], 'face,userid');
	$arrTopic[$key]['title'] = tsTitle($item['title']);
	$arrTopic[$key]['content'] = cututf8(t(tsDecode($item['content'])), 0, 150);
} 
//echo "<pre>";
//print_r($arrTopic);
//echo "</pre>";
if ($ac == "around" && $ts=="ido"){
	getiJson($arrTopic);
}