<?php 
defined('IN_TS') or die('Access Denied.'); 

function article(){
	
	$arrArticle = aac('article')->findAll('article',array('isaudit'=>0),'addtime desc',null,10);
	foreach($arrArticle as $key=>$item){
		$arrArticle[$key]['title'] = tsTitle($item['title']);
		$arrArticle[$key]['content'] = cututf8 ( t(tsDecode ( $item ['content'] )), 0, 150 );
	}
	
	include template('article','article');
	
}

addAction('home_index_left','article');