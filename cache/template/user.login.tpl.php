<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<!--main-->
<div class="container">


<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
  
  
<div class="bbox bbox050">

<div class="page-header">
  <h1>用户登录</h1>
</div>

<div class="bc">

<form id="comm-form" method="POST" action="<?php echo SITE_URL;?>index.php?app=user&ac=login&ts=do" role="form">
  <div class="form-group">
    <label>Email</label>

      <input name="email" type="email" class="form-control" placeholder="Email">

  </div>
  <div class="form-group">
    <label>密码：</label>
    
      <input name="pwd" type="password" class="form-control" placeholder="Password">
    
  </div>
  <div class="form-group">
    
      <div class="checkbox">
        <label>
          <input type="checkbox" name="cktime" value="31536000"> 记住我
        </label>
      </div>
  
  </div>
  <div class="form-group">
	
<input type="hidden" name="jump" value="<?php echo $jump;?>" />
<input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
      <button type="submit" class="btn btn-fat btn-success">登录</button> <a href="<?php echo tsurl('user','register')?>">还没有注册？</a> | <a href="<?php echo tsurl('user','forgetpwd')?>">忘记密码？</a>
   
  </div>
</form>


<div>
<?php doAction('user_login_footer')?>
</div>


</div>
</div>

  
  
  </div>
  <div class="col-md-3"></div>
</div>




</div>
<?php include template('footer'); ?>