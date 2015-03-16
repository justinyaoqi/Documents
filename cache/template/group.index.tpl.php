<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<div style="height:10px;" class="clear">
    
</div>
<div class="container">
<div class="row">
    <div class="col-lg-3 hidden-xs ">
        <div class="bbox">
            <div class="catetype" style="background-color: #F5F5F5;">
                <ul>
                    <?php foreach((array)$arrCatess as $key=>$item) {?>
                    <li style="height: 90px;padding: 4px;border-bottom: solid 1px silver;overflow: hidden;">
                        <div style="clear:both; font-size: 16px; ">
                            <span class="glyphicon glyphicon-search" style="margin-left: 20px;font-size:12px;"></span><span style="margin-left: 10px;"><a href="<?php echo tsurl('group','allcate',array('cateid'=>$item['cateid']))?>"><?php echo $item['catename'];?></a></span>
                        </div>
                        <div style="clear: both;font-size: 14px;padding: 5px 20px;" class="">
                            <ul style="">
                                <?php foreach((array)$item['two'] as $tkey=>$titem) {?>
                                <li style="float: left;text-align: center;line-height: 24px;padding: 2px;"><a title="<?php echo $titem['catename'];?>" href="<?php echo tsurl('group','allcate',array('cateid'=>$item['cateid']))?>"><?php echo $titem['catename'];?></a>
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
                    <h5 style="padding:0;float:right;"><a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group']['groupname'];?></a></h5>
                    <h5 class="media-heading" style="color:#005B97"><a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>" target="_blank"><strong><?php echo $item['title'];?></strong></a><span class="glyphicon glyphicon-eye-open" style="font-size: 12px;margin-left: 10px;"></span><span><?php echo $item['count_view'];?></span></h5>
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
                        <div >
                            <span> <span class="badge"><?php echo $item['user'][count_topic];?></span>帖子</span><span><span class="badge"></span>文章</span><span><span class="badge"><?php echo $item['user'][count_followed];?></span>关注者</span>
                            <button class="btn btn-primary btn-sm">关注</button>
                        </div>
                    </div></span></div>
                    <p style="line-height: 24px;color:#222;font-size: 13px;padding: 4px"><?php echo $item['content'];?></p>
                </div>
                <div style="font-size: 12px;color:#666;line-height:12px;">
                    <span style="margin-left:50px;" class="label label-success"><?php echo $item['tag'][0]['tagname'];?></span>
                    <span style="float:right"><span style="line-height: 10px;font-size: 12px;" class="glyphicon glyphicon-comment"></span><span><?php echo $item['count_comment'];?></span>
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
    <?php if($TS_APP['options'][iscreate]==0 || $TS_USER['user'][isadmin]==1) { ?>
    <a class="btn btn-info btn-block btn-lg" href="<?php echo tsurl('group','create')?>">
        <span class="glyphicon glyphicon-plus-sign"></span> 创建小组</a>
        <p></p>
        <?php } ?>
        <div class="bbox">
            <div class="btitle">热门帖子</div>
            <ul class="bc titles">
                <?php foreach((array)$arrTopic as $key=>$item) {?>
                <li>
                    <h3><a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>" target="_blank"><?php echo $item['title'];?></a></h3>
                    <span class="titles-r-grey"><?php echo $item['count_comment'];?></span>
                    <p class="titles-b">
                        <span class="titles-b-l">来自：<a title="<?php echo $item['group']['groupname'];?>" target="_blank" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group']['groupname'];?></a>&nbsp;小组
                    </span>
                </p>
            </li>
            <?php }?>
        </ul>
    </div>
    <div class="bbox">
        <div class="btitle">最新创建小组</div>
        <div class="bc line23">
            <?php if($arrNewGroup) { ?> <?php foreach((array)$arrNewGroup as $key=>$item) {?>
            <a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['groupname'];?></a> (<?php echo $item['count_user'];?>)
            <br> <?php }?> <?php } ?>
        </div>
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
<?php include template('footer'); ?>