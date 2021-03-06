<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<script src="public/js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo SITE_URL;?>public/js/jquery.upload.v2.js"></script>

<script>
    $(function(){
        $("#upload").upload({
            action: "<?php echo SITE_URL;?>index.php?app=system&ac=logo", //上传地址
            fileName: "filedata",    //文件名称。用于后台接收
            params: {},         //参数
            accept: ".jpg,.png,.gif",     //文件类型
            complete: function (rs) {  //上传完成
				$("#logo img").attr("src",rs);
            },
            submit: function () {   //提交之前
                //alert("submit");
            }
        });
    })
</script>

<div class="midder">
<?php include template('menu'); ?>
<form method="POST" action="index.php?app=system&ac=options&ts=do">

<h2>常规选项</h2>

<table  cellpadding="0" cellspacing="0">
<tr><td width="150">网站标题：</td><td><input type="text" style="width:300px;" name="option[site_title]" value="<?php echo $strOption['site_title'];?>" /></td></tr>
<tr><td>副标题：</td><td><input type="text" style="width:300px;" name="option[site_subtitle]" value="<?php echo $strOption['site_subtitle'];?>" /> (例如：又一个ThinkSAAS社区小组)</td></tr>

<tr><td>关键词：</td><td><input type="text" style="width:300px;" name="option[site_key]" value="<?php echo $strOption['site_key'];?>" /> (关键词有助于SEO)</td></tr>

<tr><td>网站说明：</td><td><textarea type="text" style="width:300px;height:50px;font-size:12px;" name="option[site_desc]"><?php echo $strOption['site_desc'];?></textarea> (用简洁的文字描述本站点。)</td></tr>

<tr><td>站点地址（URL）:</td><td><input type="text" style="width:300px;" name="option[site_url]" value="<?php echo $strOption['site_url'];?>" />(必须以http://开头，以/结尾。如果采用相对路径，请只填写/)</td></tr>

<tr><td>固定地址:</td><td><input type="text" style="width:300px;" name="option[link_url]" value="<?php echo $strOption['link_url'];?>" />(例如：http://www.thinksaas.cn/，必须以/结尾，主要用于采用固定链接的URL)</td></tr>

<tr><td>网站Logo:</td><td>
<div id="logo"><img src="<?php echo SITE_URL;?>uploadfile/logo/<?php echo $strOption['logo'];?>" width="190" height="40" /></div>
<input type="button" value="点击上传" id="upload" />(支持png,gif,jpg格式，宽度190px高度40px)</td></tr>

<tr><td>电子邮件 :</td><td><input type="text" style="width:300px;" name="option[site_email]" value="<?php echo $strOption['site_email'];?>" /></td></tr>

<tr><td>ICP备案号 :</td><td><input type="text" style="width:300px;" name="option[site_icp]" value="<?php echo $strOption['site_icp'];?>" /> （京ICP备09050100号）</td></tr>

<tr><td>是否上传头像 :</td><td><input type="radio" <?php if($strOption['isface']=='0') { ?>checked="select"<?php } ?> name="option[isface]" value="0" />不需要 <input type="radio" <?php if($strOption['isface']=='1') { ?>checked="select"<?php } ?> name="option[isface]" value="1" />需要</td></tr>

<tr><td>是否邀请注册 :</td><td><input type="radio" <?php if($strOption['isinvite']=='0') { ?>checked="select"<?php } ?> name="option[isinvite]" value="0" />开放注册 <input type="radio" <?php if($strOption['isinvite']=='1') { ?>checked="select"<?php } ?> name="option[isinvite]" value="1" />邀请注册</td></tr>

<tr><td>是否验证Email :</td><td><input type="radio" <?php if($strOption['isverify']=='0') { ?>checked="select"<?php } ?> name="option[isverify]" value="0" />不验证Email <input type="radio" <?php if($strOption['isverify']=='1') { ?>checked="select"<?php } ?> name="option[isverify]" value="1" />验证Email</td></tr>

<tr><td>登录是否跳转 :</td><td><input type="radio" <?php if($strOption['istomy']=='0') { ?>checked="select"<?php } ?> name="option[istomy]" value="0" />不跳转 <input type="radio" <?php if($strOption['istomy']=='1') { ?>checked="select"<?php } ?> name="option[istomy]" value="1" />跳转到我的社区</td></tr>


<tr><td>是否开启验证码 :</td><td><input type="radio" <?php if($strOption['isauthcode']=='0') { ?>checked="select"<?php } ?> name="option[isauthcode]" value="0" />不开启 <input type="radio" <?php if($strOption['isauthcode']=='1') { ?>checked="select"<?php } ?> name="option[isauthcode]" value="1" />开启</td></tr>


<tr><td>Gzip压缩 :</td><td><input type="radio" <?php if($strOption['isgzip']=='0') { ?>checked="select"<?php } ?> name="option[isgzip]" value="0" />关闭 <input type="radio" <?php if($strOption['isgzip']=='1') { ?>checked="select"<?php } ?> name="option[isgzip]" value="1" />开启</td></tr>

<tr><td>无人值守状态 :</td><td><input type="radio" <?php if($strOption['isunattended']=='0') { ?>checked="select"<?php } ?> name="option[isunattended]" value="0" />关闭 <input type="radio" <?php if($strOption['isunattended']=='1') { ?>checked="select"<?php } ?> name="option[isunattended]" value="1" />开启 （开启后全站不允许用户发布内容，比如有人半夜乘主人来制造垃圾广告！）</td></tr>

<tr><td>是否允许用户删除自己发布的内容 :</td><td><input type="radio" <?php if($strOption['isallowdelete']=='0') { ?>checked="select"<?php } ?> name="option[isallowdelete]" value="0" />允许 <input type="radio" <?php if($strOption['isallowdelete']=='1') { ?>checked="select"<?php } ?> name="option[isallowdelete]" value="1" />不允许 (管理员除外)</td></tr>

<tr><td>是否允许用户修改自己发布的内容 :</td><td><input type="radio" <?php if($strOption['isallowedit']=='0') { ?>checked="select"<?php } ?> name="option[isallowedit]" value="0" />允许 <input type="radio" <?php if($strOption['isallowedit']=='1') { ?>checked="select"<?php } ?> name="option[isallowedit]" value="1" />不允许 (管理员除外)</td></tr>

<tr><td>时区:</td><td>
<select name="option[timezone]">
<?php foreach((array)$arrTime as $key=>$item) {?>
<option <?php if($key==$strOption['timezone']) { ?>selected="selected"<?php } ?> value="<?php echo $key;?>"><?php echo $item;?></option>
<?php }?>
</select>
</td>
</tr>
</table>

<h2>系统主题</h2>

<table>
<tr>
<td  width="150">选择主题：</td>

<td>

<div class="theme">
<ul>
<?php foreach((array)$arrTheme as $key=>$item) {?>
<li>
<img src="theme/<?php echo $item;?>/preview.jpg">
<br />
<input type="radio" <?php if($strOption['site_theme']==$item) { ?>checked="select"<?php } ?> name="option[site_theme]" value="<?php echo $item;?>" /> <?php echo $item;?>
</li>
<?php }?>
</ul>
</div>

</td>
</tr>
</table>


<h2>链接形式</h2>

<table>
    <tr>
	<td  width="150">形式1：</td><td><input type="radio" <?php if($strOption['site_urltype']==1) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="1" /> index.php?app=group&ac=topic&id=1</td></tr>
    <tr><td>形式2：</td><td><input type="radio" <?php if($strOption['site_urltype']==2) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="2" /> index.php/group/topic/id-1</td></tr>
	<tr><td>形式3：</td><td><input type="radio" <?php if($strOption['site_urltype']==3) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="3" /> group-topic-id-1.html (暂只支持apache环境的rewrite，非apache环境勿动)</td></tr>
	<tr><td>形式4：</td><td><input type="radio" <?php if($strOption['site_urltype']==4) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="4" /> group/topic/id-1 (暂只支持apache环境的rewrite，非apache环境勿动)</td></tr>
<tr><td>形式5：</td><td><input type="radio" <?php if($strOption['site_urltype']==5) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="5" /> group/topic/1 (暂只支持apache环境的rewrite，非apache环境勿动)</td></tr>
<tr><td>形式6：</td><td><input type="radio" <?php if($strOption['site_urltype']==6) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="6" /> group/topic/id/1 (暂只支持apache环境的rewrite，非apache环境勿动)</td></tr>
<tr><td>形式7：</td><td><input type="radio" <?php if($strOption['site_urltype']==7) { ?>checked="select"<?php } ?> name="option[site_urltype]" value="7" /> group/topic/1/ (暂只支持apache环境的rewrite，非apache环境勿动)</td></tr>



</table>


<h2>其他选项</h2>
<table>

<tr><td width="150">图片上传大小：</td><td><input name="option[photo_size]" value="<?php echo $strOption['photo_size'];?>" />M (请填写数字，例如2)</td></tr>
<tr><td>图片上传格式：</td><td><input name="option[photo_type]" value="<?php echo $strOption['photo_type'];?>" />(请以英文逗号分割，例如：jpg,gif,png)</td></tr>

<tr><td>附件上传大小：</td><td><input name="option[attach_size]" value="<?php echo $strOption['attach_size'];?>" />M (请填写数字，例如2)</td></tr>
<tr><td>附件上传格式：</td><td><input name="option[attach_type]" value="<?php echo $strOption['attach_type'];?>" />(请以英文逗号分割，例如：zip,rar,doc,txt,ppt)</td></tr>



<tr><td></td><td><input type="submit" value="提交修改" /></td></tr>

</table>


</form>
</div>

<?php include template('footer'); ?>