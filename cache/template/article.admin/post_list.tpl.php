<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template("admin/header");?>

<!--main-->
<div class="midder">

<?php include template("admin/menu");?>

<div class="page"><?php echo $pageUrl;?></div>

<table>
<tr class="old">
<td width="100">ID</td><td>userid</td><td>title</td> <td>操作</td>
</tr>

<?php foreach((array)$arrArticle as $key=>$item) {?>
<tr><td><?php echo $item['articleid'];?></td><td><?php echo $item['userid'];?></td><td><a target="_blank" href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo htmlspecialchars($item['title'])?></a></td><td>

<a href="<?php echo SITE_URL;?>index.php?app=article&ac=admin&mg=post&ts=isaudit&articleid=<?php echo $item['articleid'];?>">
<?php if($item['isaudit']==0) { ?>
取消审核
<?php } else { ?>
<font color="red">审核</font>
<?php } ?>
</a>

<a href="<?php echo SITE_URL;?>index.php?app=article&ac=admin&mg=post&ts=isrecommend&articleid=<?php echo $item['articleid'];?>"><?php if($item['isrecommend']==1) { ?>
取消推荐
<?php } else { ?>
推荐
<?php } ?></a>

<a onclick="return confirm('确定删除?')" href="<?php echo SITE_URL;?>index.php?app=article&ac=admin&mg=post&ts=delete&articleid=<?php echo $item['articleid'];?>">删除</a>
</td></tr>
<?php }?>

</table>

</div>

<?php include template("admin/footer");?>