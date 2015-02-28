<?php defined('IN_TS') or die('Access Denied.'); ?><div class="facebox bbox">
<div class="bc">
<div class="face">
<a href="<?php echo tsurl('user','space',array('id'=>$strUser['userid']))?>" rel="face" uid="<?php echo $strUser['userid'];?>"><img title="<?php echo $strUser['username'];?>" alt="<?php echo $strUser['username'];?>" src="<?php echo $strUser['face'];?>" width="48"></a>
</div>

<div class="info">
<h3><a href="<?php echo tsurl('user','space',array('id'=>$strUser['userid']))?>"><?php echo $strUser['username'];?></a></h3>
<div>

<?php if($strUser['userid'] != $TS_USER['user'][userid]) { ?>
<?php if($strUser['isfollow']) { ?>
<a class="btn btn-mini" href="javascript:void('0');" onclick="unfollow('<?php echo $strUser['userid'];?>','<?php echo $_SESSION['token'];?>');">取消关注</a>
<?php } else { ?>
<a class="btn btn-mini" href="javascript:void('0')" onclick="follow('<?php echo $strUser['userid'];?>','<?php echo $_SESSION['token'];?>');">关注</a>
<?php } ?>
<a href="<?php echo tsurl('user','message',array(ts=>add,touserid=>$strUser['userid']))?>" rel="nofollow" class="btn btn-mini">发消息</a>
<?php } ?>

</div>
</div>
<div class="clear"></div>

<ul class="other">
<li class="br"><span class="fs14"><a href="<?php echo tsurl('user','follow',array('id'=>$strUser['userid']))?>"><?php echo $strUser['count_follow'];?></a></span><br />关注</li>
<li class="br"><span class="fs14"><a href="<?php echo tsurl('user','followed',array('id'=>$strUser['userid']))?>"><?php echo $strUser['count_followed'];?></a></span><br />粉丝</li>
<li><span class="fs14"><?php echo $strUser['count_score'];?></span><br />积分</li>
</ul>

<div class="clear"></div>

<div class="fmore">

<a href="<?php echo tsurl('user','verify')?>">
<?php if($strUser['isverify']==1) { ?>
<img src="<?php echo SITE_URL;?>public/images/rz1.gif" alt="认证用户" title="认证用户" align="absmiddle" />
<?php } else { ?>
<img src="<?php echo SITE_URL;?>public/images/rz2.gif" alt="未认证用户" title="未认证用户" align="absmiddle" /> 
<?php } ?>
</a>

<br />

UID:<?php echo $strUser['userid'];?> 
<br /> 
<?php echo date('Y-m-d',$strUser['addtime'])?> 加入
<br />
角色：<a href="<?php echo tsurl('user','role')?>"><?php echo $strUser['rolename'];?></a>

<br />

性别：<?php if($strUser['sex']=='0') { ?>保密<?php } elseif ($strUser['sex']=='1') { ?>男<?php } else { ?>女<?php } ?><br />
<?php if($strUser['blog']) { ?>博客：<?php echo $strUser['blog'];?><br /><?php } ?>
<?php if($strUser['about']) { ?>关于：<?php echo nl2br(htmlspecialchars($strUser['about']))?> <br /><?php } ?>
<?php if($strUser['signed']) { ?>签名：<?php echo nl2br(htmlspecialchars($strUser['signed']))?><br /><?php } ?>
<?php if($strUser['userid'] == $TS_USER['user'][userid]) { ?>[<a href="<?php echo tsurl('my','setting',array(ts=>base))?>">修改基本信息</a>]<?php } ?>

</div>
</div>
</div>

<div class="clear"></div>

<div class="bbox">
<div class="btitle">关注的用户<span class="pl">&nbsp;(
<a href="<?php echo tsurl('user','follow',array('id'=>$strUser['userid']))?>">全部</a>
) </span>
</div>
<div class="bc">
<?php foreach((array)$arrFollowUser as $key=>$item) {?>
<dl class="obu"><dt><a class="nbg" href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>" rel="face" uid="<?php echo $item['userid'];?>"><img alt="<?php echo $item['username'];?>" class="m_sub_img" src="<?php echo $item['face'];?>" width="48" height="48" /></a></dt>
<dd><a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>"><?php echo $item['username'];?></a></dd>
</dl>
<?php }?>
</div>
</div>

<div class="bbox">
<div class="btitle">
加入的小组
<span class="pl">&nbsp;(
<a href="<?php echo tsurl('user','space',array('id'=>$strUser['userid']))?>">全部</a>
) </span>
</div>
<div class="bc">
<?php foreach((array)$arrGroup as $key=>$item) {?>
<dl class="ob"><dt><a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><img alt="<?php echo $item['groupname'];?>" class="m_sub_img" src="<?php echo $item['photo'];?>" width="48" /></a></dt>
<dd><a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['groupname'];?></a> <span>(<?php echo $item['count_user'];?>)</span>
</dd></dl>
<?php }?>
</div>
</div>

<!--广告位-->
<?php doAction('gobad','300')?>