<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template("admin/header");?>
<div class="midder">
	<?php include template("admin/menu");?>
	<div class="container">
		<div class="row">
			
			<h5>第一个菜单</h5>
			<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=edit1">
				<div class="row" >
					<div class="col-md-2">
						<label>一级菜单</label>
					</div>
					<div class="col-md-2">
						<select name="menutype1">
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						菜单名称<input type="text" name="menu11" value="">
					</div>
					<div class="col-md-5">
						菜单值<input type="text" name="menu11value11" value="">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select name="menutype2">
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu21" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu21value21" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select name="menutype3">
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu31" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu31value31" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select name="menutype4">
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu41" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu41value41" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select name="menutype5">
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				  <input type="submit" name="menu11value11" value="提交">
				<input type="submit" name="menu11value11" value="重置">
			</form>
			
			<h5>第二个菜单</h5>
			<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=edit1">
				<div class="row" >
					<div class="col-md-2">
						<label>一级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				  <input type="submit" name="menu11value11" value="提交">
				<input type="submit" name="menu11value11" value="重置">
			</form>
			<h5>第三个菜单</h5>
			<form  method="POST" action="index.php?app=wechat&ac=admin&mg=wechatmenu&ts=edit1">
				<div class="row" >
					<div class="col-md-2">
						<label>一级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
				<div class="row" >
					<div class="col-md-2">
						<label>二级菜单</label>
					</div>
					<div class="col-md-2">
						<select>
							<option value="click">click</option>
							<option value="view">view</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="menu11" value="菜单名称">
					</div>
					<div class="col-md-5">
						<input type="text" name="menu11value11" value="菜单值">
					</div>
				</div>
			</form>
			
			
		</div>
	</div>
</div>
<?php include template("admin/footer");?>