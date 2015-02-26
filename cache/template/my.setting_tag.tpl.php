<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>

<div class="container">

<div class="my">


<div class="my_left">

<?php include pubTemplate("my")?>

</div>

<div class="my_right">
<div class="rc">


<?php doAction('my_right_top')?>


<?php include template('setting_menu'); ?>

<div style="height:30px;"></div>


<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-7">
  
<div class="tags">
<?php foreach((array)$arrTag as $key=>$item) {?>
<a><?php echo $item['tagname'];?></a>
<?php }?>
</div>

<div class="clear"></div>

<div style="height:30px;"></div>

<p><a class="btn btn-default btn-sm" href="javascript:void('0');" onclick="showTagFrom()">添加标签</a></p>

<div id="tagFrom" style="display:none">
<p>
<input style="width:300px;" class="form-control" type="text" name="tags" id="tags" /></p> 
<p>
<button type="submit" class="btn btn-success" onClick="savaTag(<?php echo $userid;?>)">添加</button> <a href="javascript:void(0);" onClick="showTagFrom()">取消</a>
</p>
</div>
  
  </div>
  <div class="col-md-4"></div>
</div>





</div></div>



</div>


</div>

<script>

/*显示标签界面*/
function showTagFrom(){	$('#tagFrom').toggle('fast');}
/*提交标签*/
function savaTag(userid)
{
	var tag = $('#tags').val();
		if(tag ==''){ alert('请输入标签哟^_^');$('#tagFrom').show('fast');}else{
			var url = siteUrl+'index.php?app=tag&ac=add_ajax&ts=do';
			$.post(url,{objname:'user',idname:'userid',tags:tag,objid:userid},function(rs){  window.location.reload()   })
		}
	
}
</script>
<?php include template('footer'); ?>