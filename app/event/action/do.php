<?php
defined('IN_TS') or die('Access Denied.');
	switch($ts){
		//发布活动
		case "add":
			$userid = intval($TS_USER['user']['userid']);
			$title = h($_POST['title']);
			$typeid = $_POST['typeid'];
			$time_start = $_POST['time_start'];
			$time_end = $_POST['time_end'];
			$address = $_POST['address'];
			$content = trim($_POST['content']);
			
			if($userid == '0' || $title=='' || $time_end <=$time_start || $address=='' || $content==''){
				qiMsg("活动信息不符合要求！");
			}
			
			$eventData = array(
				'userid'	=> $userid,
				'title'	=> $title,
				'typeid' => $typeid,
				'time_start'	=> $time_start,
				'time_end'	=> $time_end,
				'areaid'	=> 0,
				'address'	=> $address,
				'content' => $content,
				'addtime'	=> time(),
			);
			
			$eventid = $db->insertArr($eventData,dbprefix.'event');
			
			//更新统计活动分类缓存
			$arrTypess = $db->fetch_all_assoc("select * from ".dbprefix."event_type");
			foreach($arrTypess as $key=>$item){
				$event = $db->once_fetch_assoc("select count(eventid) from ".dbprefix."event where typeid='".$item['typeid']."'");
				$arrTypes['list'][] = array(
					'typeid'	=> $item['typeid'],
					'typename'	=> $item['typename'],
					'count_event'	=> $event['count(eventid)'],
				);
			}
			
			$eventNum = $db->once_fetch_assoc("select count(eventid) from ".dbprefix."event");
			$arrTypes['count'] = $eventNum['count(eventid)'];
			
			//生成缓存文件
			fileWrite('types.php','app/event/action',$arrTypes);
			
			//上传海报图片 
			if (!empty($_FILES)) {
			
				$uptypes = array('jpg','gif','png');
				
				//1000个文件一个目录 
				$menu2=intval($eventid/1000);
				$menu1=intval($menu2/1000);
				$menu = $menu1.'/'.$menu2;
				
				$newdir = $menu;
				$dest_dir='uploadfile/event/'.$newdir;

				createFolders($dest_dir);
				
				$photoname = $_FILES["photo"]['name'];
				
				$arrType = explode('.',$photoname);
				$phototype = $arrType[1];
				
				if (in_array($phototype,$uptypes)) {
					//上传图片
					$fileInfo=pathinfo($photoname);
					$extension=$fileInfo['extension'];
					$newphotoname = $eventid.'.'.$extension;
					$dest=$dest_dir.'/'.$newphotoname;
					move_uploaded_file($_FILES['photo']['tmp_name'], iconv("UTF-8","gb2312",$dest));
					chmod($dest, 0777); 
					
					$poster = $newdir.'/'.$newphotoname;
					
					$db->query("update ".dbprefix."event set `path`='$menu',`poster`='$poster' where eventid='$eventid'");
					
				}
			}
			
			header("Location: ".SITE_URL."index.php?app=event&ac=show&eventid=".$eventid);
			
			break;
	
		//参加或者感兴趣活动
		case "dowish":
			$userid = $TS_USER['user']['userid'];
			$eventid = $_POST['eventid'];
			$status = $_POST['status'];
			
			$userNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and userid='$userid'");
			
			if($userid == ''){
				echo '0';return false;
			}elseif($userNum > '0'){
				echo '1';
			}else{
				$db->query("insert into ".dbprefix."event_users (`eventid`,`userid`,`status`,`addtime`) values ('$eventid','$userid','$status','".time()."')");
				//统计一下参加的
				$userDoNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='0'");
				//统计感兴趣的
				$userWishNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='1'");
				
				$db->query("update ".dbprefix."event set `count_userdo`='$userDoNum',`count_userwish`='$userWishNum' where eventid='$eventid'");
				
				echo '2';
			}
			
			break;
			
		//取消参加活动
		case "cancel":
			
			$eventid = $_POST['eventid'];
			$userid	= $_POST['userid'];
			
			$db->query("delete from ".dbprefix."event_users where eventid='$eventid' and userid='$userid'");
			//统计一下参加的
			$userDoNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='0'");
			//统计感兴趣的
			$userWishNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='1'");
			
			$db->query("update ".dbprefix."event set `count_userdo`='$userDoNum',`count_userwish`='$userWishNum' where eventid='$eventid'");
			
			echo '1';
			
			break;
			
		//参加活动
		case "do":
			$eventid = $_POST['eventid'];
			$userid	= $_POST['userid'];
			$db->query("update ".dbprefix."event_users set `status`='0' where eventid='$eventid' and userid='$userid'");
			
			//统计一下参加的
			$userDoNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='0'");
			//统计感兴趣的
			$userWishNum = $db->once_num_rows("select * from ".dbprefix."event_users where eventid='$eventid' and status='1'");
			
			$db->query("update ".dbprefix."event set `count_userdo`='$userDoNum',`count_userwish`='$userWishNum' where eventid='$eventid'");
			
			echo '1';
			
			break;
			
		//编辑执行
		case "edit":
			//发布
			$eventid = $_POST['eventid'];
			$title = $_POST['title'];
			$typeid = $_POST['typeid'];
			$time_start = $_POST['time_start'];
			$time_end = $_POST['time_end'];
			$address = trim($_POST['address']);
			$content = trim($_POST['content']);
			
			$eventData = array(
				'typeid' => $typeid,
				'title'	=> $title,
				'time_start'	=> $time_start,
				'time_end'	=> $time_end,
				'address'	=> $address,
				'content'	=> $content,
			);
			
			$db->updateArr($eventData,dbprefix."event","where eventid='$eventid'");
			
			//上传海报图片 
			if (!empty($_FILES)) {
			
				$uptypes = array('jpg','gif','png');
				
				//1000个文件一个目录 
				$menu2=intval($eventid/1000);
				$menu1=intval($menu2/1000);
				$menu = $menu1.'/'.$menu2;
				
				$newdir = $menu;
				$dest_dir='uploadfile/event/'.$newdir;

				createFolders($dest_dir);
				
				$photoname = $_FILES["photo"]['name'];
				
				$arrType = explode('.',$photoname);
				$phototype = $arrType[1];
				
				if (in_array($phototype,$uptypes)) {
					//上传图片
					$fileInfo=pathinfo($photoname);
					$extension=$fileInfo['extension'];
					$newphotoname = $eventid.'.'.$extension;
					$dest=$dest_dir.'/'.$newphotoname;
					move_uploaded_file($_FILES['photo']['tmp_name'], iconv("UTF-8","gb2312",$dest));
					chmod($dest, 0777); 
					
					$poster = $newdir.'/'.$newphotoname;
					
					$db->query("update ".dbprefix."event set `path`='$menu',`poster`='$poster' where eventid='$eventid'");
					
				}
			}
			
			header("Location: ".SITE_URL."index.php?app=event&ac=show&eventid=".$eventid);
			
			break;
			
		//添加评论 
		case "comment":
			$eventid	= intval($_POST['eventid']);
			$content	= trim($_POST['content']);
			
			if($TS_USER['user'] == ''){
				qiMsg('请登录后再发表内容^_^','点击登录','index.php/user/login');
			}elseif(empty($content)){
				qiMsg('没有任何内容是不允许你通过滴^_^');
			}else{
				$arrData	= array(
					'eventid'			=> $eventid,
					'userid'			=> $TS_USER['user']['userid'],
					'content'	=> $content,
					'addtime'		=> time()
				);
				
				$commentid = $db->insertArr($arrData,dbprefix.'event_comment');
				
				
				//发送系统消息(通知活动组织者有人回复他的活动啦)
				$strEvent = $db->once_fetch_assoc("select * from ".dbprefix."event where eventid='$eventid'");
				if($strEvent['userid'] != $TS_USER['user']['userid']){

					$msg_userid = '0';
					$msg_touserid = $strEvent['userid'];
					$msg_content = '你的活动：《'.$strEvent['title'].'》新增一条评论，快去看看给个回复吧^_^ <br />'
												.SITE_URL.'index.php/event/show/eventid-'.$eventid;
					aac('message',$db)->sendmsg($msg_userid,$msg_touserid,$msg_content);
				
				}
				
				header("Location: ".SITE_URL."index.php/event/show/eventid-".$eventid);
				
			}	
			break;
			
		//推荐活动,取消推荐 
		case "recommend":
			$eventid = intval($_GET['eventid']);
			$isrecommend = intval($_GET['isrecommend']);
			
			$db->query("update ".dbprefix."event set `isrecommend`='$isrecommend' where `eventid`='$eventid'");
			
			qiMsg("操作成功！");
			
			break;
			
	}