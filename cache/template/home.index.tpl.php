<?php defined('IN_TS') or die('Access Denied.'); ?><?php include template('header'); ?> <?php doAction('home_index_js')?> <?php doAction('home_index_css')?>
<div class="container">
    <?php doAction('home_index_header')?> <?php doAction('wordad')?>

    <div class="row">
        <div class="col-md-9" style="">
            <?php doAction('home_index_left')?>
        </div>

        <div class="col-md-3" style="">
            <?php doAction('home_index_right')?>

            <!--广告位-->
            <?php doAction('gobad','300')?>
        </div>
    </div>

    <?php doAction('home_index_footer')?>

</div>
<?php include template('footer'); ?>
