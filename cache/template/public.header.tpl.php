<?php defined('IN_TS') or die('Access Denied.'); ?><?php if($TS_SITE['base'][isgzip]==1) { ?><?php ob_start('ob_gzip');?><?php } ?>
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
    <!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="content-language" content="zh-CN" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="applicable-device" content="pc,mobile">
        <meta name="robots" content="all" />
        <meta name="save" content="history" />
        <meta name="author" content="<?php echo $TS_CF['info'][email];?>" />
        <meta name="Copyright" content="<?php echo $TS_CF['info'][name];?>" />
        <title><?php if($app=='home' && $ac==' index') { ?><?php echo $TS_SITE['base'][site_title];?> - <?php echo $title;?><?php } elseif ($app=='home' && $ac!='index') { ?><?php echo $title;?> - <?php echo $TS_SITE['base'][site_title];?><?php } elseif ($app!='home' && $ac=='index') { ?><?php echo $TS_APP['options'][appname];?>_<?php echo $TS_SITE['base'][site_title];?><?php } else { ?><?php echo $title;?>_<?php echo $TS_APP['options'][appname];?>_<?php echo $TS_SITE['base'][site_title];?><?php } ?>
        </title>
        <?php if($app=='home' && $ac=='index') { ?>
        <meta name="keywords" content="<?php echo $TS_SITE['base'][site_key];?>" />
        <meta name="description" content="<?php echo $TS_SITE['base'][site_desc];?>" /> <?php } else { ?> <?php if($sitekey) { ?>
        <meta name="keywords" content="<?php echo $sitekey;?>" /> <?php } ?> <?php if($sitedesc) { ?>
        <meta name="description" content="<?php echo $sitedesc;?>" /> <?php } ?> <?php } ?>
        <link rel="shortcut icon" href="<?php echo SITE_URL;?>favicon.ico" />
        <!-- 新 Bootstrap 核心 CSS 文件 -->
        <link rel="stylesheet" href="<?php echo SITE_URL;?>public/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>theme/sample/darktooltip.css">
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>public/bootstrap/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>public/bootstrap/css/font-awesome-ie7.css">
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>theme/sample/base.css" /> <?php if(is_file('theme/'.$tstheme.'/style.css')) { ?>
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>theme/<?php echo $tstheme;?>/style.css" id="tsTheme" /> <?php } ?> <?php if(is_file('app/'.$app.'/skins/'.$skin.'/style.css')) { ?>
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL;?>app/<?php echo $app;?>/skins/<?php echo $skin;?>/style.css"> <?php } ?>
        <!--[if lt IE 8]>
        <link href="<?php echo SITE_URL;?>public/js/oldie.css" rel="stylesheet">
        <![endif]-->
        <!--[if lt IE 9]>
        <script src="<?php echo SITE_URL;?>public/js/html5shiv.js"></script>
        <![endif]-->
        <!--[if IE 8]>
        <script src="<?php echo SITE_URL;?>public/js/respond.min.js"></script>
        <![endif]-->
        <script>
        var siteUrl = '<?php echo SITE_URL;?>'; //网站网址
        </script>
        <script src="<?php echo SITE_URL;?>public/js/jquery-1.8.0.min.js" type="text/javascript"></script>
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="<?php echo SITE_URL;?>public/bootstrap/js/bootstrap.min.js"></script>
        <style>
        {
        php doAction('pub_header_css')
        }
        </style>
        <?php doAction('pub_header_top')?>
    </head>
    <body style="background:#FFFFFF">
        <nav style="border-bottom:solid 2px red;" class="navbar navbar-red header navbar-fixed-top navbar-inverse hidden-xs" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-user">
                    <span class="sr-only">用户信息/登录等</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <ul class="nav navbar-nav hidden-xs">
                    <li class="active"><a href="<?php echo SITE_URL;?>">比比赞首页</a>
                </li>
                <?php doAction('pub_header_nav')?>
            </ul>
            
            <ul class="nav navbar-nav navbar-right navbar-collapse collapse" id="header-user">
                <?php if($TS_USER['user']=='') { ?>
                <li><a href="<?php echo tsurl('user','login')?>">登录</a>
            </li>
            <li><a href="<?php echo tsurl('user','register')?>">注册</a>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo tsurl('my')?>">我的社区</a>
    </li>
    <li><a href="<?php echo tsurl('message','my')?>"><span class="badge" id="newmsg">0</span>  消息</a>
</li>
<li class="dropdown" style="width:200px;text-align:right;">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <img class="img-circle" src="<?php if($TS_USER['user'][face]==" ") { ?><?php echo SITE_URL;?>public/images/user_normal.jpg<?php } else { ?><?php echo tsXimg($TS_USER['user'][face],'user','120','120',$TS_USER['user'][path],'1')?><?php } ?>" width="24" height="24" align="absmiddle" alt="<?php echo $TS_USER['user']['username'];?>" /> <?php echo $TS_USER['user'][username];?>
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" role="menu">
        <li><a href="<?php echo tsurl('my','setting',array('ts'=>'base'))?>">设置</a>
    </li>
    <?php if($TS_SITE['base']['isinvite']=='1') { ?>
    <li>
        <a href="<?php echo tsurl('user','invite')?>">邀请</a>
    </li>
    <?php } ?>
    <?php if($TS_USER['user']['isadmin']=='1') { ?>
    <li>
        <a target="_blank" href="<?php echo SITE_URL;?>index.php?app=system">管理</a>
    </li>
    <?php } ?>
    <li><a href="<?php echo tsurl('user','login',array(ts=>out))?>">退出</a>
</li>
</ul>
</li>
<?php } ?>
</ul>
</div>
<!-- /.container-fluid -->
</nav>
<div class="headermidder hidden-xs" style="margin-top: 50px;">
<div class="container" style="">
<div class="row">
<div class="col-lg-12">
<div class="bbox">
<div class="bc">

<ul class="nav nav-tabs nav-justified " role="tablist" style="background-color:#fff;">
        <?php foreach((array)$arrArctileCate as $key=>$item) {?>
        <li style="height:30px;border-right:1px solid silver;" role="presentation" <?php if($ac=='cate' && $cateid==$item[ 'cateid']) { ?>class="active" <?php } ?>><a href="<?php echo tsurl('article','cate',array('id'=>$item['cateid']))?>"><?php echo $item['catename'];?></a>
    </li>
    <?php }?>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="container" style="">
    <div class="row" style="padding:0">
        <div class="col-lg-9" style="over-flow:hidden;">
            <?php doAction('gobad','960')?>
        </div>
        <div class="col-lg-3" style="padding;0">
            <?php doAction('gobad','300')?>
        </div>
    </div>
</div>
<div class="container" style="margin-top:10px;margin-top: 50px;padding-bottom:10px;">
<div class="row" style="padding:0;">
<div class="col-lg-4" >
<a  href="<?php echo SITE_URL;?>"><img title="<?php echo $TS_SITE['base'][site_title];?>" src="<?php echo SITE_URL;?>uploadfile/logo/<?php echo $TS_SITE['base'][logo];?>" alt="<?php echo $TS_SITE['base'][site_title];?>" width="190" height="60" />
</a>
</div>
<div class="col-lg-4">

</div>
<div class="col-lg-4">

</div>
</div>
</div>
</div>
<div class="appnav appnavheader" style="height:40px;">
<div class="container" >
<ul>
<?php foreach((array)$TS_SITE['appnav'] as $key=>$item) {?> <?php if($key=='home') { ?>
<li style="height:40px; line-height:40px;" <?php if($app==$key) { ?>class="select" <?php } ?>><a href="<?php echo SITE_URL;?>"><?php echo $item;?></a>
</li>
<?php } else { ?>
<li style="height:40px;line-height:40px" <?php if($app==$key) { ?>class="select" <?php } ?>><a href="<?php echo tsurl($key)?>"><?php echo $item;?></a>
</li>
<?php } ?>
<?php }?>
<form class="navbar-form navbar-right hidden-xs" role="search" method="get" action="<?php echo SITE_URL;?>index.php">
<div class="form-group">
<input type="hidden" name="app" value="search" />
<input type="hidden" name="ac" value="s" />
<input type="text" class="form-control" name="kw" placeholder="请输入关键词">
</div>
<button style="height:30px;line-height:15px;" type="submit" class="btn btn-default">搜索</button>
</form>
</ul>
</div>
</div>