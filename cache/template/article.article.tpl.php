<?php defined('IN_TS') or die('Access Denied.'); ?><div class="bbox">
    <div class="btitle"></div>
    <div class="bc commlist">
        <div class="clist">
            <ul>
                <?php foreach((array)$arrArticle as $key=>$item) {?>
                <li>
                    <?php if($item['photo']) { ?>
                    <h2><a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>">
                        <img style="float:left;" src="<?php echo tsXimg($item['photo'],'article',180,140,$item['path'],'1')?>" />
                    </a>
                    </h2>
                    <?php } ?>
                    <div class="title">
                        <a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo $item['title'];?></a>
                    </div>
                    <div class="info">
                        <a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><?php echo $item['user'][username];?></a> 发表于 <?php echo $item['addtime'];?>
                    </div>
                    <div class="content"><?php echo $item['content'];?> (<a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>">查看全文</a>)</div>
                    <div class="cate tar">来自：<a href="<?php echo tsurl('article','cate',array('id'=>$item['cate']['cateid']))?>"><?php echo $item['cate']['catename'];?></a><span class="badge"><?php echo $item['count_recommend'];?></span>推荐 <span class="badge"><?php echo $item['count_comment'];?></span>评论</div>
                    <div class="clear"></div>
                </li>
                <?php }?>
            </ul>
        </div>
    </div>
</div>