<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>

<!--main-->
<div class="container">


<div class="bbox mh400">


<div class="bc">
<?php if(intval($strUser['isverify'])==0 && intval($TS_SITE['base']['isverify'])==1) { ?>
<div class="alert">提示：你必须通过Email验证才可以正常使用本社区</div>
<?php } ?>
<?php if($strUser['isverify']==1) { ?>
<div class="verify_email">
您已经通过Email验证！现在可以随便点点看看我们的社区！
</div>

<?php } else { ?>

<div class="verify_email">

<h3>验证Email:</h3>
<p><input type="email" disabled value="<?php echo $strUser['email'];?>" /> <a class="btn" href="<?php echo tsurl('user','verify',array('ts'=>'post','token'=>$_SESSION['token']))?>">开始验证</a>  
</p>


<h3>Email不对吗？更换帐号:</h3>
<form method="post" action="<?php echo tsurl('user','verify',array('ts'=>'setemail'))?>">
<p>
<input type="email" name="email" /> 
<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
<input type="submit" value="提交修改" /></p>
</form>

</div>

<?php } ?>
</div>

</div>



</div>

<?php include template('footer'); ?>
