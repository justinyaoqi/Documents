<?php 
defined('IN_TS') or die('Access Denied.');
//用户是否登录
$userid = aac('user')->isLogin();
switch($ts){
	//手机端调用接口
	case 'ilist':
		$topicid = intval($_GET['id']);

		$strTopic = $new['group']->find('group_topic',array(
							'topicid'=>$topicid,
		));
		getiJson($strTopic,$error=0);
		break;
	case "ido":
		//过滤内容开始
		if($TS_USER['user']['isadmin']==0){
			aac('system')->antiWord($content);
		}
		//过滤内容结束
		
		if($content==''){
			tsNotice('没有任何内容是不允许你通过滴^_^');
		}else{
			$commentid = $new['group']->create('group_topic_comment',array(
				'topicid'	=> $topicid,
				'userid'	=> $userid,
				'content'	=> $content,
				'addtime'=> time(),
			));
			
			//统计评论数
			$count_comment = $new['group']->findCount('group_topic_comment',array(
				'topicid'=>$topicid,
			));
			
			//更新帖子最后回应时间和评论数			
			$new['group']->update('group_topic',array(
				'topicid'=>$topicid,
			),array(
				'count_comment'=>$count_comment,
				'uptime'=>time(),
			));
			
			//对积分进行处理
			aac('user')->doScore($app,$ac,$ts);
			
			//发送系统消息(通知楼主有人回复他的帖子啦)			
			$strTopic = $new['group']->find('group_topic',array(
				'topicid'=>$topicid,
			));
			
			if($strTopic['userid'] != $TS_USER['user']['userid']){
			
				$msg_userid = '0';
				$msg_touserid = $strTopic['userid'];
				$msg_content = '你的帖子：《'.$strTopic['title'].'》新增一条评论，快去看看给个回复吧^_^ <br /><a href="'.tsUrl('group','topic',array('id'=>$topicid)).'">'
											.tsUrl('group','topic',array('id'=>$topicid)).'</a>';
				aac('message')->sendmsg($msg_userid,$msg_touserid,$msg_content);
				
			}
			
			//feed开始
			$feed_template = '<span class="pl">评论了帖子：<a href="{link}">{title}</a></span><div class="quote"><span class="inq">{content}</span> <span><a class="j a_saying_reply" href="{link}" rev="unfold">回应</a></span></div>';
			$feed_data = array(
				'link'	=> tsurl('group','topic',array('id'=>$topicid)),
				'title'	=> $strTopic['title'],
				'content'	=> cututf8(t(tsDecode($content)),'0','50'),
			);
			aac('feed')->add($userid,$feed_template,$feed_data);
			//feed结束
			
			//QQ分享
			$arrShare = array(
				'content'=>t($content).'[比比赞]'.tsUrl('group','topic',array('id'=>$topicid)),
			);
			doAction('qq_share',$arrShare);
			//微博分享
			doAction('weibo_share',t($content).'[比比赞]'.tsUrl('group','topic',array('id'=>$topicid)));
			
			header("Location: ".tsUrl('group','topic',array('id'=>$topicid)));
		}	
		break;
	case "idelete":
		
		$commentid = intval($_GET['commentid']);
		
		$strComment = $new['group']->find('group_topic_comment',array(
			'commentid'=>$commentid,
		));
		
		$strTopic = $new['group']->find('group_topic',array(
			'topicid'=>$strComment['topicid'],
		));
		
		$strGroup = $new['group']->find('group',array(
			'groupid'=>$strTopic['groupid'],
		));
		
		if($strTopic['userid']==$userid || $strGroup['userid']==$userid || $TS_USER['user']['isadmin']==1 || $strComment['userid']==$userid){
			
			$new['group']->delComment($commentid);
			
			//统计评论数
			$count_comment = $new['group']->findCount('group_topic_comment',array(
				'topicid'=>$strTopic['topicid'],
			));
			
			//更新帖子最后回应时间和评论数			
			$new['group']->update('group_topic',array(
				'topicid'=>$strTopic['topicid'],
			),array(
				'count_comment'=>$count_comment,
			));
			
			// 扣除用户相应的积分，删除评论扣2分
			aac('user')->delScore($strComment['userid'],'删除帖子评论',2);
		}
		
		break;
	//添加评论
	case "do":
		if($_POST['token'] != $_SESSION['token']) {
			tsNotice('非法操作！');
		}
		
		$authcode = strtolower($_POST['authcode']);
		
		if ($TS_SITE ['base'] ['isauthcode']) {
			if ($authcode != $_SESSION ['verify']) {
				tsNotice ( "验证码输入有误，请重新输入！" );
			}
		}
		
		$topicid	= intval($_POST['topicid']);
		$content	= tsClean($_POST['content']);
		
		
		
		//过滤内容开始
		if($TS_USER['user']['isadmin']==0){
			aac('system')->antiWord($content);
		}
		//过滤内容结束
		
		if($content==''){
			tsNotice('没有任何内容是不允许你通过滴^_^');
		}else{
			$commentid = $new['group']->create('group_topic_comment',array(
				'topicid'	=> $topicid,
				'userid'	=> $userid,
				'content'	=> $content,
				'addtime'=> time(),
			));
			
			//统计评论数
			$count_comment = $new['group']->findCount('group_topic_comment',array(
				'topicid'=>$topicid,
			));
			
			//更新帖子最后回应时间和评论数			
			$new['group']->update('group_topic',array(
				'topicid'=>$topicid,
			),array(
				'count_comment'=>$count_comment,
				'uptime'=>time(),
			));
			
			//对积分进行处理
			aac('user')->doScore($app,$ac,$ts);
			
			//发送系统消息(通知楼主有人回复他的帖子啦)			
			$strTopic = $new['group']->find('group_topic',array(
				'topicid'=>$topicid,
			));
			
			if($strTopic['userid'] != $TS_USER['user']['userid']){
			
				$msg_userid = '0';
				$msg_touserid = $strTopic['userid'];
				$msg_content = '你的帖子：《'.$strTopic['title'].'》新增一条评论，快去看看给个回复吧^_^ <br /><a href="'.tsUrl('group','topic',array('id'=>$topicid)).'">'
											.tsUrl('group','topic',array('id'=>$topicid)).'</a>';
				aac('message')->sendmsg($msg_userid,$msg_touserid,$msg_content);
				
			}
			
			//feed开始
			$feed_template = '<span class="pl">评论了帖子：<a href="{link}">{title}</a></span><div class="quote"><span class="inq">{content}</span> <span><a class="j a_saying_reply" href="{link}" rev="unfold">回应</a></span></div>';
			$feed_data = array(
				'link'	=> tsurl('group','topic',array('id'=>$topicid)),
				'title'	=> $strTopic['title'],
				'content'	=> cututf8(t(tsDecode($content)),'0','50'),
			);
			aac('feed')->add($userid,$feed_template,$feed_data);
			//feed结束
			
			//QQ分享
			$arrShare = array(
				'content'=>t($content).'[ThinkSAAS社区]'.tsUrl('group','topic',array('id'=>$topicid)),
			);
			doAction('qq_share',$arrShare);
			//微博分享
			doAction('weibo_share',t($content).'[ThinkSAAS社区]'.tsUrl('group','topic',array('id'=>$topicid)));
			
			header("Location: ".tsUrl('group','topic',array('id'=>$topicid)));
		}	
	
		break;
		
	//删除评论

	case "delete":
		
		$commentid = intval($_GET['commentid']);
		
		$strComment = $new['group']->find('group_topic_comment',array(
			'commentid'=>$commentid,
		));
		
		$strTopic = $new['group']->find('group_topic',array(
			'topicid'=>$strComment['topicid'],
		));
		
		$strGroup = $new['group']->find('group',array(
			'groupid'=>$strTopic['groupid'],
		));
		
		if($strTopic['userid']==$userid || $strGroup['userid']==$userid || $TS_USER['user']['isadmin']==1 || $strComment['userid']==$userid){
			
			$new['group']->delComment($commentid);
			
			//统计评论数
			$count_comment = $new['group']->findCount('group_topic_comment',array(
				'topicid'=>$strTopic['topicid'],
			));
			
			//更新帖子最后回应时间和评论数			
			$new['group']->update('group_topic',array(
				'topicid'=>$strTopic['topicid'],
			),array(
				'count_comment'=>$count_comment,
			));
			
			// 扣除用户相应的积分，删除评论扣2分
			aac('user')->delScore($strComment['userid'],'删除帖子评论',2);
			
			
			
		}
		
		//跳转回到帖子页
		header("Location: ".tsUrl('group','topic',array('id'=>$strComment['topicid'])));
		
		break;
}