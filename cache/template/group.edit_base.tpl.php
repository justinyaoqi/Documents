<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<?php doAction('tseditor','mt')?>
<div class="container">

<div class="bbox">
<div class="bc">

<?php include template('edit_xbar'); ?>

<form method="POST" action="<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=edit_base">
<table class="commtable" style="width:100%;">
    
	<tr><th width="100">名称：</th>
    <td><input type="text" style="width:500px;" value="<?php echo $strGroup['groupname'];?>" name="groupname"><br><br></td></tr>
    <tr><th>介绍：</th>
    <td><textarea id="tseditor" style="width:500px;height:200px;" name="groupdesc"><?php echo $strGroup['groupdesc'];?></textarea><br><br></td></tr>
	
	<tr><th>标签：</th>
    <td><input type="text" value="<?php echo $strGroup['tag'];?>" name="tag"> (多个请用英文,号分割)<br><br></td></tr>
	
	
	<tr><th>加入方式：</th><td><input <?php if($strGroup['joinway']=='0') { ?>checked="select"<?php } ?> name="joinway" type="radio" value="0" />自由加入(开放小组) <input <?php if($strGroup['joinway']=='1') { ?>checked="select"<?php } ?>  name="joinway" type="radio" value="1" />禁止加入(私密小组)  <input <?php if($strGroup['joinway']=='2') { ?>checked="select"<?php } ?>  name="joinway" type="radio" value="2" />申请加入(需要审核)</td></tr>
	

	<tr><th>发帖方式：</th><td><input <?php if($strGroup['ispost']=='0') { ?>checked="select"<?php } ?> type="radio" name="ispost" value="0" />允许会员发帖 <input <?php if($strGroup['ispost']=='1') { ?>checked="select"<?php } ?> type="radio" name="ispost" value="1" />不允许会员发帖</td></tr>
	
	
	<tr><th>浏览权限：</th><td><input <?php if($strGroup['isopen']=='0') { ?>checked="select"<?php } ?> type="radio" name="isopen" value="0" />完全开放 <input <?php if($strGroup['isopen']=='1') { ?>checked="select"<?php } ?> type="radio" name="isopen" value="1" />仅组员</td></tr>
	
	<tr><th>发帖审核：</th><td><input <?php if($strGroup['ispostaudit']=='1') { ?>checked="select"<?php } ?> type="radio" name="ispostaudit" value="1" />审核 <input <?php if($strGroup['ispostaudit']=='0') { ?>checked="select"<?php } ?> type="radio" name="ispostaudit" value="0" />不审核</td></tr>
	
	
    <tr><th></th><td><br>
	
	<input type="hidden" name="groupid" value="<?php echo $strGroup['groupid'];?>" />
	
<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
	
	 <button class="btn btn-success" type="submit">更新设置</button>  <a href="<?php echo tsurl('group','show',array('id'=>$strGroup['groupid']))?>">返回</a>
	 
    </td></tr></table>
</form>

</div>
</div>


</div>
<?php include template('footer'); ?>