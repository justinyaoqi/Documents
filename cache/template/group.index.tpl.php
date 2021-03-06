<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<div style="height:10px;" class="clear">
    
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-3 hidden-xs ">
            <div class="bbox">
                <div class="catetype" style="background-color: rgba(229, 229, 229, 1);">
                    <ul>
                        <?php foreach((array)$arrCatess as $key=>$item) {?>
                        <li style="height: 90px;padding: 4px;border-bottom: solid 1px silver;overflow: hidden;">
                            <div style="clear:both; font-size: 16px; ">
                                <span class="glyphicon glyphicon-search" style="margin-left: 20px;font-size:12px;"></span><span style="margin-left: 10px;"><a style="color:#111" href="<?php echo tsurl('group','allcate',array('cateid'=>$item['cateid']))?>"><?php echo $item['catename'];?></a></span>
                            </div>
                            <div style="clear: both;font-size: 14px;padding: 5px 20px;" class="">
                                <ul style="">
                                    <?php foreach((array)$item['two'] as $tkey=>$titem) {?>
                                    <li style="float: left;text-align: center;line-height: 24px;padding: 2px;"><a style="color:#111" title="<?php echo $titem['catename'];?>" href="<?php echo tsurl('group','allcate',array('cateid'=>$item['cateid']))?>"><?php echo $titem['catename'];?></a>
                                </li>
                                <?php }?>
                            </ul>
                        </div>
                    </li>
                    <?php }?>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="gr">
            <div class="bbox">
                <div class="btitle">推荐小组</div>
                <div class="bc">
                    <?php foreach((array)$arrRecommendGroup as $key=>$item) {?>
                    <div class="sub-item" style="padding:10px 0 10px 0;height:100px;">
                        <div class="pic">
                            <a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>">
                                <img src="<?php echo $item['photo'];?>" width="40" height="40" alt="<?php echo $item['groupname'];?>" title="<?php echo $item['groupname'];?>" />
                            </a>
                        </div>
                        <div class="info">
                            <a style="color:#222;" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['groupname'];?></a> (<?php echo $item['count_user'];?>)
                            <?php echo $item['groupdesc'];?>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>
        </div>
        <div>
            <div class="bbox">
                <div class="btitle">热门动态</div>
                <?php foreach((array)$arrTopic as $key=>$item) {?>
                <div class="media" style="margin-top: 0;border-bottom:solid 1px silver;padding:10px 0;">
                    <div class="media-left">
                        <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>">
                            <img class="media-object img-circle" src="<?php echo $item['user'][face];?>" alt="<?php echo $item['user']['username'];?>,<?php echo $item['user']['about'];?>" width="40" height="40">
                        </a>
                    </div>
                    <div class="media-body">
                        <h6 style="padding:0;float:right;"><a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group']['groupname'];?></a></h6>
                        <h5 class="media-heading" style="color:#005B97">
                        <a style="color:#222" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>" target="_blank"><strong><?php echo $item['title'];?></strong></a>
                        <span class="glyphicon glyphicon-eye-open" style="font-size: 12px;margin-left: 10px; color:#159B48"></span><span style="color:#159B48"><?php echo $item['count_view'];?></span></h5>
                        <div class="userdesc"><span style=""><a id="def-html-<?php echo $item['user']['userid'];?><?php echo $key;?>"  data-tooltip="#html-content" style="color:#777;font-size:12px;" href="<?php echo tsurl('group', 'topic', array('id' => $item['topicid']))?>">
                            <?php echo $item['user']['username'];?>,<?php echo $item['user']['about'];?>
                        </a>
                        <div id = "html-content" class="light" style="display:none;background:white;">
                            <div class="media">
                                <div class="media-left">
                                    <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>" rel="face" uid="<?php echo $item['user']['userid'];?>"><img class="
                                        img-circle" src="<?php echo $item['user'][face];?>" width="32" height="32" alt="<?php echo $item['user']['username'];?>" title="<?php echo $item['user']['username'];?>" />
                                    </a>
                                </div>
                                <div class="media-body" >
                                    <h5><?php echo $item['user'][username];?></h5>
                                    <h6><?php echo $item['user'][about];?></h6>
                                    <h6><?php echo $item['user'][signed];?></h6>
                                    <p style="font-size:12px;">等<?php echo $item['user'][count_followed];?>人也关注了他</p>
                                </div>
                            </div>
                            <div style="font-size:12px;padding-left:45px;">
                                <span style="width:100px;marigin-right:20px"> <span class="badge" ><?php echo $item['user'][count_topic];?></span>帖子</span>&nbsp;&nbsp;&nbsp;<span style="width:100px;"><span class="badge"><?php echo $item['user'][count_followed];?></span>关注者</span>&nbsp;&nbsp;&nbsp;
                                <span>
                                    
                                    <a class="btn btn-mini" href="javascript:void('0')" onclick="follow('<?php echo $item['user']['userid'];?>','<?php echo $_SESSION['token'];?>');">关注</a>
                                    
                                </span>
                            </div>
                        </div></span></div>
                        <p style="line-height: 24px;color:#222;font-size: 13px;padding: 4px"><?php echo $item['content'];?></p>
                    </div>
                    <div style="">
                        <span style="margin-left:50px;" class="label label-success"><a style="color:#333" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group']['groupname'];?></a></span>
                        <span style="float:right;font-size: 12px;color:#666;line-height:12px;"><span style="line-height: 10px;font-size: 12px;" class="glyphicon glyphicon-comment"></span><span><?php echo $item['count_comment'];?></span>
                        <span style="margin-left: 10px;" class="glyphicon glyphicon-heart-empty"></span></span>
                    </div>
                </div>
                <script>
                $(document).ready( function(){
                $('#def-html-<?php echo $item['user']['userid'];?><?php echo $key;?>').darkTooltip({
                size:'large',
                opacity:1,
                gravity:'west',
                theme:'light'
                });
                });</script>
                <?php }?>
            </div>
        </div>
    </div>
    <div class="col-lg-3 hidden-xs">
        <div class="bbox">
            <div class="btitle">最新创建小组</div>
            <div class="bc line23">
                <?php if($arrNewGroup) { ?> <?php foreach((array)$arrNewGroup as $key=>$item) {?>
                <span class="badge" ><?php echo $item['count_user'];?></span><span style="width:30px;">&nbsp;&nbsp;</span>
                <a style="color:#222" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['groupname'];?></a>
                <br> <?php }?> <?php } ?>
            </div>
            <?php if($TS_APP['options'][iscreate]==0 || $TS_USER['user'][isadmin]==1) { ?>
            <a style="background-color:#159B48" class="btn btn-info btn-block btn-lg" href="<?php echo tsurl('group','create')?>">
                <span class="glyphicon glyphicon-plus-sign"></span> 创建小组</a>
                <p></p>
                <?php } ?>
            </div>
            <div class="bbox">
                <div class="btitle">热门帖子</div>
                <ul class="bc titles">
                    <?php foreach((array)$arrTopic as $key=>$item) {?>
                    <li> <span class="badge" ><?php echo $item['count_view'];?></span><span style="width:30px;">&nbsp;&nbsp;</span>
                    <strong>
                    <a style="color:#222;" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>" target="_blank"><?php echo $item['title'];?></a></strong>
                    
                    <p class="titles-b" style="font-size:12px;">
                        <span class="titles-b-l">来自：<a  title="<?php echo $item['group']['groupname'];?>" target="_blank" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group']['groupname'];?></a>&nbsp;小组
                    </span>
                </p>
            </li>
            <?php }?>
        </ul>
    </div>
    
    <!--广告位-->
    <?php doAction('gobad','300')?>
</div>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-lg-12">
</div>
</div>
</div>
<div class="container hidden-lg hidden-md">
<nav class="navbar navbar-default navbar-fixed-bottom ">
<div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <ul class="nav navbar-nav navbar-left col-xs-5" style="float:left;margin-left:20px;border-right:1px red solid">
            <li><a href="<?php echo tsurl('group','add',array('id'=>'1'))?>"><span class="glyphicon glyphicon-pencil"></span>发表话题</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-left col-xs-5" style="float:left;margin-left:20px;">
            <li><a href="<?php echo tsurl('article','add',array(''=>''))?>"><span class="glyphicon glyphicon-pencil"></span>发表文章</a></li>
        </ul>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    
    </div><!-- /.container-fluid -->
</nav>
</div>
<?php include template('footer'); ?>