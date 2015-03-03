<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template("admin/header");?>
<div class="midder">
	<?php include template("admin/menu");?>
	<form  method="POST" action="index.php?app=wechat&ac=admin&mg=options&ts=do">
		
			Token：<input style="width:300px;" name="token" name="<?php echo $strOption['appdesc'];?>"/><?php echo $strOption['appdesc'];?><br />
			APPid：<input style="width:300px;" name="oappid" value="<?php echo $strOption['oappid'];?>" /><?php echo $strOption['oappid'];?><br />
			AppSecret:<input style="width:300px;" name="appsecret" value="<?php echo $strOption['appsecret'];?>" /><?php echo $strOption['appsecret'];?><br />
			access_token:<input style="width:300px;" name="access_token" value="<?php echo $strOption['access_token'];?>" /><?php echo $strOption['access_token'];?><br />
			<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
			<input type="submit" value="确定" />确定</td></tr>
		
	</form>
</div>
<?php include template("admin/footer");?>