<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<div class="container">
	<div class="my">
		<div class="my_left">
			<?php include pubTemplate("my")?>
		</div>
		<div class="my_right">
			<div class="rc">
				<?php doAction('my_right_top')?>
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="">我的唠叨</a></li>
				</ul>
				<div>
					<form method="post" class="form text-form" action="<?php echo tsurl('weibo','add',array('ts'=>'do'))?>" enctype="multipart/form-data">
						<textarea style="width:98%;height:40px;" name="content"></textarea>
						<div style="padding:5px 0;">
							<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
							<button  class="btn btn-success"  type="submit">发布</button>
						</div>
					</form>
				</div>
				<ul>
					<?php foreach((array)$arrWeibo as $key=>$item) {?>
					<li class="mbtl">
						<a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><img title="<?php echo $item['user'][username];?>" alt="<?php echo $item['user'][username];?>" src="<?php echo $item['user'][face];?>" width="48" /></a>
					</li>
					<li class="mbtr">
						<div class="author"><a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><?php echo $item['user'][username];?></a> <?php echo $item['addtime'];?></div>
						<div class="title"><a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a></div>
						<div class="content">
							<?php if($item['photo']) { ?><a target="_blank" href="<?php echo SITE_URL;?>uploadfile/weibo/<?php echo $item['photo'];?>"><img src="<?php echo tsXimg($item['photo'],'weibo',240,'',$item['path'])?>" /></a><?php } ?>
							<?php echo $item['content'];?>
						</div>
						<p style="text-align:right;">
							<a href="<?php echo tsurl('weibo','show',array('id'=>$item['weiboid']))?>"><?php if($item['count_comment'] > '0') { ?>(<?php echo $item['count_comment'];?>)<?php } ?>回复</a>
							<?php if($TS_USER['user']['isadmin'] == 1) { ?>
							<a href="<?php echo tsurl('weibo','delete',array('weiboid'=>$item['weiboid']))?>">删除</a>
							<?php } ?>
						</p>
					</li>
					<div class="clear"></div>
					<?php }?>
				</ul>
				<div class="clear"></div>
				<div class="page"><?php echo $pageUrl;?></div>
				<div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include template('footer'); ?>