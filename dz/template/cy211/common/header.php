<?php exit; ?>
<!--{subtemplate common/header_common}-->
<!--{eval require_once("./template/sxp_keji_k2/sxp_config.php");}-->
<meta name="application-name" content="$_G['setting']['bbname']" />
<meta name="msapplication-tooltip" content="$_G['setting']['bbname']" />
<meta name="360-site-verification" content="bf4cbb91ccbdb8422e90517cd0b46139" />
<!--{if $_G['setting']['portalstatus']}--><meta name="msapplication-task" content="name=$_G['setting']['navs'][1]['navname'];action-uri={echo !empty($_G['setting']['domain']['app']['portal']) ? 'http://'.$_G['setting']['domain']['app']['portal'] : $_G[siteurl].'portal.php'};icon-uri={$_G[siteurl]}{IMGDIR}/portal.ico" /><!--{/if}-->
<meta name="msapplication-task" content="name=$_G['setting']['navs'][2]['navname'];action-uri={echo !empty($_G['setting']['domain']['app']['forum']) ? 'http://'.$_G['setting']['domain']['app']['forum'] : $_G[siteurl].'forum.php'};icon-uri={$_G[siteurl]}{IMGDIR}/bbs.ico" />
<!--{if $_G['setting']['groupstatus']}--><meta name="msapplication-task" content="name=$_G['setting']['navs'][3]['navname'];action-uri={echo !empty($_G['setting']['domain']['app']['group']) ? 'http://'.$_G['setting']['domain']['app']['group'] : $_G[siteurl].'group.php'};icon-uri={$_G[siteurl]}{IMGDIR}/group.ico" /><!--{/if}-->
<!--{if helper_access::check_module('feed')}--><meta name="msapplication-task" content="name=$_G['setting']['navs'][4]['navname'];action-uri={echo !empty($_G['setting']['domain']['app']['home']) ? 'http://'.$_G['setting']['domain']['app']['home'] : $_G[siteurl].'home.php'};icon-uri={$_G[siteurl]}{IMGDIR}/home.ico" /><!--{/if}-->
<!--{if $_G['basescript'] == 'forum' && $_G['setting']['archiver']}-->
	<link rel="archives" title="$_G['setting']['bbname']" href="{$_G[siteurl]}archiver/" />
<!--{/if}-->
<!--{if !empty($rsshead)}-->$rsshead<!--{/if}-->
<!--{if widthauto()}-->
	<link rel="stylesheet" id="css_widthauto" type="text/css" href="data/cache/style_{STYLEID}_widthauto.css?{VERHASH}" />
	<script type="text/javascript">HTMLNODE.className += ' widthauto'</script>
<!--{/if}-->
<!--{if $_G['basescript'] == 'forum' || $_G['basescript'] == 'group'}-->
	<script type="text/javascript" src="{$_G[setting][jspath]}forum.js?{VERHASH}"></script>
<!--{elseif $_G['basescript'] == 'home' || $_G['basescript'] == 'userapp'}-->
	<script type="text/javascript" src="{$_G[setting][jspath]}home.js?{VERHASH}"></script>
<!--{elseif $_G['basescript'] == 'portal'}-->
	<script type="text/javascript" src="{$_G[setting][jspath]}portal.js?{VERHASH}"></script>
<!--{/if}-->
<!--{if $_G['basescript'] != 'portal' && $_GET['diy'] == 'yes' && check_diy_perm($topic)}-->
	<script type="text/javascript" src="{$_G[setting][jspath]}portal.js?{VERHASH}"></script>
<!--{/if}-->
<!--{if $_GET['diy'] == 'yes' && check_diy_perm($topic)}-->
<link rel="stylesheet" type="text/css" id="diy_common" href="data/cache/style_{STYLEID}_css_diy.css?{VERHASH}" />
<!--{/if}-->
<!--{if !$_G['uid']}--><style>.fwin .m_c {background:#fff url({$_G['style']['styleimgdir']}/comiis_loginbg.gif) no-repeat right bottom;}</style><!--{/if}-->
<!--{eval $comiis_ff=1;}-->
</head>
<body id="nv_{$_G[basescript]}" class="pg_{CURMODULE}{if $_G['basescript'] === 'portal' && CURMODULE === 'list' && !empty($cat)} {$cat['bodycss']}{/if} zoxp" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div><div id="ajaxwaitid"></div>
<!--{if $_GET['diy'] == 'yes' && check_diy_perm($topic)}-->
	<!--{template common/header_diy}-->
<!--{/if}-->
<!--{if check_diy_perm($topic)}-->
	<!--{template common/header_diynav}-->
<!--{/if}-->
<!--{if CURMODULE == 'topic' && $topic && empty($topic['useheader']) && check_diy_perm($topic)}-->
	$diynav
<!--{/if}-->
<!--{if empty($topic) || $topic['useheader']}-->
	<!--{if $_G['setting']['mobile']['allowmobile'] && (!$_G['setting']['cacheindexlife'] && !$_G['setting']['cachethreadon'] || $_G['uid']) && ($_GET['diy'] != 'yes' || !$_GET['inajax']) && ($_G['mobile'] != '' && $_G['cookie']['mobile'] == '' && $_GET['mobile'] != 'no')}-->
		<div class="xi1 bm bm_c">
			{lang your_mobile_browser}<a href="{$_G['siteurl']}forum.php?mobile=yes">{lang go_to_mobile}</a> <span class="xg1">|</span> <a href="$_G['setting']['mobile']['nomobileurl']">{lang to_be_continue}</a>
		</div>
	<!--{/if}-->
	<!--{if $_G['setting']['shortcut'] && $_G['member'][credits] >= $_G['setting']['shortcut']}-->
		<div id="shortcut">
			<span><a href="javascript:;" id="shortcutcloseid" title="{lang close}">{lang close}</a></span>
			{lang shortcut_notice}
			<a href="javascript:;" id="shortcuttip">{lang shortcut_add}</a>
		</div>
		<script type="text/javascript">setTimeout(setShortcut, 2000);</script>
	<!--{/if}-->	
	<!--{if $comiis_head==1}-->
	<div class="sxp_ideatop">
		<div class="sxp_kmtops">
			<div style="position:relative" class="wp">
				<div id="comiis_bbs_menu" style="display:none;">
					<!--{subtemplate common/sxp_sub}-->
				</div>
			</div>
		</div>
	</div>	
	<!--{else}-->
		<div id="toptb" class="cl sxp_toptb sxp_mintop">
			<!--{hook/global_cpnav_top}-->
			<div class="wp sxp_header">
				<div class="z topz">
					<!--{loop $_G['setting']['topnavs'][0] $nav}-->
						<!--{if $nav['available'] && (!$nav['level'] || ($nav['level'] == 1 && $_G['uid']) || ($nav['level'] == 2 && $_G['adminid'] > 0) || ($nav['level'] == 3 && $_G['adminid'] == 1))}-->$nav[code]<!--{/if}-->
					<!--{/loop}-->
					<!--{loop $_G['setting']['topnavs'][1] $nav}-->
						<!--{if $nav['available'] && (!$nav['level'] || ($nav['level'] == 1 && $_G['uid']) || ($nav['level'] == 2 && $_G['adminid'] > 0) || ($nav['level'] == 3 && $_G['adminid'] == 1))}-->$nav[code]<!--{/if}-->
					<!--{/loop}-->
					<!--{hook/global_cpnav_extra1}-->					
					<!--{hook/global_cpnav_extra2}-->
					<a id="switchblind" href="javascript:;" onClick="toggleBlind(this)" title="{lang switch_blind}" class="switchblind">{lang switch_blind}</a>
				</div>
				<div class="y">
					<!--{if $_G['uid']}-->		
					<span class="sxp_avt"><a href="home.php?mod=space&uid=$_G[uid]"><!--{avatar($_G[uid],small)}--></a></span>
					<strong{if $_G['setting']['connect']['allow'] && $_G[member][conisbind]} class="qq"{/if}><a href="home.php?mod=space&uid=$_G[uid]" target="_blank" title="{lang visit_my_space}">{$_G[member][username]}</a></strong>
					<!--{if $_G['group']['allowinvisible']}-->
					<span id="loginstatus">
						<a id="loginstatusid" href="member.php?mod=switchstatus" title="{lang login_switch_invisible_mode}" onClick="ajaxget(this.href, 'loginstatus');return false;"></a>
					</span>
					<!--{/if}-->
					<!--{hook/global_usernav_extra1}-->
					<!--{if $_G['uid']}--><a id="sxp_msn" href="javascript:;" onMouseOver="showMenu({'ctrlid':this.id,'pos':'34!','ctrlclass':'on','duration':2});"{if $_G[member][newpm] || $_G[member][newprompt]} class="kmnew"{/if}>消息</a><!--{/if}-->	
					<a id="sxp_key" href="javascript:;" onMouseOver="showMenu({'ctrlid':this.id,'pos':'34!','ctrlclass':'on','duration':2});">设置</a>
					<a id="sxp_qmenu" href="javascript:;" onMouseOver="delayShow(this,function(){showMenu({'ctrlid':'sxp_qmenu','pos':'34!','ctrlclass':'on','duration':2});showForummenu($_G[fid]);})">快捷导航</a>
					<!--{if $_G['uid'] && !empty($_G['style']['extstyle'])}--><a id="sslct" href="javascript:;" onMouseOver="delayShow(this, function() {showMenu({'ctrlid':'sslct','pos':'34!'})});">{lang changestyle}</a><!--{/if}-->
					<!--{elseif !empty($_G['cookie']['loginuser'])}-->
						<strong><a id="loginuser" class="noborder"><!--{echo dhtmlspecialchars($_G['cookie']['loginuser'])}--></a></strong>
						<a href="member.php?mod=logging&action=login" onClick="showWindow('login', this.href)">{lang activation}</a>
						<a href="member.php?mod=logging&action=logout&formhash={FORMHASH}">{lang logout}</a>
					<!--{elseif !$_G[connectguest]}-->
						<!--{if $sxp_mintop_login==1}-->
						<a id="sxp_login" href="javascript:;" onMouseOver="showMenu({'ctrlid':this.id,'pos':'34!','ctrlclass':'on','duration':2});" style="text-decoration:none;">请登录</a>
						<!--{else}-->
						<a id="sxp_reg" style="border-left:1px solid #DDDDDD;" onClick="showWindow('login', this.href+'&amp;referer='+encodeURIComponent(location));" href="member.php?mod=logging&amp;action=login">请登录</a>
						<!--{/if}-->
						<a id="sxp_reg" href="member.php?mod={$_G[setting][regname]}">$_G['setting']['reglinkname']</a>
						<a id="sxp_qmenu" href="javascript:;" onMouseOver="delayShow(this,function(){showMenu({'ctrlid':'sxp_qmenu','pos':'34!','ctrlclass':'on','duration':2});showForummenu($_G[fid]);})">快捷导航</a>
					<!--{else}-->
						<span class="sxp_avt z"><!--{avatar(0,small)}--></span>
						<strong class="vwmy qq">{$_G[member][username]}</strong>
						<!--{hook/global_usernav_extra1}-->			
						<a href="home.php?mod=spacecp&ac=credit&showcredit=1">{lang credits}: 0</a>
						<a>{lang usergroup}: $_G[group][grouptitle]</a>
						<a href="member.php?mod=logging&action=logout&formhash={FORMHASH}">{lang logout}</a>
					<!--{/if}-->
				</div>
			</div>
		</div>
	<!--{if $sxp_mintop_login==1}-->
	<div id="sxp_login_menu" style="display:none;">
		<div id="sxp_xdl">
			<div class="sxp_xdl_nr">
				<table cellspacing="0" cellpadding="0">
					<form method="post" autocomplete="off" id="loginForms" action="member.php?mod=logging&action=login&loginsubmit=yes&lssubmit=yes">
						<input type="hidden" name="formhash" value="{FORMHASH}" />
						<input type="hidden" name="referer" value="$_G['referer']" />
						<tr><td>用户名：</td></tr>
						<tr><td><input type="text" name="username" autocomplete="off" onFocus="if (value =='请输入用户名'){value =''}" value="请输入用户名" tabindex="98" class="sxp_xdl_xk mb5"></td></tr>
						<tr><td><span><a href="javascript:;" onClick="showWindow('login', 'member.php?mod=logging&action=login&viewlostpw=1')" style="height:20px;line-height:20px;padding:0px;background:none;">忘记密码？</a></span>密&nbsp;&nbsp;&nbsp;码：</td></tr>
						<tr><td><input type="password" name="password" autocomplete="off" onFocus="if (value =='********'){value =''}" value="********" tabindex="99" class="sxp_xdl_xk"></td></tr>
						<tr><td><button type="submit" name="lostpwsubmit" value="true" tabindex="100" class="comiis_xdl_btn y" id="loginButton">&nbsp;&nbsp;&nbsp;</button><div class="z zddl"><input type="checkbox" name="cookietime" id="ls_cookietime" class="pc" value="2592000" tabindex="903" checked="true">下次自动登录</div></td></tr>
					</form>
				</table>
			</div>
			<div class="sxp_xdl_qqdl">
				<ul>
					<li class="xqqdl"><a href="connect.php?mod=login&amp;op=init&amp;referer=portal.php&amp;statfrom=login_simple" title="用QQ帐号登录">QQ帐号登录</a></li>
					<!--{if $sxp_mintop_wb==1}--><li class="xwbdl"><a href="#" title="用微博帐号登录">微博帐号登录</a></li><!--{/if}-->
				</ul>
			</div>
		</div>
	</div>
	<!--{/if}-->
	<!--{if $_G['uid']}-->
	<div id="sxp_key_menu" style="display:none;">
	<ul>
	  <li class="snsz"><a href="home.php?mod=spacecp">帐号设置</a></li>
	  <li class="snyun"><a href="admin.php?frames=yes&action=cloud&operation=applist" target="_blank">{lang cloudcp}</a></li>
	  <!--{if ($_G['group']['allowmanagearticle'] || $_G['group']['allowpostarticle'] || $_G['group']['allowdiy'] || getstatus($_G['member']['allowadmincp'], 4) || getstatus($_G['member']['allowadmincp'], 6) || getstatus($_G['member']['allowadmincp'], 2) || getstatus($_G['member']['allowadmincp'], 3))}-->
	  <li class="snmh"><a href="portal.php?mod=portalcp"><!--{if $_G['setting']['portalstatus'] }-->{lang portal_manage}<!--{else}-->{lang portal_block_manage}<!--{/if}--></a></li>
	  <!--{/if}-->
	  <!--{if $_G['uid'] && $_G['group']['radminid'] > 1}-->
	  <li class="snlt"><a href="forum.php?mod=modcp&fid=$_G[fid]" target="_blank">{lang forum_manager}</a></li>
	  <!--{/if}-->
	  <!--{if $_G['uid'] && $_G['adminid'] == 1 && $_G['setting']['cloud_status']}-->
	  <li class="snyun"><a href="admin.php?frames=yes&action=cloud&operation=applist" target="_blank">{lang cloudcp}</a></li>
	  <!--{/if}-->
	  <!--{if $_G['uid'] && getstatus($_G['member']['allowadmincp'], 1)}-->
	  <li class="snht"><a href="admin.php" target="_blank">{lang admincp}</a></li>
	  <!--{/if}-->
	  <!--{if check_diy_perm($topic)}-->
	  <li class="sndiy"><a href="javascript:openDiy();" title="{lang open_diy}">DIY 设置</a></li>
	  <!--{/if}-->
	 <!--{if empty($_G['disabledwidthauto']) && $_G['setting']['switchwidthauto']}-->
	  <li class="snkp"><a href="javascript:;" id="switchwidth" onClick="widthauto(this)" title="{if widthauto()}{lang switch_narrow}{else}{lang switch_wide}{/if}"><!--{if widthauto()}-->{lang switch_narrow}<!--{else}-->{lang switch_wide}<!--{/if}--></a></li>
	 <!--{/if}-->
	 <li class="sntc"><a href="member.php?mod=logging&action=logout&formhash={FORMHASH}">退出登录</a></li>
	</ul>  
	</div>
	<div id="sxp_msn_menu" style="display:none;">
	<ul>
	<li class="snxx"><a href="home.php?mod=space&do=pm"{if $_G[member][newpm]} class="new"{/if}>{lang pm_center}</a></li>
	<li class="sntx"><a href="home.php?mod=space&do=notice"{if $_G[member][newprompt]} class="new"{/if}>{lang remind}<!--{if $_G[member][newprompt]}-->($_G[member][newprompt])<!--{/if}--></a></li>
	<li class="sntz"><a href="home.php?mod=follow&do=follower"{if $_G[member][newprompt_num][follower]} class="new"{/if}><!--{lang notice_interactive_follower}-->{if $_G[member][newprompt_num][follower]}($_G[member][newprompt_num][follower]){/if}</a></li>
	<!--{if $_G[member][newprompt] && $_G[member][newprompt_num][follow]}-->
		<li class="snwgz"><a href="home.php?mod=follow" class="new"><!--{lang notice_interactive_follow}-->($_G[member][newprompt_num][follow])</a></li>
	<!--{/if}-->
	<!--{if $_G[member][newprompt]}-->
		<!--{loop $_G['member']['category_num'] $key $val}-->
			<li class="sn{$key}"><a href="home.php?mod=space&do=notice&view=$key"><!--{echo lang('template', 'notice_'.$key)}-->($val)</a></li>
		<!--{/loop}-->
	<!--{/if}-->
	</ul>
	</div>
	<!--{/if}-->
	<div id="sxp_qmenu_menu" style="display:none;">
	<!--{hook/global_qmenu_top}-->
	<!--{if $_G['uid']}-->
		<ul class="cl nav">
			<!--{loop $_G['setting']['mynavs'] $nav}-->
				<!--{if $nav['available'] && (!$nav['level'] || ($nav['level'] == 1 && $_G['uid']) || ($nav['level'] == 2 && $_G['adminid'] > 0) || ($nav['level'] == 3 && $_G['adminid'] == 1))}-->
					<li>$nav[code]</li>
				<!--{/if}-->
			<!--{/loop}-->
		</ul>
	<!--{elseif $_G[connectguest]}-->
		<div class="ptm pbw hm">
			{lang connect_fill_profile_to_visit}
		</div>
	<!--{else}-->
		<div class="ptm pbw hm">
			{lang my_nav_login}
		</div>
	<!--{/if}-->
	<!--{if $_G['setting']['showfjump']}--><div id="fjump_menu" class="btda"></div><!--{/if}-->
	<!--{hook/global_qmenu_bottom}-->
	</div>
		<!--{if !IS_ROBOT}-->
			<!--{if $_G['uid']}-->
			<ul id="myprompt_menu" class="p_pop" style="display: none;">
				<li><a href="home.php?mod=space&do=pm" id="pm_ntc" style="background-repeat: no-repeat; background-position: 0 50%;"><em class="prompt_news{if empty($_G[member][newpm])}_0{/if}"></em>{lang pm_center}</a></li>
					<li><a href="home.php?mod=follow&do=follower"><em class="prompt_follower{if empty($_G[member][newprompt_num][follower])}_0{/if}"></em><!--{lang notice_interactive_follower}-->{if $_G[member][newprompt_num][follower]}($_G[member][newprompt_num][follower]){/if}</a></li>
				<!--{if $_G[member][newprompt] && $_G[member][newprompt_num][follow]}-->
					<li><a href="home.php?mod=follow"><em class="prompt_concern"></em><!--{lang notice_interactive_follow}-->($_G[member][newprompt_num][follow])</a></li>
				<!--{/if}-->
				<!--{if $_G[member][newprompt]}-->
					<!--{loop $_G['member']['category_num'] $key $val}-->
						<li><a href="home.php?mod=space&do=notice&view=$key"><em class="notice_$key"></em><!--{echo lang('template', 'notice_'.$key)}-->(<span class="rq">$val</span>)</a></li>
					<!--{/loop}-->
				<!--{/if}-->
				<!--{if empty($_G['cookie']['ignore_notice'])}-->
				<li class="ignore_noticeli"><a href="javascript:;" onClick="setcookie('ignore_notice', 1);hideMenu('myprompt_menu')" title="{lang temporarily_to_remind}"><em class="ignore_notice"></em></a></li>
				<!--{/if}-->
			</ul>
			<!--{/if}-->
			<!--{if $_G['uid'] && !empty($_G['style']['extstyle'])}-->
				<div id="sslct_menu" class="cl p_pop" style="display: none;">
					<!--{if !$_G[style][defaultextstyle]}--><span class="sslct_btn" onClick="extstyle('')" title="{lang default}"><i></i></span><!--{/if}-->
					<!--{loop $_G['style']['extstyle'] $extstyle}-->
						<span class="sslct_btn" onClick="extstyle('$extstyle[0]')" title="$extstyle[1]"><i style='background:$extstyle[2]'></i></span>
					<!--{/loop}-->
				</div>
			<!--{/if}-->
			<!--{subtemplate common/header_qmenu}-->
		<!--{/if}-->
		<!--{ad/headerbanner/wp a_h}-->
		<div id="hd">
			<div class="wp">
				<div class="hdc cl">
					<!--{eval $mnid = getcurrentnav();}-->
					<h2 class="headlogo"><!--{if !isset($_G['setting']['navlogos'][$mnid])}--><a href="{if $_G['setting']['domain']['app']['default']}http://{$_G['setting']['domain']['app']['default']}/{else}./{/if}" title="$_G['setting']['bbname']">{$_G['style']['boardlogo']}</a><!--{else}-->$_G['setting']['navlogos'][$mnid]<!--{/if}--></h2>

					<!--{if $sxp_search==1}-->
					<div id="headscbar" class="y">
					<!--{subtemplate common/sxp_search}-->
					</div>
					<!--{/if}-->
				</div>
				<div class="ikre" style="clear:both;"></div>
				
			</div>
			
			
<div id="nv">
					
					<ul>
						<!--{loop $_G['setting']['navs'] $nav}-->
							<!--{if $nav['available'] && (!$nav['level'] || ($nav['level'] == 1 && $_G['uid']) || ($nav['level'] == 2 && $_G['adminid'] > 0) || ($nav['level'] == 3 && $_G['adminid'] == 1))}--><li {if $mnid == $nav[navid]}class="a" {/if}$nav[nav]></li><!--{/if}-->
						<!--{/loop}-->
					</ul>
					<!--{hook/global_nav_extra}-->
				</div>
				<!--{if !empty($_G['setting']['plugins']['jsmenu'])}-->
					<ul class="p_pop h_pop" id="plugin_menu" style="display: none">
					<!--{loop $_G['setting']['plugins']['jsmenu'] $module}-->
						 <!--{if !$module['adminid'] || ($module['adminid'] && $_G['adminid'] > 0 && $module['adminid'] >= $_G['adminid'])}-->
						 <li>$module[url]</li>
						 <!--{/if}-->
					<!--{/loop}-->
					</ul>
				<!--{/if}-->
				$_G[setting][menunavs]
				<div id="mu" class="cl">
				<!--{if $_G['setting']['subnavs']}-->
					<!--{loop $_G[setting][subnavs] $navid $subnav}-->
						<!--{if $_G['setting']['navsubhover'] || $mnid == $navid}-->
						<ul class="cl {if $mnid == $navid}current{/if}" id="snav_$navid" style="display:{if $mnid != $navid}none{/if}">
						$subnav
						</ul>
						<!--{/if}-->
					<!--{/loop}-->
				<!--{/if}-->
				</div>
				<!--{if $_G['setting']['search'] && $slist}-->
					<ul id="sxp_twtsc_type_menu" class="p_pop" style="display: none;"><!--{echo implode('', $slist);}--></ul>
					<script type="text/javascript">
						initSearchmenu('comiis_twtsc', '$searchparams[url]');
					</script>
				<!--{/if}-->
				<!--{if $sxp_nav==1}-->
		
				<!--{/if}-->				
				<!--{ad/subnavbanner/a_mu}-->									
		</div>	
	<!--{/if}-->

	<!--{hook/global_header}-->
<!--{/if}-->
<div style="clear:both;"></div>
<div id="wp" class="wp cl">