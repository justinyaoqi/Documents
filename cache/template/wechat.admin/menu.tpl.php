<?php defined('IN_TS') or die('Access Denied.'); ?><h2>微信开放平台</h2>
<div class="tabnav">
<ul>
<li <?php if($mg=='options') { ?>class="select"<?php } ?>><a href="<?php echo SITE_URL;?>index.php?app=wechat&ac=admin&mg=options">微信平台配置</a></li>

<li <?php if($mg=='wechatmenu' ) { ?>class="select"<?php } ?>><a href="<?php echo SITE_URL;?>index.php?app=wechat&ac=admin&mg=wechatmenu">微信菜单</a></li>

<li <?php if($mg=='attentionreplay' ) { ?>class="select"<?php } ?>><a href="<?php echo SITE_URL;?>index.php?app=wechat&ac=admin&mg=attentionreplay">关注内容回复</a></li>

<li <?php if($mg=='verify') { ?>class="select"<?php } ?>><a href="<?php echo SITE_URL;?>index.php?app=wechat&ac=admin&mg=verify">微信验证</a></li>

</ul>
</div>