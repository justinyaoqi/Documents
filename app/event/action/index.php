<?php 
defined('IN_TS') or die('Access Denied.');

$arrEventType= fileRead('app/event/action/types.php');

//推荐活动
$arrEvents = $db->fetch_all_assoc("select eventid from ".dbprefix."event where `isrecommend`='1' order by addtime desc limit 7");
foreach($arrEvents as $item){
	$arrEvent[] = $new['event']->getEventByEventid($item['eventid']);
}

//活动小组
$arrEventGroup = $db->fetch_all_assoc("select groupid from ".dbprefix."event_group_index group by groupid");

if(is_array($arrEventGroup)){
	foreach($arrEventGroup as $item){
		$arrGroup[] = aac('group',$db)->getOneGroup($item['groupid']);
	}
}

$title = '活动';
include template("index");