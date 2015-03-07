<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template("admin/header");?>
<div class="midder">
	<?php include template("admin/menu");?>
	<form  method="POST" action="index.php?app=wechat&ac=admin&mg=options&ts=do">
		
			Token：<input style="width:300px;" name="token" value="<?php echo $strOption['token'];?>"/><?php echo $strOption['token'];?><br />
			APPid：<input style="width:300px;" name="oappid" value="<?php echo $strOption['appid'];?>" /><?php echo $strOption['appid'];?><br />
			AppSecret:<input style="width:300px;" name="appsecret" value="<?php echo $strOption['appsecret'];?>" /><?php echo $strOption['appsecret'];?><br />
			EncodingAESKey:<input style="width:300px;" name="EncodingAESKey" value="<?php echo $strOption['EncodingAESKey'];?>" /><?php echo $strOption['EncodingAESKey'];?><br />
			<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
			<input type="submit" value="确定" />确定</td></tr>
		
	</form>
</div>
<?php include template("admin/footer");?>