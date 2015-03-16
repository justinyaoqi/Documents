<?php defined('IN_TS') or die('Access Denied.'); ?><div class="container">
  <?php doAction('pub_footer_top')?>
</div>
<div class="container">
  <nav class="navbar navbar-default navbar-fixed-bottom">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-chevron-left"></span>赞庆阳</a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href="#"><span class="glyphicon glyphicon-pencil"></span>发表话题</a></li>
        </ul>
        
        <ul class="nav navbar-nav navbar-left">
          <li><a href="#"><span class="glyphicon glyphicon-pencil"></span>发表文章</a></li>
        </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
    </div>
    <div class="footer hidden-xs">
      <p>
        <a href="<?php echo tsurl('home','info',array('key'=>'about'))?>">关于我们</a> | <a href="<?php echo tsurl('home','info',array('key'=>'contact'))?>">联系我们</a> | <a href="<?php echo tsurl('home','info',array('key'=>'agreement'))?>">用户条款</a> | <a href="<?php echo tsurl('home','info',array('key'=>'privacy'))?>">隐私申明</a>
        | <a href="<?php echo tsurl('home','info',array('key'=>'job'))?>">加入我们</a>
      </p>
      <p>Powered by <a target="_blank" class="softname" title="比比赞" href="www.bibizan.cn">比比赞</a> <?php echo $TS_CF['info'][version];?> & <a target="_blank" href="<?php echo $TS_CF['info'][copyurl];?>" title="庆阳红旗软件工程有限公司">HONGQI INC.</a>  Copyright ©  <?php echo $TS_CF['info'][year];?>   <a target="_blank" href="<?php echo SITE_URL;?>"><?php echo $TS_SITE['base'][site_title];?></a> <?php echo $TS_SITE['base'][site_icp];?></p></div>
      <!--弹出窗口-->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
              <h4 class="modal-title" id="myModalLabel">提示</h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
              
            </div>
          </div>
        </div>
      </div>
      <script src="<?php echo SITE_URL;?>public/js/jquery.darktooltip.js" type="text/javascript"></script>
      <?php if(intval($TS_USER['user']['userid'])) { ?>
      <script src="<?php echo SITE_URL;?>public/js/imbox/imbox.js" type="text/javascript"></script>
      <script>
      var siteUid=<?php echo intval($TS_USER['user']['userid'])?>; //网站用户ID
      evdata(siteUid);
      </script>
      <?php } ?>
      <script src="<?php echo SITE_URL;?>public/js/common.js" type="text/javascript"></script>
      <?php if(is_file('app/'.$app.'/js/extend.func.js')) { ?>
      <script src="<?php echo SITE_URL;?>app/<?php echo $app;?>/js/extend.func.js" type="text/javascript"></script>
      <?php } ?>
      <?php doAction('pub_footer')?>
    </body>
  </html>
  <?php if($TS_SITE['base'][isgzip]==1) { ?><?php ob_end_flush();?><?php } ?>