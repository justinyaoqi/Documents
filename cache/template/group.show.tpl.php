<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="<?php echo SITE_URL;?>">首页</a>
    </li>
    <li><a href="<?php echo tsurl('group')?>">小组</a>
</li>
<li class="active"><?php echo $strGroup['groupname'];?></li>
</ol>
<div class="row">
<div class="col-md-8">
    <div class="bbox">
        <div class="bc">
            <div class="group_show">
                <div class="face"><img title="<?php echo $strGroup['groupname'];?>" alt="<?php echo $strGroup['groupname'];?>" src="<?php echo $strGroup['photo'];?>" width="48" />
                </div>
                <div class="title">
                    <h1><?php echo $strGroup['groupname'];?></h1>
                    <p><a href="<?php echo tsurl('group','show',array('id'=>$strGroup['groupid']))?>"><?php echo $strGroup['count_topic'];?></a> 帖子 | <a href="<?php echo tsurl('group','user',array('id'=>$strGroup['groupid']))?>"><?php echo $strGroup['count_user'];?></a> 成员</p>
                </div>
                <div class="join">
                    <?php if($isGroupUser > 0 && $TS_USER['user'][userid] != $strGroup['userid']) { ?>
                    <span>我是这个小组的<?php echo $strGroup['role_user'];?> <a href="javascript:void('0')" onclick="exitGroup('<?php echo $strGroup['groupid'];?>')">退出小组</a></span> <?php } elseif ($isGroupUser > 0 && $TS_USER['user'][userid] == $strGroup['userid']) { ?>
                    <span>我是这个小组的<?php echo $strGroup['role_leader'];?></span> <?php } elseif ($strGroup['joinway'] == '0') { ?>
                    <span><a class="btn btn-success" href="javascript:void('0');" onclick="joinGroup('<?php echo $strGroup['groupid'];?>');">加入小组</a></span> <?php } elseif ($strGroup['joinway'] == '2') { ?>
                    <span><a class="btn btn-success" href="javascript:void('0')" onclick="joinGroup('<?php echo $strGroup['groupid'];?>')">申请加入小组</a></span> <?php } else { ?>
                    <span>本小组禁止加入</span> <?php } ?>
                </div>
            </div>
            <div class="clear"></div>
            <p class="c9">
                创建于 <?php echo date('Y-m-d',$strGroup['addtime'])?> 组长：
                <a href="<?php echo tsurl('user','space',array('id'=>$strLeader['userid']))?>" rel="face" uid="<?php echo $strLeader['userid'];?>"><?php echo $strLeader['username'];?></a>
            </p>
            <p><?php echo $strGroup['groupdesc'];?></p>
            <?php if($strGroup ['tags']) { ?>
            <div class="tags">
                <?php foreach((array)$strGroup['tags'] as $key=>$item) {?>
                <a href="<?php echo tsurl('group','tag',array('id'=>urlencode($item['tagname'])))?>"><?php echo $item['tagname'];?></a> <?php }?>
            </div>
            <?php } ?>
        </div>
    </div>
    <div class="bbox mh500" style="position: relative;">
        <div class="bc box">
            <div class="box_content">
                <div class="topictype">
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"  <?php if($typeid=="0" ) { ?>class="on" <?php } ?>><a href="<?php echo tsurl('group','show',array('id'=>$strGroup['groupid']))?>"><span>全部</span></a>
                    </li>
                    <?php foreach((array)$arrTopicType as $key=>$item) {?>
                    <li role="presentation"  <?php if($typeid==$item['typeid']) { ?>class="on" <?php } ?>><a href="<?php echo tsurl('group','show',array('id'=>$strGroup['groupid'],typeid=>$item['typeid']))?>"><span><?php echo $item['typename'];?></span></a>
                </li>
                <?php }?>
                <li role="presentation" style="float:right;height:30px;"></li>
                <span style="float:right"> <a class="btn btn-primary" href="<?php echo tsurl('group','add',array('id'=>$strGroup['groupid']))?>">发布帖子</a></span>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="topic_list">

       
            <ul>
                <?php foreach((array)$arrTopic as $key=>$item) {?>
                <li>
                    
                    <div class="userimg">
                        <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>" rel="face" uid="<?php echo $item['user']['userid'];?>"><img class="
                            img-circle" src="<?php echo $item['user'][face];?>" width="32" height="32" alt="<?php echo $item['user']['username'];?>" title="<?php echo $item['user']['username'];?>" />
                        </a>
                        
                        <span class="glyphicon glyphicon-triangle-top"><?php echo $item['count_view'];?></span>
                        
                    </div>
                    <div class="topic_title">
                        <div class="title">
                            <?php if($item['typeid'] != 0) { ?><a href="<?php echo tsurl('group','show',array('id'=>$item['groupid'],typeid=>$item['typeid']))?>">[<?php echo $item['typename'];?>]</a><?php } ?> <?php if($item['appkey'] != 'group' && $item['appkey']!='') { ?>
                            <a target="_blank" style="color:#999999;font-size: 12px;margin-right: 5px;" class="titles-type" href="<?php echo SITE_URL;?><?php echo tsUrl($item['appkey'])?>">[<?php echo $item['appname'];?>]</a>
                            <a title="<?php echo $item['title'];?>" href="<?php echo SITE_URL;?><?php echo tsUrl($item['appkey'],$item['appaction'],array('id'=>$item['appid']))?>"><?php echo $item['title'];?></a> <?php } else { ?>
                            <a title="<?php echo $item['title'];?>" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a> <?php } ?> <?php if($item['istop']=='1') { ?>
                            <img src="<?php echo SITE_URL;?>app/<?php echo $app;?>/skins/<?php echo $skin;?>/headtopic_1.gif" title="[置顶]" alt="[置顶]" /> <?php } ?> <?php if($item['isposts'] == '1') { ?>
                            <img src="<?php echo SITE_URL;?>public/images/posts.gif" title="[精华]" alt="[精华]" /> <?php } ?> <?php if($item['postby']==1) { ?>
                            <a href="<?php echo tsurl('home','phone')?>"><img align="absmiddle" alt="通过Iphone手机端发布" title="通过Iphone手机端发布" src="<?php echo SITE_URL;?>public/images/ios.jpg" />
                            </a><?php } ?>
                        </div>
                        <a id="def-html-<?php echo $item['user']['userid'];?><?php echo $key;?>" style="font-color:black;" data-tooltip="#html-content" href="<?php echo tsurl('group', 'topic', array('id' => $item['topicid']))?>">
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
                        </div>
                        <div class="topic_info">
                            <p><?php echo $item['content'];?></p>
                            <span style="float:left;">
                                <?php echo getTime($item['uptime'],time())?>
                            </span>
                            <span style="float:right;">
                                <a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>"  rel="face" uid="<?php echo $item['user']['userid'];?>"><?php echo $item['user'][username];?></a>
                                <?php if($item['count_comment']>0) { ?><a class="rank" style="color:#FFFFFF;" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['count_comment'];?></a><?php } ?>
                            </span>
                        </div>
                    </div>
                    <div class="clear"></div>
                </li>
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
            </ul>
        </div>
        <div class="page"><?php echo $pageUrl;?></div>
    </div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="bbox">
<div class="btitle">小组成员</div>
<div class="bc">
    <?php foreach((array)$arrGroupUser as $key=>$item) {?>
    <dl class="obu">
        <dt>
        <a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>" rel="face" uid="<?php echo $item['userid'];?>"><img class="img-circle" src="<?php echo $item['face'];?>" width="48" height="48" alt="<?php echo $item['username'];?>" title="<?php echo $item['username'];?>" />
        </a>
        </dt>
        <dd><?php echo $item['username'];?></dd>
    </dl>
    <?php }?>
</div>
</div>
<div class="bbox">
<div class="bc">
    <?php if($strGroup['joinway']==1 && $strGroup['userid'] == $TS_USER['user']['userid']) { ?>
    <p>
        <form method="post" action="<?php echo tsurl('group','do',array('ts'=>'invite'))?>">
            <input type="text" name="userid" value="" />
            <input type="hidden" name="groupid" value="<?php echo $strGroup['groupid'];?>" />
            <input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />
            <button class="btn btn-success" type="submit">邀请</button>
        </p>
    </form>
    <?php } ?> <?php if($TS_USER['user'][userid] == $strGroup['userid'] || $TS_USER['user']['isadmin']=='1') { ?>
    <p class="pl2">&gt; <a href="<?php echo tsurl('group','edit',array(groupid=>$strGroup['groupid'],ts=>base))?>">小组设置</a>
</p>
<p class="pl2">&gt; <a href="<?php echo tsurl('group','audit',array('groupid'=>$strGroup['groupid']))?>">帖子审核</a>(<?php echo $strGroup['count_topic_audit'];?>)</p>
<?php } ?>
<p><a href="<?php echo tsurl('group','rss',array(groupid=>$strGroup['groupid']))?>">feed: rss 2.0</a>
</p>
</div>
</div>
<div class="clear"></div>
<!--广告位-->
<?php doAction('gobad','300')?>
</div>
</div>
</div>
<?php include template('footer'); ?>