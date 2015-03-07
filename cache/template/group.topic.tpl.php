<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?> <?php doAction('tseditor','mini')?>
<div class="container">

    <ol class="breadcrumb" style="font-size:14px;">
        <li><a href="<?php echo SITE_URL;?>">首页</a>
        </li>
        <li><a href="<?php echo tsurl('group')?>">小组</a>
        </li>
        <li><a href="<?php echo tsurl('group','show',array('id'=>$strGroup['groupid']))?>"><?php echo $strGroup['groupname'];?></a>
        </li>
        <li class="active"><?php echo $strTopic['title'];?></li>
    </ol>

    <div class="row">

        <div class="col-md-8">
            <div class="bbox">

                <div class="bc">
                    <h5><?php if($strTopic['typeid'] !='0') { ?><a href="<?php echo tsurl('group','show',array('id'=>$strTopic['groupid'],typeid=>$strTopic['typeid']))?>">[<?php echo $strTopic['type'][typename];?>]</a><?php } ?><?php echo $strTopic['title'];?></h5>


                    <div class="media mb20">
                        <a class="pull-left" href="<?php echo tsurl('user','space',array('id'=>$strTopic['user'][userid]))?>"><img class="media-object img-circle" title="<?php echo $strTopic['user'][username];?>" alt="<?php echo $strTopic['user'][username];?>" src="<?php echo $strTopic['user'][face];?>" width="48" height="48">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="<?php echo tsurl('user','space',array('id'=>$strTopic['userid']))?>"><?php echo $strTopic['user'][username];?></a></h4>
                            <div class="c9">发表于 <?php echo date('Y-m-d H:i:s',$strTopic['addtime'])?></div>
                        </div>
                    </div>
                    <?php if($page == '1') { ?>
                    <div class="topic-content">
                        <div class="topic-view">
                            <?php echo $strTopic['content'];?> <?php echo $tpUrl;?> 
                        </div>

                        <?php if($TS_USER['user'][userid] == $strTopic['userid'] || $TS_USER['user'][userid]==$strGroup['userid'] ||$strGroupUser['isadmin']=="1" || $TS_USER['user'][isadmin]=="1") { ?>
                        <div class="btool">
                            <?php if($TS_USER['user'][userid]==$strGroup['userid'] ||$strGroupUser['isadmin']=="1" || $TS_USER['user'][isadmin]=="1") { ?>

                            <a href="javascript:void('0');" onclick="topicAudit('<?php echo $strTopic['topicid'];?>','<?php echo $_SESSION['token'];?>');"><?php if($strTopic['isaudit']=='1') { ?>审核<?php } else { ?>取消审核<?php } ?></a>

                            <a href="<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=topic_istop&topicid=<?php echo $strTopic['topicid'];?>"><?php if($strTopic['istop']=='0') { ?>置顶<?php } else { ?>取消置顶<?php } ?></a>

                            <a href="javascript:void('0');" onclick="tsPost('index.php?app=group&ac=ajax&ts=isrecommend&js=1',{'topicid':'<?php echo $strTopic['topicid'];?>'})"><?php if($strTopic['isrecommend']=='0') { ?>推荐<?php } else { ?>取消推荐<?php } ?></a>

                            <a href="<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=isposts&topicid=<?php echo $strTopic['topicid'];?>&token=<?php echo $_SESSION['token'];?>"><?php if($strTopic['isposts']==0) { ?>精华<?php } else { ?>取消精华<?php } ?></a>

                            <a href="<?php echo SITE_URL;?>index.php?app=group&ac=topicmove&topicid=<?php echo $strTopic['topicid'];?>">移动</a> <?php } ?>
                            <a href="<?php echo SITE_URL;?>index.php?app=group&ac=topicedit&topicid=<?php echo $strTopic['topicid'];?>">编辑</a>
                            <a href="<?php echo SITE_URL;?>index.php?app=group&ac=do&ts=deltopic&topicid=<?php echo $strTopic['topicid'];?>&token=<?php echo $_SESSION['token'];?>" onClick="return confirm('确定删除吗?')">删除</a>

                        </div>
                        <?php } ?>

                    </div>
                    <div class="clear"></div>

                    <div class="tar pd100">

                        <a class="btn btn-default" href=""><?php echo $strTopic['count_comment'];?>评论</a>
                    </div>

                    <div class="clear"></div>


                    <div class="tags">
                        <?php foreach((array)$strTopic['tags'] as $key=>$item) {?>
                        <a rel="tag" title="" class="post-tag" href="<?php echo tsurl('group','tag',array('id'=>urlencode($item['tagname'])))?>"><?php echo $item['tagname'];?></a> <?php }?>

                    </div>
                    <?php } ?>
                </div>
            </div>

            <div class="bbox">
                <div class="btitle">用户评论(<?php echo $strTopic['count_comment'];?>)</div>
                <div class="bc">
                    <ul class="comment">
                        <?php if(is_array($arrTopicComment)) { ?> <?php foreach((array)$arrTopicComment as $key=>$item) {?>
                        <li class="clearfix" id="l_<?php echo $item['commentid'];?>">
                            <div class="user-face">
                                <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>" rel="face" uid="<?php echo $item['user'][userid];?>"><img title="<?php echo $item['user'][username];?>" alt="<?php echo $item['user'][username];?>" src="<?php echo $item['user'][face];?>" width="48" />
                                </a>
                            </div>
                            <div class="reply-doc">
                                <h4><?php echo date('Y-m-d H:i:s',$item['addtime'])?>
	<a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>" rel="face" uid="<?php echo $item['user'][userid];?>" style="margin-left:5px; margin-right:5px;"><?php echo $item['user'][username];?></a>
    <i><?php echo $item[l];?>#</i>
</h4> <?php if($item['referid'] !='0') { ?>
                                <div class="recomment">
                                    <a href="<?php echo tsurl('user','space',array('id'=>$item['recomment'][user][userid]))?>"><img src="<?php echo $item['recomment'][user][face];?>" width="24" align="absmiddle">
                                    </a> <strong><a href="<?php echo tsurl('user','space',array('id'=>$item['recomment'][user][userid]))?>" rel="face" uid="<?php echo $item['recomment'][user][userid];?>"><?php echo $item['recomment'][user][username];?></a></strong>：<?php echo $item['recomment'][content];?></div>
                                <?php } ?>
                                <p>
                                    <?php echo $item['content'];?>
                                </p>

                                <div class="tar">
                                    <?php if($strGroupUser) { ?>
                                    <span><a href="javascript:void(0)"  onclick="commentOpen(<?php echo $item['commentid'];?>,<?php echo $item['topicid'];?>)">回复</a></span> <?php } ?> <?php if($TS_USER['user'][userid] == $strGroup['userid'] || $TS_USER['user'][userid] == $item['userid'] || $strGroupUser['isadmin']==1 || $TS_USER['user'][isadmin]==1) { ?>
                                    <span><a class="j a_confirm_link" href="<?php echo SITE_URL;?>index.php?app=group&ac=comment&ts=delete&commentid=<?php echo $item['commentid'];?>&token=<?php echo $_SESSION['token'];?>" rel="nofollow" onClick="return confirm('确定删除吗?')">删除</a>
</span> <?php } ?>
                                </div>


                                <div id="rcomment_<?php echo $item['commentid'];?>" style="display:none">
                                    <textarea style="width:90%;height:60px;font-size:14px;" id="recontent_<?php echo $item['commentid'];?>" type="text" onKeyDown="keyRecomment(<?php echo $item['commentid'];?>,<?php echo $item['topicid'];?>,event)"></textarea>

                                    <p><a class="btn" href="javascript:void(0);" onClick="recomment(<?php echo $item['commentid'];?>,<?php echo $item['topicid'];?>,'<?php echo $_SESSION['token'];?>')" id="recomm_btn_<?php echo $item['commentid'];?>">提交</a> <a href="javascript:void('0');" onclick="commentOpen(<?php echo $item['commentid'];?>,<?php echo $item['topicid'];?>)">取消</a>
                                    </p>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <?php }?> <?php } ?>
                    </ul>
                    <div class="page"><?php echo $pageUrl;?></div>
                    <div class="commentform">
                        <?php if(intval($TS_USER['user'][userid])==0) { ?>
                        <div class="tac pd20">
                            <a href="<?php echo tsurl('user','login')?>">登录</a> | <a href="<?php echo tsurl('user','register')?>">注册</a>
                        </div>
                        <?php } elseif ($strGroupUser=='') { ?>
                        <div class="tac pd20">
                            不是本组成员不能回应此贴哦
                        </div>
                        <?php } elseif ($strTopic['iscomment'] == 1 && $strTopic['userid'] != $TS_USER['user'][userid]) { ?>
                        <div class="tac pd20">
                            本帖除作者外不允许任何人评论
                        </div>
                        <?php } elseif ($strTopic['isclose']=='1') { ?>
                        <div class="tac pd20">
                            该帖子已被关闭，无法评论
                        </div>
                        <?php } else { ?>
                        <form method="POST" action="<?php echo SITE_URL;?>index.php?app=group&ac=comment&ts=do" enctype="multipart/form-data">
                            <textarea type="text" style="width:100%;" id="tseditor" name="content"></textarea>
                            <p>
                                <input type="hidden" name="topicid" value="<?php echo $strTopic['topicid'];?>" />
                                <input type="hidden" name="token" value="<?php echo $_SESSION['token'];?>" />

                                <div class="authcode">
                                    <?php if($TS_SITE['base']['isauthcode']) { ?> 验证码：
                                    <input name="authcode" />
                                    <img align="absmiddle" src="<?php echo tsurl('pubs','code')?>" onclick="javascript:newgdcode(this,this.src);" title="点击刷新验证码" alt="点击刷新验证码" style="cursor:pointer;" /> <?php } ?>
                                </div>

                                <div class="submit">
                                    <button class="btn btn-success" type="submit">提交评论</button>
                                </div>

                            </p>
                        </form>
                        <?php } ?>
                    </div>

                </div>
            </div>


            <div class="bbox">
                <div class="btitle">推荐帖子</div>
                <div class="bc">

                    <div class="topic_recommend">
                        <ul>
                            <?php foreach((array)$arrRecommendTopic as $key=>$item) {?>
                            <li><a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a>
                            </li>
                            <?php }?>
                        </ul>
                    </div>

                </div>
            </div>


        </div>

        <div class="col-md-4">


            <?php doAction('gobad','topic_right_top')?>

            <div class="bbox">
                <div class="btitle">最新帖子</div>
                <div class="bc commlist">
                    <ul>
                        <?php foreach((array)$newTopic as $key=>$item) {?>
                        <li>
                            <a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a>
                        </li>
                        <?php }?>
                    </ul>
                </div>
            </div>

            <div class="bbox">
                <div class="btitle">热门帖子</div>

                <div class="bc commlist">
                    <ul>
                        <?php foreach((array)$arrHotTopic as $key=>$item) {?>
                        <li><a href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a>
                        </li>
                        <?php }?>
                    </ul>
                </div>

            </div>



            <div class="clear"></div>
            <!--广告位-->
            <?php doAction('gobad','300')?>
        </div>

    </div>
</div>
<?php include template('footer'); ?>
