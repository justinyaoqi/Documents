<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>

<div class="container">

<div class="row">
<div class="col-md-8">


<div class="bbox">
<div class="bc">

<?php include template('menu'); ?>

<p></p>

<?php if(intval($TS_USER['user']['userid']) >0 && intval($TS_USER['user']['userid']) != $strUser['userid']) { ?>
<div class="guest">
<img src="<?php echo SITE_URL;?>public/images/user_normal.jpg" />
<form method="post" action="<?php echo SITE_URL;?>index.php?app=user&ac=guestbook&ts=do">
<textarea style="width:100%;height:50px;" name="content"></textarea>
<br />
<input type="hidden" name="touserid" value="<?php echo $strUser['userid'];?>" />
<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
<button class="btn btn-success" type="submit">添加留言</button>
</form>
</div>
<?php } ?>
<div class="clear"></div>

<!--回复-->
<div id="reguest" style="display:none;">
<form method="post" action="<?php echo SITE_URL;?>index.php?app=user&ac=guestbook&ts=redo">
<textarea style="width:100%" name="content"></textarea>
<br />
<input id="touserid" type="hidden" name="touserid" value="0" />
<input id="reid" type="hidden" name="reid" value="0" />

<button class="btn btn-success" type="submit">回复</button>
</form>
</div>

<div class="glist">
<ul>

<?php foreach((array)$arrGuestList as $key=>$item) {?>
<li>
<a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>" rel="face" uid="<?php echo $item['user']['userid'];?>"><img src="<?php echo $item['user']['face'];?>" width="48" height="48" /></a>
<div style="width:520px;">
<p><a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>"  rel="face" uid="<?php echo $item['user']['userid'];?>"><?php echo $item['user']['username'];?></a> <?php echo $item['addtime'];?></p>
<div class="content"><?php echo nl2br(htmlspecialchars($item['content']))?></div>
<p style="text-align:right">
<?php if(intval($TS_USER['user']['userid'] == $strUser['userid'])) { ?>
<a href="#reguest" onclick="reguest('<?php echo $item['userid'];?>','<?php echo $item['id'];?>')">回复</a> <a href="<?php echo tsurl('user','guestbook',array('ts'=>'delete','gbid'=>$item['id']))?>" onclick="return confirm('确定删除?')">删除</a>
<?php } ?>
</p>
<!--回复留言-->

</div>
</li>
<?php }?>
</ul>
</div>

<div class="clear"></div>
<div class="page"><?php echo $pageUrl;?></div>

</div>
</div>
</div>

<div class="col-md-4">
<?php include template('userinfo'); ?>
</div>

</div>
</div>
<?php include template('footer'); ?>