<?php 
defined('IN_TS') or die('Access Denied.');
if ($_GET['cateid']) {
	$cateid = intval($_GET['cateid']);
	$arrCate = $new['group']->findAll('group_cate',array(
			'referid'=>$cateid,
		));
		
		
		//分类下小组
		$page = isset($_GET['page']) ? intval($_GET['page']) : '1';
		$url = tsUrl('group','cate',array('ts'=>'2','page'=>''));
		$lstart = $page*20-20;
		$arrCateGroup = $new['group']->findAll('group',array(
			'cateid'=>$cateid,
		),null,null,$lstart.',20');
		$groupNum = $new['group']->findCount('group',array(
			'cateid'=>$cateid,
		));
		$pageUrl = pagination($groupNum, 20, $page, $url);
		$title = $strCate['catename'];
		include template('allcate');
		//var_dump($arrGroup);
}
