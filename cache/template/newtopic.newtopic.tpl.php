<?php defined('IN_TS') or die('Access Denied.'); ?><div class="bbox hidden-xs">
    <div class="btitle">最新话题</div>
    <ul class ="list-group" style="">
        <?php foreach((array)$arrTopic as $key=>$item) {?>
        <li class="list-group-item " style="padding:10px 10px;">
            <div class="media" style="">
                <div class="media-left">
                    <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><img class="img-circle" src="<?php echo $item['user'][face];?>" width="32" height="32" alt="<?php echo $item['user']['username'];?>" title="<?php echo $item['user']['username'];?>" />
                    </a>
                </div>
                <div class="media-body">
                    <div class="media-heading">
                        <strong><a style="font-size:13px;color:#222" title="<?php echo $item['title'];?>" href="<?php echo tsurl('group','topic',array('id'=>$item['topicid']))?>"><?php echo $item['title'];?></a></strong>
                    </div>
                    <div>
                        <p style="font-size:12px;line-height:20px;color:#333;"><?php echo $item['content'];?></p>
                    </div>
                    <div class="topic_info">
                        <span>
                            <a style="color:#666" href="<?php echo tsurl('group','show',array('id'=>$item['groupid']))?>"><?php echo $item['group'][groupname];?></a>
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