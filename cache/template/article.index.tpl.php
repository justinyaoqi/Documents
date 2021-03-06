<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="bbox">
                <div class="btitle">最新新闻</div>
                <div class="bc">
                    <div class="clist">
                        <ul>
                            <?php foreach((array)$arrArticle as $key=>$item) {?>
                            <li>
                                <?php if($item['photo']) { ?>
                                <a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>">
                                    <img style="float:left;" src="<?php echo tsXimg($item['photo'],'article',180,140,$item['path'],'1')?>" />
                                </a>
                                <?php } ?>

                                <div class="title"><a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo $item['title'];?></a>
                                </div>

                                <div class="info"><a href="<?php echo tsurl('user','space',array('id'=>$item['user'][userid]))?>"><?php echo $item['user'][username];?></a> 发表于 <?php echo $item['addtime'];?></div>

                                <div class="content"><?php echo $item['content'];?> (<a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>">查看全文</a>)</div>

                                <div class="cate tar">来自：<a href="<?php echo tsurl('article','cate',array('id'=>$item['cate']['cateid']))?>"><?php echo $item['cate']['catename'];?></a> (<?php echo $item['count_recommend'];?>)推荐 (<?php echo $item['count_comment'];?>)评论</div>
                                <div class="clear"></div>
                            </li>
                            <?php }?>
                        </ul>
                    </div>

                    <div class="page"><?php echo $pageUrl;?></div>
                </div>
            </div>


        </div>
        <div class="col-md-4 hidden-xs" >

            <a class="btn btn-info btn-block btn-lg" href="<?php echo tsurl('article','add')?>">
                <span class="glyphicon glyphicon-plus-sign"></span> 写文章</a>
            <p></p>
            <div class="bbox">
                <div class="btitle">推荐阅读</div>
                <div class="bc">
                    <div class="commlist">
                        <ul>
                            <?php foreach((array)$arrRecommend as $key=>$item) {?>
                            <li><a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo $item['title'];?></a>
                            </li>
                            <?php }?>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="bbox">
                <div class="btitle">一周热门</div>
                <div class="bc">
                    <div class="commlist">
                        <ul>
                            <?php foreach((array)$arrHot7 as $key=>$item) {?>
                            <li><a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo $item['title'];?></a>
                            </li>
                            <?php }?>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="bbox">
                <div class="btitle">一月热门</div>
                <div class="bc">
                    <div class="commlist">
                        <ul>
                            <?php foreach((array)$arrHot30 as $key=>$item) {?>
                            <li><a href="<?php echo tsurl('article','show',array('id'=>$item['articleid']))?>"><?php echo $item['title'];?></a>
                            </li>
                            <?php }?>
                        </ul>
                    </div>
                </div>
            </div>


            <!--广告位-->
            <?php doAction('gobad','300')?>


        </div>





    </div>
</div>

<?php include template('footer'); ?>
