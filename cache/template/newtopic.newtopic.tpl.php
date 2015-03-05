<?php defined('IN_TS') or die('Access Denied.'); ?><div class="bbox">
    <div class="btitle">最新话题</div>
    <ul class ="list-group" style="border:0;">
        <?php foreach((array)$arrTopic as $key=>$item) {?>
        <li class="list-group-item " style="border:0;padding:1px 10px">
            <div class="media" style="">
                <div class="media-left">
                    <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><img class="img-circle" src="<?php echo $item['user'][face];?>" width="32" height="32" alt="<?php echo $item['user']['username'];?>" title="<?php echo $item['user']['username'];?>" />
                    </a>
                </div>
                <div class="media-body">
                    <div class="media-heading">
                        <?php if($item['appkey'] != 'group' && $item['appkey']!='') { ?>
                        <a target="_blank" style="color:#999999;font-size: 12px;margin-right: 5px;" class="titles-type" href="<?php echo SITE_URL;?><?php echo tsUrl($item['appkey'])?>">[<?php echo $item['appname'];?>]</a>
                        <a title="<?php echo $item['title'];?>" href="<?php echo SITE_URL;?><?php echo tsUrl($item['appkey'],$item['appaction'],array('id'=>$item['appid']))?>"><?php echo $item['title'];?></a> <?php } else { ?>
                        <a title="<?php echo $item['title'];?>" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a> <?php } ?> <?php if($item['postby']==1) { ?>
                        <a href="<?php echo tsurl('home','phone')?>"><img align="absmiddle" alt="通过Iphone手机端发布" title="通过Iphone手机端发布" src="<?php echo SITE_URL;?>public/images/ios.jpg" />
                        </a><?php } ?>
                        <div><a href="<?php echo tsurl('user','space',array('id'=>$item['userid']))?>"><?php echo $item['user'][username];?></a></div>
                    </div>
                    <div>
                        <p>111<?php echo $item['content'];?></p>
                    </div>
                    <div class="topic_info">
                        <span>
                            <a href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group'][groupname];?></a>
                        </span>
                        <span >
                            <?php echo getTime($item['uptime'],time())?>
                            
                            <?php if($item['count_comment']>0) { ?><a class="rank" style="color:#FFFFFF;" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['count_comment'];?></a><?php } ?>
                        </span>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </li>
        <?php }?>
    </ul>
</div>