<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template("admin/header");?>
<div class="midder">
	<?php include template("admin/menu");?>
	<h5>第一个菜单</h5>
	<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=domenu1">
		一级菜单：<input type="text" name="menu11" value=""> <input type="text" name="menu11value11" value=""> <br />
		二级菜单1：<input type="text" name="menu21" value=""> <input type="text" name="menu21value21" value=""><br />
		二级菜单2：<input type="text" name="menu22" value=""> <input type="text" name="menu22value22" value=""><br />
		二级菜单3：<input type="text" name="menu23" value=""> <input type="text" name="menu23value23" value=""><br />
		二级菜单4：<input type="text" name="menu24" value=""> <input type="text" name="menu24value24" value=""><br />
		二级菜单5：<input type="text" name="menu25" value=""> <input type="text" name="menu25value25" value=""><br />
		<input type="submit" value="提交">
	</form>
	
	<h5>第二个菜单</h5>
	<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=domenu1">
		一级菜单：<input type="text" name="menu11" value=""> <input type="text" name="menu11value11" value=""> <br />
		二级菜单1：<input type="text" name="menu21" value=""> <input type="text" name="menu21value21" value=""><br />
		二级菜单2：<input type="text" name="menu22" value=""> <input type="text" name="menu22value22" value=""><br />
		二级菜单3：<input type="text" name="menu23" value=""> <input type="text" name="menu23value23" value=""><br />
		二级菜单4：<input type="text" name="menu24" value=""> <input type="text" name="menu24value24" value=""><br />
		二级菜单5：<input type="text" name="menu25" value=""> <input type="text" name="menu25value25" value=""><br />
		<input type="submit" value="提交">
	</form>
	
	<h5>第三个菜单</h5>
	<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=domenu1">
		一级菜单：<input type="text" name="menu11" value=""> <input type="text" name="menu11value11" value=""> <br />
		二级菜单1：<input type="text" name="menu21" value=""> <input type="text" name="menu21value21" value=""><br />
		二级菜单2：<input type="text" name="menu22" value=""> <input type="text" name="menu22value22" value=""><br />
		二级菜单3：<input type="text" name="menu23" value=""> <input type="text" name="menu23value23" value=""><br />
		二级菜单4：<input type="text" name="menu24" value=""> <input type="text" name="menu24value24" value=""><br />
		二级菜单5：<input type="text" name="menu25" value=""> <input type="text" name="menu25value25" value=""><br />
		<input type="submit" value="提交">
	</form>
	
</div>
<?php include template("admin/footer");?>