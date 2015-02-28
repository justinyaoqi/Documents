<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<script src="<?php echo SITE_URL;?>public/js/jeditable/jeditable.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
$(function() {

$(".editable_textarea").editable("<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=edit_type", { 
  indicator : '<img src="'+siteUrl+'public/js/loading.gif">',
  type   : 'textarea',
  submitdata: { _method: "put"},
  select : true,
  submit : '确定',
  cancel : '取消',
  cssclass : "editable",
  tooltip   : '点击进行编辑......'
});

});

//删除帖子类型
function deltopictype(typeid){
	if(confirm("确定删除吗？")){
		$.ajax({
			type: "POST",
			url: siteUrl+'index.php?app=group&ac=do&ts=del_type',
			data: "&typeid=" + typeid,
			beforeSend: function(){},
			success: function(result){
				if(result == '0'){
					window.location.reload(); 	
				}
			}
		});
	}
}

</script>

<div class="container">


<div class="bbox">
<div class="bc">
<?php include template('edit_xbar'); ?>
<div>
<?php if($arrGroupType) { ?>
<table align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" width="50%">
<tr bgcolor="#F0F0F0">
<td>类型</td><td>操作</td>
</tr>
<?php foreach((array)$arrGroupType as $key=>$item) {?>
<tr>
<td class="editable_textarea" id="<?php echo $item['typeid'];?>"><?php echo $item['typename'];?></td><td><a href="javascript:void('0');" onclick="deltopictype('<?php echo $item['typeid'];?>')">删除</a></td>
</tr>
<?php }?>
</table>
<?php } ?>
</div>

<div class="tac" style="margin-top:30px;">
<form method="POST" action="<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=topic_type">
添加帖子分类：
<input type="hidden" name="groupid" value="<?php echo $strGroup['groupid'];?>" />
<input name="typename" /> <input class="btn" type="submit" value="提交" />
</form>
</div>
</div>
</div>

</div>
<?php include template('footer'); ?>