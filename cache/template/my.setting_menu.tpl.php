<?php defined('IN_TS') or die('Access Denied.'); ?><ul class="nav nav-tabs" role="tablist">
<li role="presentation" <?php if($ts=="base") { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'base'))?>">基本信息</a></li>
<li role="presentation" <?php if($ts=="face" || $ts=='flash') { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'face'))?>">会员头像</a></li>
<li role="presentation" <?php if($ts=="pwd") { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'pwd'))?>">修改密码</a></li>

<li role="presentation" <?php if($ts=="email") { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'email'))?>">修改帐号</a></li>

<li role="presentation" <?php if($ts=="city") { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'city'))?>">常居地</a></li>

<li role="presentation" <?php if($ts=="tag") { ?>class="active"<?php } ?>><a href="<?php echo tsurl('my','setting',array('ts'=>'tag'))?>">个人标签</a></li>
</ul>