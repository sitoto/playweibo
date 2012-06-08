#encoding=utf-8
require 'nokogiri'
require 'open-uri'
#require 'iconv'

html=<<HTML_str


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>【北京招聘，求职】-前程无忧</title>
<meta name="description" content="前程无忧为您提供最新最全的北京招聘，求职信息。网聚全国各城市的人才信息，找好工作，找好员工，上前程无忧。">
<meta name="robots" content="all">
<link href="http://js.51jobcdn.com/in/css/style.css?20101230" rel="stylesheet" type="text/css" />
<link href="http://js.51jobcdn.com/in/css/logo.css?20101230" rel="stylesheet" type="text/css" />
<link href="http://js.51jobcdn.com/in/css/my.css?20101230" rel="stylesheet" type="text/css" />
<link href="http://js.51jobcdn.com/in/css/cisco.css?20101230" rel="stylesheet" type="text/css" />
<link href="http://js.51jobcdn.com/in/css/search.css?20110520" rel="stylesheet" type="text/css" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" media="screen" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" media="screen" />
<link rel="bookmark" href="/favicon.ico">
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.JobLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.JobLayer.JobareaLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/jobarea_array_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.JobLayer.FuntypeLayer.js?20110520"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/funtype_array_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.JobLayer.IndtypeLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/indtype_array_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/Base.Search.js?20110301"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/payservice/GetCompetition.js?20110421"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/cv/CV_QuickApply.js?20120110"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/cv/CResume/CV_CMicroResume.js?20120111"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.JobLayer.LowFuntypeLayer.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/jobarea_new_array_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/lowfuntype_array_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/iCom.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/search_key_words.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/dd_key_words_c.js?20120504"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/dd_functype_key_words_c.js?20120504"></script>
</head>
<body>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/jQuery.js"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/JsBase.js"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/login.js?20110422"></script><!--top start-->
<div id="top">
	  <div id="logobg">
    <div id="arealogo"><a href="http://www.51job.com/default.php" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/logo/logo2009.gif" alt="前程无忧"/></a>
<!--<embed src="http://img01.51jobcdn.com/im/2009/logo/logo51.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="215" height="65" wmode="transparent"></embed>-->
 </div>
    <p id="areaver"> <span><a href="javascript:void(0)" onclick="return j2gb('');" onfocus="blur()">
    <script language="javascript">
    <!--
    if(location.hostname == "big5.51job.com") {
       document.write("简体版");
    } else {
       document.write("繁体版");
    }
    //-->
    </script></a></span><span><img src="http://img01.51jobcdn.com/im/2009/vline.gif" alt="" align="absmiddle"/></span> <span><a href="http://www.51job.com/default-e.php" onfocus="blur()">English</a></span></p>
    <span><img src="http://img01.51jobcdn.com/im/2009/logox1.gif" alt=""/></span> </div>
  <p class="loginname" id="loginname">
      </p>
  <div class="navbt">
    <ul>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://www.51job.com/default.php" onfocus="blur()">首页</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://tr.51job.com/default-tr.php" onfocus="blur()">培训充电</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://www.51job.com/default-gj.php" onfocus="blur()">高级猎头</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://www.51job.com/default-it.php" onfocus="blur()">IT人才</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://arts.51job.com/cls/class_0501.html" onfocus="blur()">求职攻略</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://bbs.51job.com" onfocus="blur()">BBS</a></li>
      <li><img src="http://img01.51jobcdn.com/im/2009/navx.gif" /><a href="http://www.51job.com/pm/app/index.html" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/menu_app.gif" style="margin-top:-3px;"/></a></li>
      <li>
                  <span id="loginOutLink" style="display:none;"><a href="http://my.51job.com/my/My_SignOut.php" class="orange" onfocus="blur()">退出</a></span>
          <span id="loginInLink"><a href="http://my.51job.com/my/My_SignUp.php" class="orange" onfocus="blur()">注册</a><span class="orareg">|</span><a href="javascript:void(0);" onclick="showLoginDiv(this)" class="orange" onfocus="blur()">登录</a></span>
              </li>
    </ul>
  </div>
  <div class="clearboth"></div>
  <!--地区频道-->
  <div class="navbtbg">
    <ul>
      <li class="bts"><a href="javascript:gotoehire(0)" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/company.gif" alt="企业登录" border="0"/></a></li>
      <li class="bts"><img src="http://img01.51jobcdn.com/im/2009/area/area1.gif" alt="地区频道" usemap="#Map"  id="all-channel-btn"/>
      <map name="Map" id="Map">
        <area shape="rect" coords="74,0,139,19" href="javascript:void(0);" onmouseover="showAreaDiv($('#all-channel-btn')[0],this)" />
      </map></li>
      <li class="bts"><a href="http://www.51job.com/default_res.php" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/career1.gif" alt="职场资讯" border="0"/></a></li>
      <li class="bts"><a href="http://xy.51job.com/default-xs.php" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/school1.gif" alt="校园招聘" border="0"/></a></li>
      <li class="bts"><a href="http://my.51job.com/cv/CResume/CV_CResumeManage.php" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/resume1.gif" alt="简历管理" border="0"/></a></li>
      <li class="btshow"><a href="http://search.51job.com/jobsearch/advance_search.php?stype=2" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/search.gif" alt="职位搜索" border="0"/></a></li>
      <li class="bts"><a href="http://my.51job.com/my/My_Pmc.php" onfocus="blur()"><img src="http://img01.51jobcdn.com/im/2009/area/my51job1.gif" alt="my51job" border="0"/></a></li>
    </ul>
  </div>
  <div class="clearboth"></div>
    <div class="menu2">
	<table class="tbl searchNav">
		<tr>
			<td>
				<a href="http://search.51job.com/jobsearch/advance_search.php?lang=c&stype=2">高级搜索</a><br />&nbsp;<img src="http://img01.51jobcdn.com/im/2009/bbs/arrowt.gif" />
			</td>
			<td>&nbsp;|&nbsp;<br />&nbsp;</td>
			<td>
				<a href="http://search.51job.com/jobsearch/index.php?lang=c&stype=1">关键字搜索</a><br />&nbsp;
			</td>
			
			<td>&nbsp;|&nbsp;<br />&nbsp;</td>
			<td>
				<a href="http://search.51job.com/jobsearch/map_search.php?lang=c&stype=3">地图搜索</a><br />&nbsp;
			</td>
			<td>&nbsp;<img src="http://img01.51jobcdn.com/im/2009/my/hot001.gif" /><br />&nbsp;</td>
		</tr>
	</table>

<span class="xqts"><b>小Q提示：</b>很多单位不接收带附件和自由格式的简历，建议在线投递简历。</span></div>
  <div class="top_login_container" id="loginDiv">
    <div class="top_login_head">
      <p class="top_login_name">请登录</p>
      <p class="top_login_close"><a href="javascript:void(0)" onclick="hideLoginDiv()"><img src="http://img01.51jobcdn.com/im/2009/bbs/close.gif"/></a></p>
    </div>
    <div class="top_login_content">
      <form id="top_login_form" onsubmit="loginIn('http://my.51job.com');return false;">
        <div style="display:none;"><input type="hidden" id="top_login_language" value="zh-cn"></div>
        <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0">
          <tr><td height="20" id="top_login_form_validate_tips" align="left" colspan="3"></td></tr>
          <tr><td height="29" align="left"><p>用户名：</p></td><td><input type="text" id="top_login_username" class="top_login_input"/></td><td>&nbsp;</td></tr>
          <tr><td align="left" valign="top"><p>密&nbsp;&nbsp;码：</p></td><td valign="top"><input type="password" id="top_login_userpwd" class="top_login_input"/></td><td><a href="http://my.51job.com/my/My_ForgetEmail.php" target="_blank" class="orange">忘记密码</a></td></tr>
          <tr><td colspan="3" align="center"><input name="submit" type="submit" class="top_login_btn" value="登录" id="top_login_submit_btn"/>&nbsp;&nbsp;<a href="http://my.51job.com/my/My_SignUp.php" class="orange" onfocus="blur()"><input type="button" onclick="window.location='http://my.51job.com/my/My_SignUp.php'" class="top_login_btn" value="注册" /></a></td></tr>
        </table>
      </form>
    </div>
  </div>
  
<div id="all-channel" align="left"  style="overflow:hidden;border:#82868D solid 1px;	font-size:12px;width:470px;display:none;z-index:999;background:url(http://img01.51jobcdn.com/im/2009/my/folder/gray_bg02.gif) repeat-x;" >
  <p  style="height:28px;	color:#FF5F00;font-size:14px;font-weight:bold;padding-left:20px;line-height:28px;background:none; border-bottom:1px solid #C6C9CC; padding-left:10px;"><span class="top_login_close"><img src="http://img01.51jobcdn.com/im/2009/emy/folder/icon_close.gif" align="absmiddle"  onclick="document.getElementById('all-channel').style.display='none';"/></span>按拼音选择</p>
  <div style="width:470px; padding-left:5px;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="diqucengcu">
  <tr class="danshuang">
    <td width="20" align="center"><strong>B</strong></td>
    <td width="180"> 
		<a href="http://www.51job.com/default-area.php?area=0100"><strong style="color:#000;">北京</strong></a> 
		<a href="http://www.51job.com/default-area.php?area=2804">包头</a>
		<a href="http://www.51job.com/default-area.php?area=1604">保定</a>
		</td>
	<td width="20" align="center"><strong>M</strong></td>
    <td>
		<a href="http://www.51job.com/default-area.php?area=0903"><span>绵阳</span></a>
	</td>
  </tr>
  <tr>
    <td align="center"><strong>C</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=2402">长春</a> 
		<a href="http://www.51job.com/default-area.php?area=1902">长沙</a>
		<a href="http://www.51job.com/default-area.php?area=0902">成都</a>
		<a href="http://www.51job.com/default-area.php?area=0600">重庆</a>
		<a href="http://www.51job.com/default-area.php?area=0705">常州</a>
		<a href="http://www.51job.com/default-area.php?area=1907">常德</a>
	</td>
    <td align="center"><strong>N</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=0702">南京</a> <a href="http://www.51job.com/default-area.php?area=0803">宁波</a> <a href="http://www.51job.com/default-area.php?area=1302">南昌</a> <a href="http://www.51job.com/default-area.php?area=0709">南通</a> <a href="http://www.51job.com/default-area.php?area=1402">南宁</a></td>
  </tr>
  <tr class="danshuang">
    <td align="center"></td>
	<td><a href="http://www.51job.com/default-area.php?area=0707">常熟</a></td>
	<td align="center"><strong>Q</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=1203">青岛</a>  
       <a href="http://www.51job.com/default-mn.php?area=1104">泉州</a>
	   <a href="http://www.51job.com/default-area.php?area=1606">秦皇岛</a>
	   <a href="http://www.51job.com/default-area.php?area=0319">清远</a></td>
  </tr>
  <tr>
    <td align="center"><strong>D</strong></td>
    <td>
	<a href="http://www.51job.com/default-area.php?area=2303">大连</a>  
	<a href="http://www.51job.com/default-area.php?area=0308">东莞</a>  
	</td>
    <td align="center"><strong>S</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=0200"><strong style="color:#000;">上海</strong></a>
	    <a href="http://www.51job.com/default-area.php?area=0400"><strong style="color:#000;">深圳</strong></a> 
		<a href="http://www.51job.com/default-area.php?area=2302">沈阳</a>  
	   <a href="http://www.51job.com/default-area.php?area=1602">石家庄</a>  
	   <a href="http://www.51job.com/default-area.php?area=0703">苏州</a> 
		<a href="http://www.51job.com/default-area.php?area=1003">三亚</a>  
	   <a href="http://www.51job.com/default-area.php?area=0805">绍兴</a>
	   
	</td>
  </tr>
  <tr class="danshuang">
    <td align="center"><strong>F</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=1102">福州</a> 
		<a href="http://www.51job.com/default-area.php?area=0306">佛山</a>
	</td>
    <td align="center"></td>
    <td><a href="http://www.51job.com/default-area.php?area=0304">汕头</a>
	<a href="http://www.51job.com/default-area.php?area=0325">顺德</a></td>
  </tr>
  <tr>
    <td align="center"><strong>G</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=0302"><strong style="color:#000;">广州</strong></a> 
		<a href="http://www.51job.com/default-area.php?area=2602">贵阳</a>
	</td>
    <td align="center"><strong>T</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=0500">天津</a> 
		<a href="http://www.51job.com/default-area.php?area=2102">太原</a>
		<a href="http://www.51job.com/default-area.php?area=0808">台州</a>
		<a href="http://www.51job.com/default-area.php?area=1605">唐山</a>
		<a href="http://www.51job.com/default-area.php?area=0718">泰州</a>
		</td>
  </tr>
  <tr class="danshuang">
    <td align="center"><strong>H</strong></td>
    <td>
		<a href="http://www.51job.com/default-area.php?area=2202">哈尔滨</a>
		<a href="http://www.51job.com/default-area.php?area=0802">杭州</a>
		<a href="http://www.51job.com/default-area.php?area=1502">合肥</a>
		<a href="http://www.51job.com/default-area.php?area=1002">海口</a>
		<a href="http://www.51job.com/default-area.php?area=2802">呼和浩特</a>
    </td>
    <td align="center"><strong>W</strong></td>
    <td>
		<a href="http://www.51job.com/default-area.php?area=1802">武汉</a> 
		<a href="http://www.51job.com/default-area.php?area=0704">无锡</a> 
		<a href="http://www.51job.com/default-area.php?area=0804">温州</a>
		<a href="http://www.51job.com/default-area.php?area=3102">乌鲁木齐</a>
		<a href="http://www.51job.com/default-area.php?area=1503">芜湖</a>
		<a href="http://www.51job.com/default-area.php?area=1205">潍坊</a>
		<a href="http://www.51job.com/default-area.php?area=1206">威海</a>
	</td>
  </tr>
  <tr>
    <td align="center"></td>
    <td>
		<a href="http://www.51job.com/default-area.php?area=0303">惠州</a>
		<a href="http://www.51job.com/default-area.php?area=1905">衡阳</a>
		<a href="http://www.51job.com/default-area.php?area=0719">淮安</a>
		<a href="http://www.51job.com/default-area.php?area=0809"><span>湖州</span></a>
    </td>
    <td align="center"><strong>X</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=2002">西安</a> 
		<a href="http://www.51job.com/default-mn.php?area=1103">厦门</a>
		<a href="http://www.51job.com/default-area.php?area=0711">徐州</a>
		<a href="http://www.51job.com/default-area.php?area=1805">襄阳</a>
		<a href="http://www.51job.com/default-area.php?area=1904">湘潭</a>
		</td>
  </tr>
  <tr class="danshuang">
    <td align="center"><strong>J</strong></td>
    <td>		
		<a href="http://www.51job.com/default-area.php?area=1202">济南</a>
		<a href="http://www.51job.com/default-area.php?area=0807">嘉兴</a>
		<a href="http://www.51job.com/default-area.php?area=0806">金华</a>
		<a href="http://www.51job.com/default-area.php?area=2403">吉林</a>
		<a href="http://www.51job.com/default-area.php?area=0315">江门</a>
		<a href="http://www.51job.com/default-area.php?area=1807">荆州</a>
	</td>
    <td align="center"><strong>Y</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=1204">烟台</a>
		<a href="http://www.51job.com/default-area.php?area=0708">扬州</a>
		<a href="http://www.51job.com/default-area.php?area=1803">宜昌</a>
		<a href="http://www.51job.com/default-area.php?area=0713">盐城</a>
		<a href="http://www.51job.com/default-area.php?area=0814"><span>义乌</span></a>
	</td>
  </tr>
  <tr>
    <td align="center"></td>
    <td>
	  <a href="http://www.51job.com/default-area.php?area=0715">江阴</a>
	  <a href="http://www.51job.com/default-area.php?area=1209"><span>济宁</span></a>
	</td>
	<td align="center"><strong>Z</strong></td>
    <td>
	<a href="http://www.51job.com/default-mn.php?area=1105">漳州</a> 
	<a href="http://www.51job.com/default-area.php?area=1702">郑州</a>
	<a href="http://www.51job.com/default-area.php?area=0307">中山</a>
	<a href="http://www.51job.com/default-area.php?area=0305">珠海</a>
	<a href="http://www.51job.com/default-area.php?area=0710">镇江</a>
	<a href="http://www.51job.com/default-area.php?area=1903">株洲</a>
	<a href="http://www.51job.com/default-area.php?area=0317">湛江</a>
	<a href="http://www.51job.com/default-area.php?area=0318">肇庆</a>
	</td>
  </tr>
  <tr class="danshuang">
    <td align="center"><strong>K</strong></td>
    <td><a href="http://www.51job.com/default-area.php?area=2502">昆明</a>
		<a href="http://www.51job.com/default-area.php?area=0706">昆山</a>
	</td>
    <td align="center"></td>
    <td>
	  <a href="http://www.51job.com/default-area.php?area=0714">张家港</a>
	  <a href="http://www.51job.com/default-area.php?area=1207"><span>淄博</span></a>
	</td>
  </tr>
  <tr>
    <td align="center"><strong>L</strong></td>
    <td>
		<a href="http://www.51job.com/default-area.php?area=2702">兰州</a>
		<a href="http://www.51job.com/default-area.php?area=1603">廊坊</a>
		<a href="http://www.51job.com/default-area.php?area=1208">临沂</a>
		<a href="http://www.51job.com/default-area.php?area=1703">洛阳</a>
		<a href="http://www.51job.com/default-area.php?area=0712">连云港</a>
	</td>
  </tr>
</table>
  </div>
	<iframe src="about:blank" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" style="position:absolute;  top:0px; left:0px; width:415px; height:112px; z-index:-1;filter='progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)';"></iframe>	
</div></div>
<!--top end-->



<div class="maincenter" style="margin-bottom: 10px;"><div class="mainleft s_search">
	
	<div class="redtop">
		<span><img src="http://img01.51jobcdn.com/im/2009/redtl.gif" align="left" /></span>
		<span><img src="http://img01.51jobcdn.com/im/2009/redtr.gif" align="right" /></span>
	</div>

	<div class="redline">

		<div class="ss_text">
			<form name="searchForm" method="post" action="">
				<input type="hidden" name="lang" value="c">
				<input type="hidden" name="stype" value="2">
				<input type="hidden" name="postchannel" value="0000">
				<input type="hidden" name="fromType" value="1">
				<input type="hidden" name="line" value="">
				<input type="hidden" name="confirmdate" value="9">
				<div class="insearch2">

	<ul id="kwdTypeSel"><li valKey="2" class="kt_bg2" title="搜职位发布所有内容">全文</li><li valKey="1" class="kt_bg3" title="仅搜职位名关键字">职位名</li><li valKey="0" class="kt_bg3" title="仅搜公司名关键字">公司名</li></ul><input name="keywordtype" align="absmiddle" type="hidden" value="2" /><p><input name="keyword" maxlength="180" type="text" class="search9 kwdBold"  style=" color: #b5b5b5;width:395px"  value="请输入关键字" /></p><p><input type="button" align="absmiddle" name="btnJobarea"  value="北京"  class="anbg"/><input name="jobarea" type="hidden" class="selebg1" value="0100" /></p><p class="searchan"><input name="image" align="absmiddle" type="image" src="http://img01.51jobcdn.com/im/2009/search/c/jsearch.gif" align="middle"/>&nbsp;&nbsp;<img align="absmiddle" id="btnSearchInResult" src="http://img01.51jobcdn.com/im/2009/search/c/jgzss.gif" align="absmiddle" /></p>

	<div class="clearboth"></div>
	<div id="wrapSearchKeyWrods">
		<div style="margin-top:8px;display:none">
			<strong>相关关键字：</strong>
			<span id="searchKeyWrods"></span>
		</div>
	</div>
	<div class="pot"></div>
	<div class="clearboth"></div>

	
		<div class="sinTip">
		<ul id="ullist2" class="sinTipTxt">
			<li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">销售</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">会计</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">行政</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">司机</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">客服</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">物流</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">助理</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">采购</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">java</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">人力资源</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">银行</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">日语</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">设计</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">外贸</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">计算机</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">电气</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">编辑</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">机械</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">实习</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">财务</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">业务员</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">房地产</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">医药代表</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">化妆品</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="orange">富士康</a></li><li class="rmssLi" style="display:inline"><a href="javascript: void(0);" onclick="zzSearch.hotKeywordSearch( this.innerHTML );return false;" class="blue">培训</a></li><li class="rmssLi" style="display:inline"><a href="http://www.51job.com/careerpost/jianlishuoming/index.php" target="_blank"  class="orange">简历指导</a></li><li class="rmssLi" style="display:inline"><a href="http://www.51job.com/careerpost/tiaocao/mianshi.php" target="_blank"  class="blue">面试技巧</a></li><li class="rmssLi" style="display:inline"><a href="http://www.51job.com/careerpost/tiaocao/tiaocao.php" target="_blank"  class="blue">跳槽策略</a></li><li class="rmssLi" style="display:inline"><a href="http://my.51job.com/payservice/translateresume/introduce.php" target="_blank"  class="blue">简历翻译</a></li>
		</ul>
		<div class="clearboth"></div>
		</div>
	<br />
	<div id="kwdAdvDispPot" class="pot" ></div><p >职能类别&nbsp;<input name="btnFuntype" value="选择/修改"  type="button" class="selebg1" align="absmiddle" />
<input name="funtype" type="hidden" class="selebg1" value="0000" />&nbsp;&nbsp;
行业类别&nbsp;<input name="btnIndustrytype" value="选择/修改"  type="button" class="selebg1" align="absmiddle" />
<input name="industrytype" type="hidden" class="selebg1" value="00" /></p>

</div>

<div class="adviceHelp"><img src="http://img01.51jobcdn.com/im/2009/search/q1.gif" align="absmiddle" /><a href="javascript:void(0);" onclick="zzSearch.openAdviceLayer();return false;" class="orange1">意见反馈</a><br/><img src="http://img01.51jobcdn.com/im/2009/search/q2.gif" align="absmiddle" /><a href="http://www.51job.com/hl/grjl.php" class="orange1" target="_blank">了解更多</a></div>

<div class="clearboth" style="height: 5px;"></div>
			</form>
		</div>

	</div>

	<div class="redbotts">
		<span><img src="http://img01.51jobcdn.com/im/2009/search/redbl.gif" align="left" height="14"/></span>
		<span class="close_s1" ><img onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=34&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();zzSearch.switchFunIndBtnDisp( this );" align="left"  src="http://img01.51jobcdn.com/im/2009/search/show.gif" width="43" height="14" /><img onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=34&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();zzSearch.switchFunIndBtnDisp( this );" align="left" style="display:none;" src="http://img01.51jobcdn.com/im/2009/search/show1.gif" width="43" height="14" /></span>
		<span><img src="http://img01.51jobcdn.com/im/2009/search/redbr.gif" align="right" height="14"/></span>
	</div>

</div><div class="mainleft s_search search_btm0"><table border=0 cellspacing=0 cellpadding=4><tr>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13311202" title="联强国际贸易（中国）有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2010/gz/lianqiang0723_8182.gif" border="0" width="150" height="60"></a></td>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13274541" title="北京英才添翼科技有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2012/bj/yingcai0524_8784wh.gif" border="0" width="150" height="60"></a></td>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13321841" title="因特驰软件（北京）有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2012/zz/yinte0606_8681whc.gif" border="0" width="150" height="60"></a></td>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13286705" title="深圳市福田区创想时代职业培训学校" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2012/shzh/chuangx0606_8692wh.gif" border="0" width="150" height="60"></a></td>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13305574" title="美诺" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2012/sh/meinuo0604_8812wh.gif" border="0" width="150" height="60"></a></td>
	<td><a href="http://ac.51job.com/phpAD/adtrace.php?ID=13284571" title="儒森教育" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2012/sh/rusen0104b_8673wh.gif" border="0" width="150" height="60"></a></td>
</tr>
</table></div><div class="mainleft s_search search_btm0 condDesc" ><img src="http://img01.51jobcdn.com/im/2009/search/searchbg1.gif" align="absmiddle">&nbsp;北京 + 近三天</div><div class="dibiao_line"><div class="s_search search_btm0 condDesc districtNav"><b><font color="#393939">北京地区：</font></b>&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" ><font color="#ff7300" style="font-weight:bold">所有</font></a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0101,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >东城区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0102,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >西城区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0103,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >崇文区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0104,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >宣武区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0105,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >朝阳区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0106,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >丰台区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0107,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >石景山区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0108,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >海淀区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0110,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >房山区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0111,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >通州区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0112,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >顺义区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0113,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >昌平区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0114,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >大兴区</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0109%252C0115%252C0116%252C0117%252C0118,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" >近郊</a></div><div class="s_search search_btm0 condDesc districtNav" id="Lineline"><b><font color="#393939">地铁沿线：</font></b>&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();zzSearch.ShowLine(0)"><font color="#ff7300" id="LineFont0" style="font-weight:bold">所有</font></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(1)"><font id="LineFont1">地铁1号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(2)"><font id="LineFont2">地铁2号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(3)"><font id="LineFont3">地铁4号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(4)"><font id="LineFont4">地铁5号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(5)"><font id="LineFont5">地铁8号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(6)"><font id="LineFont6">地铁10号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(7)"><font id="LineFont7">地铁13号线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(8)"><font id="LineFont8">8通线</font></a></a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="zzSearch.ShowLine(9)"><font id="LineFont9">机场快线</font></a></a></div><div class="search_btm0 LineStop districtNav" id="Line1" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C6%BB%B9%FB%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">苹果园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%C5%B3%C7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">古城</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%CB%BD%C7%D3%CE%C0%D6%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">八角游乐园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%CB%B1%A6%C9%BD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">八宝山</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D3%F1%C8%AA%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">玉泉路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%E5%BF%C3%CB%C9&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">五棵松</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%F2%CA%D9%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">万寿路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%AB%D6%F7%B7%D8&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">公主坟</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BE%FC%CA%C2%B2%A9%CE%EF%B9%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">军事博物馆</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C4%BE%E9%D8%B5%D8&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">木樨地</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C4%CF%C0%F1%CA%BF%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">南礼士路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%B4%D0%CB%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">复兴门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%B5%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西单</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%B0%B2%C3%C5%CE%F7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天安门西</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%B0%B2%C3%C5%B6%AB&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天安门东</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%F5%B8%AE%BE%AE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">王府井</a><br>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%B5%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东单</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%A8%B9%FA%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">建国门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D3%C0%B0%B2%C0%EF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">永安里</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%FA%C3%B3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">国贸</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B4%F3%CD%FB%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">大望路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%C4%BB%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">四惠</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%C4%BB%DD%B6%AB&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA1%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">四惠东</a></div><div class="search_btm0 LineStop districtNav" id="Line2" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%B5%B9%AB%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">车公庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%B7%B3%C9%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">阜成门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%B4%D0%CB%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">复兴门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%A4%B4%BB%BD%D6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">长椿街</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D0%FB%CE%E4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">宣武门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%CD%C6%BD%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">和平门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C7%B0%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">前门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%E7%CE%C4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">崇文门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%BE%A9%D5%BE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北京站</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%A8%B9%FA%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">建国门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%AF%D1%F4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">朝阳门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%CB%C4%CA%AE%CC%F5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东四十条</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D3%BA%BA%CD%B9%AC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">雍和宫</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%B2%B6%A8%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">安定门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%C4%C2%A5%B4%F3%BD%D6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">鼓楼大街</a><br>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%FD%CB%AE%CC%B6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA2%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">积水潭</a></div><div class="search_btm0 LineStop districtNav" id="Line3" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%B2%BA%D3%C7%C5%B1%B1&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">安河桥北</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%B9%AC%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北宫门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%D4%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西苑</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D4%B2%C3%F7%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">圆明园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%BE%A9%B4%F3%D1%A7%B6%AB%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北京大学东门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%D0%B9%D8%B4%E5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">中关村</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%A3%B5%ED%BB%C6%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">海淀黄庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C8%CB%C3%F1%B4%F3%D1%A7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">人民大学</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%BA%B9%AB%B4%E5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">魏公村</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%FA%BC%D2%CD%BC%CA%E9%B9%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">国家图书馆</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AF%CE%EF%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">动物园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D0%C2%BD%D6%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">新街口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C6%BD%B0%B2%C0%EF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">平安里</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%CB%C4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西四</a><br>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%E9%BE%B3%BA%FA%CD%AC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">灵境胡同</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%B5%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西单</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D0%FB%CE%E4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">宣武门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B2%CB%CA%D0%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">菜市口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%D5%C8%BB%CD%A4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">陶然亭</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%BE%A9%C4%CF%D5%BE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北京南站</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C2%ED%BC%D2%B1%A4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">马家堡</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%C7%C3%C5%CE%F7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">角门西</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%AB%D2%E6%CE%F7%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA4%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">公益西桥</a></div><div class="search_btm0 LineStop districtNav" id="Line4" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%CD%A8%D4%B7%B1%B1&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天通苑北</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%CD%A8%D4%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天通苑</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%CD%A8%D4%B7%C4%CF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天通苑南</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%A2%CB%AE%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">立水桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%A2%CB%AE%C7%C5%C4%CF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">立水桥南</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%D4%B7%C2%B7%B1%B1&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北苑路北</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B4%F3%CD%CD%C2%B7%B6%AB&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">大屯路东</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%DD%D0%C2%CE%F7%BD%D6%B1%B1%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">惠新西街北口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%DD%D0%C2%CE%F7%BD%D6%C4%CF%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">惠新西街南口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%CD%C6%BD%CE%F7%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">和平西桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%CD%C6%BD%C0%EF%B1%B1%BD%D6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">和平里北街</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D3%BA%BA%CD%B9%AC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">雍和宫</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%D0%C2%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北新桥</a><br>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D5%C5%D7%D4%D6%D2%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">张自忠路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%CB%C4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东四</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B5%C6%CA%D0%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">灯市口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%B5%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东单</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%E7%CE%C4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">崇文门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B4%C5%C6%F7%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">磁器口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%EC%CC%B3%B6%AB%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">天坛东门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C6%D1%BB%C6%D3%DC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">蒲黄榆</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%F5%BC%D2%D2%A4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">刘家窑</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%CE%BC%D2%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA5%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">宋家庄</a></div><div class="search_btm0 LineStop districtNav" id="Line5" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%AD%C1%D6%B9%AB%D4%B0%C4%CF%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA8%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">森林公园南门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%C2%C1%D6%C6%A5%BF%CB%B9%AB%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA8%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">奥林匹克公园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%C2%CC%E5%D6%D0%D0%C4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA8%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">奥体中心</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%CD%C1%B3%C7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA8%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北土城</a></div><div class="search_btm0 LineStop districtNav" id="Line6" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%CD%B9%B5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">巴沟</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%D5%D6%DD%BD%D6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">苏州街</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%A3%B5%ED%BB%C6%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">海淀黄庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%AA%B4%BA%C0%EF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">知春里</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%AA%B4%BA%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">知春路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%CD%C1%B3%C7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西土城</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C4%B5%B5%A4%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">牡丹园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%A1%B5%C2%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">健德门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%CD%C1%B3%C7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北土城</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%B2%D5%EA%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">安贞门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%DD%D0%C2%CE%F7%BD%D6%C4%CF%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">惠新西街南口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%D6%D2%A9%BE%D3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">芍药居</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CC%AB%D1%F4%B9%AC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">太阳宫</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C8%FD%D4%AA%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">三元桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%C1%C2%ED%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">亮马桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C5%A9%D2%B5%D5%B9%C0%C0%B9%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">农业展览馆</a><br>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%C5%BD%E1%BA%FE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">团结湖</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%F4%BC%D2%C2%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">呼家楼</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%F0%CC%A8%CF%A6%D5%D5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">金台夕照</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%FA%C3%B3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">国贸</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%AB%BE%AE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">双井</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BE%A2%CB%C9&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA10%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">劲松</a></div><div class="search_btm0 LineStop districtNav" id="Line7" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B4%F3%D6%D3%CB%C2&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">大钟寺</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%AA%B4%BA%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">知春路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%E5%B5%C0%BF%DA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">五道口</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%CF%B5%D8&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">上地</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%B6%FE%C6%EC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西二旗</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%FA%D4%F3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">龙泽</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%D8%C1%FA%B9%DB&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">回龙观</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BB%F4%D3%AA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">霍营</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%A2%CB%AE%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">立水桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%D4%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北苑</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%FB%BE%A9%CE%F7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">望京西</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%D6%D2%A9%BE%D3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">芍药居</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%E2%CE%F5%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">光熙门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%F8%B7%BC&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">柳芳</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%B5%D8%CC%FA13%BA%C5%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东直门</a></div><div class="search_btm0 LineStop districtNav" id="Line8" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%C4%BB%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">四惠</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%C4%BB%DD%B6%AB&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">四惠东</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%DF%B1%AE%B5%EA&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">高碑店</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B4%AB%C3%BD%B4%F3%D1%A7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">传媒大学</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%AB%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">双桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%DC%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">管庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%CB%C0%EF%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">八里桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%D4%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北苑</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%FB%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">果园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BE%C5%BF%C3%CA%F7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">九棵树</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C0%E6%D4%B0&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">梨园</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C1%D9%BA%D3%C0%EF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">临河里</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%C1%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=8%CD%A8%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">土桥</a></div><div class="search_btm0 LineStop districtNav" id="Line9" style="border: 1px #999999 solid;display:none">&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%BB%FA%B3%A1%BF%EC%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C8%FD%D4%AA%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%BB%FA%B3%A1%BF%EC%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">三元桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=T3%BA%BD%D5%BE%C2%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%BB%FA%B3%A1%BF%EC%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">T3航站楼</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=T2%BA%BD%D5%BE%C2%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17&line=%BB%FA%B3%A1%BF%EC%CF%DF" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=36&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">T2航站楼</a></div><div class="s_search search_btm0 dibiaoDesc districtNav"><b><font color="#393939">热门地标：</font></b>&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();"><font color="#ff7300" style="font-weight:bold">所有</font></a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=CBD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">CBD</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%F0%C8%DA%BD%D6&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">金融街</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%D0%B9%D8%B4%E5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">中关村</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D1%E0%C9%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">燕莎</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C2%ED%B5%E9&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">马甸</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%AB%D6%F7%B7%D8&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">公主坟</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%AF%CD%E2&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">朝外</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D1%C7%D4%CB%B4%E5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">亚运村</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%CF%B5%D8&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">上地</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%FB%BE%A9&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">望京</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B6%AB%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">东直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CA%AF%BE%B0%C9%BD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">石景山</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%D6%B1%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西直门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D2%E0%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">亦庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BD%A8%B9%FA%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">建国门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C8%FD%D4%AA%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">三元桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%F5%B8%AE%BE%AE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">王府井</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BE%C6%CF%C9%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">酒仙桥</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id="more" style="display:; text-decoration:none; color:#FF7300;" onclick="zzSearch.showMore(1);" href="javascript:void(0);">更多︾</a><span id="moreDibao" style="display:none"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%B5%A5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西单</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D6%AA%B4%BA%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">知春路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B9%FA%D5%B9%D6%D0%D0%C4&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">国展中心</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B5%C2%CA%A4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">德胜门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BA%CD%C6%BD%C0%EF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">和平里</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CA%C0%C3%B3%CC%EC%BD%D7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">世贸天阶</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%E5%BF%C3%CB%C9&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">五棵松</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D7%CF%D6%F1%C7%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">紫竹桥</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%BE%B2%B0%B2%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">静安庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B1%B1%CC%AB%C6%BD%D7%AF&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">北太平庄</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%AF%D1%F4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">朝阳门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C9%D6%D2%A9%BE%D3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">芍药居</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%C8%FD%C0%EF%CD%CD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">三里屯</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%D1%A7%D4%BA%C2%B7&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">学院路</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B3%E7%CE%C4%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">崇文门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CD%C5%BD%E1%BA%FE&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">团结湖</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%B7%B3%C9%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">阜成门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CB%C4%BB%DD&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">四惠</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B0%B2%B6%A8%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">安定门</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%CE%F7%B0%D3%BA%D3&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">西坝河</a>&nbsp;&nbsp;<a href="http://search.51job.com/list/0100,0100,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&address=%B8%B4%D0%CB%C3%C5&lonlat=0%2C0&radius=0.03&ord_field=0&list_type=0&confirmdate=9&fromType=17" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=35&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();">复兴门</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="zzSearch.showMore(0);" href="javascript:void(0);" style="text-decoration:none; color:#FF7300;">收起︽</a></span></div></div><div class="mainleft"><div style="height:1px;"><a name="map_top"><div></div></a></div>
<div class="search_left">

	<div class="bline_search zjjzss_kb">
		<form name="excludeForm" method="post" action="">
			<p class="bt_re">在结果中筛选</p>
			<p class="bt_pc1">排除&nbsp;<input align="absmiddle" style="width:115px" type="text" name="keyword" value="输入排除关键字" maxlength="100" /></p>
			<p class="bt_pc"><input name="image" type="image" src="http://img01.51jobcdn.com/im/2009/search/c/pc.gif" align="middle" /></p>
		</form>
	</div>

	<div class="bline_search">
		<div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">工作年限</div><div class="refineMenu"><ul><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=6">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=1&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">在读学生(763)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=2&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">应届毕业生(3935)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=3&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">一年以上(23225)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=4&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">二年以上(17953)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=5&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">三年以上(17114)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=6&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">五年以上(8298)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=7&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">八年以上(1195)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=8&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">十年以上(769)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=9&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=6">不限(26748)</a></li></ul></div><div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">发布日期</div><div class="refineMenu"><ul><li><a  href="http://search.51job.com/list/0100,0000,0000,00,9,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=5">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,1,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=5">近一天(100000)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,2,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=5">近二天(100000)</a></li><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=5">近三天(100000)</a></li></ul></div><div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">学历要求</div><div class="refineMenu"><ul><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=7">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=1&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">初中(622)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=2&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">高中(4125)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=3&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">中技(648)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=4&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">中专(4151)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=5&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">大专(37630)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=6&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">本科(36506)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=7&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">硕士(1790)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=8&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">博士(95)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=9&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=7">其他(286)</a></li></ul></div><div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">公司性质</div><div class="refineMenu"><ul><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=8">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=01&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">外资(欧美)(8758)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=02&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">外资(非欧美)(4787)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=03&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">合资(欧美)(3753)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=04&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">合资(非欧美)(5640)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=05&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">国企(5202)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=06&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">民营公司(55633)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=07&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">外企代表处(361)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=09&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">政府机关(7)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=10&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">事业单位(413)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=11&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">非盈利机构(314)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=08&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=8">其它性质(15132)</a></li></ul></div><div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">月薪范围</div><div class="refineMenu"><ul><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=21">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,00,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">面议(78854)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,01,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">1500以下(93)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,02,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">1500-1999(475)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,03,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">2000-2999(3718)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,04,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">3000-4499(6008)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,05,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">4500-5999(4426)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,06,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">6000-7999(2464)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,07,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">8000-9999(1793)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,08,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">10000-14999(1548)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,09,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">15000-19999(279)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,10,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">20000-29999(144)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,11,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">30000-49999(80)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,12,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=21">50000及以上(118)</a></li></ul></div><div class="refineNavOn" onclick="zzSearch.switchRefineMenu( this );">工作类型</div><div class="refineMenu"><ul><li><a  class="high"  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9?fromType=22">所有</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=0&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=22">全职(99228)</a></li><li><a  href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=1&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=22">兼职(772)</a></li></ul></div>
	</div>
	<p><a href="http://my.51job.com/my/My_SearchManage.php" target="_blank"><img src="http://img01.51jobcdn.com/im/2009/search/c/yjdyan.gif" /></a><a href="http://my.51job.com/rss/Rss001.php" target="_blank"><img src="http://img01.51jobcdn.com/im/2009/search/c/rssdyan.gif" /></a></p>
	<div>
		<a href="http://ac.51job.com/phpAD/adtrace.php?ID=12399818" title="51club&#124;爱工作，爱生活" target="_blank"><img src="http://img01.51jobcdn.com/im/images/2010/careerpost/51club/156220.gif" width="156" height="220"/></a><div><img src="http://www.51job.com/ex/page_view.php/adid=12399818" width="0" height="0" border="0"/></div>
	</div>
</div> <div class="search_right resultRight">
		<div class="resultTopNav">
			<table cellpadding="0" cellspacing="0" class="resultNav">
				<tr>
					<td class="resultTopNavLeft">
					<div class="sortByFloatMarginLeft"><span>排序方式：</span><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9&fromType=11" title="按更新时间排序"><img src="http://img01.51jobcdn.com/im/2009/search/gray_agxr.gif" align="absmiddle" /></a></div><div class="sortByFloatMarginLeft"><div id="sfrqTabContent" class="TabContent" style="display:none;margin-top:22px;"><ul>
						 <li><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=1&fromType=37">一天首发</a></li>
						 <li><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=2&fromType=38">三天首发</a></li>
						 <li><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=3&fromType=39">一周首发</a></li>
						 <li><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=4&fromType=40">两周首发</a></li>  		  
	                 </ul></div><img src="http://img01.51jobcdn.com/im/2009/search/blue_asfr.gif" align="absmiddle" title="按首发日排序" style="cursor:pointer;" onclick="$('#sfrqTabContent').css('display','inline');"/></div><div class="sortByFloatMarginLeft"><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=1&list_type=0&confirmdate=9&fromType=10" title="按相关度排序"><img src="http://img01.51jobcdn.com/im/2009/search/blue_axgd.gif" align="absmiddle" /></a></div></td>
					<td align="right" nowrap="nowrap">
					  <table><tr><td>
					  <span>查看方式：</span><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=1&list_type=0&confirmdate=9" title="按列表查看" onclick="zzSearch.pageFormSub( { list_type : 0 , fromType : 13 , curr_page : 1 } );return false;"><img src="http://img01.51jobcdn.com/im/2009/search/tb3.gif" align="absmiddle" /></a>
					  <a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=1&list_type=1&confirmdate=9" title="按明细查看" onclick="zzSearch.pageFormSub( { list_type : 1 , fromType : 12 , curr_page : 1 } );return false;"><img src="http://img01.51jobcdn.com/im/2009/search/tb4.gif" align="absmiddle" /></a>
					  <img src="http://img01.51jobcdn.com/im/2009/search/fy_line.gif" align="absmiddle"/></td>
					  <td nowrap="nowrap">
						<table  class="navBold" ><tr><td  style="padding-right:5px;" ><img src="http://img01.51jobcdn.com/im/2009/pageloff.gif" border="0" /></td><td>1-30 / 100000</td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,2.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;"  style="border:0px; width:auto;margin-left:5px;" ><img src="http://img01.51jobcdn.com/im/2009/pageron.gif" border="0" /></a></td></tr></table>
					  </td></tr></table>
					</td>
				</tr>
			</table>
		</div>
			<div class="resultListDiv">
				<table id="resultList" class="resultList resultListWide" cellpadding="0" cellspacing="0">
			<tr class="titleTr">
				<td  class="td0">&nbsp;</td>
				<td  class="td1">职位名称</td>
				<td  class="td2">公司名称</td>
				<td  class="td3">工作地点</td>
				<td  class="td4">更新日</td>
				<td  class="td5">&nbsp;</td>
			</tr>
			<tr><td colspan="6" style="height:2px;"></td></tr>
			
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51126676" value="51126676" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126676,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >技术支持工程师（建筑五金类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126676">北京</span></td>

				<td class="td4"><span id="map_fbrq51126676">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126676" onclick="zzSearch.jobview( '51126676' );QuickApply(51126676,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126676">岗位描述1、学历要求：建筑类相关专业大专文凭及以上2.主要负责项目的现场售后技术服务及维护工作，协助项目经理进行方案设计及现场讲解3.能够吃苦耐劳，适应出差工作4. 两年以上相关工作经验5.有门厂及建材类技术支持者优先6.具有良好的...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126676' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126676',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51126689" value="51126689" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126689,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >区域销售经理（建筑五金类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126689">北京</span></td>

				<td class="td4"><span id="map_fbrq51126689">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126689" onclick="zzSearch.jobview( '51126689' );QuickApply(51126689,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126689">岗位描述1、学历要求：正规全日制大专文凭及以上2. 了解获取有效工程信息的方式,有固定客户资源的优先3.市场开拓及客户维护4.能够吃苦耐劳，适应出差工作5.两年以上相关销售工作经验,有过项目操作的成功经验者优先6, 对外沟通及协调能力强,...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126689' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126689',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51126739" value="51126739" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126739,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >设计专员（建筑五金类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126739">北京</span></td>

				<td class="td4"><span id="map_fbrq51126739">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：三年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126739" onclick="zzSearch.jobview( '51126739' );QuickApply(51126739,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126739">岗位描述1、学历要求：正规全日制大专文凭及以上2.熟练使用AutoCAD等绘图软件，及Excel应用3.负责项目设计方案的编制、及根据客户要求更改设计。4.有过与国内外大设计院接触的经验，并能与设计师建立良好合作关系。5.三年以上相关工作经验...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126739' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126739',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51126758" value="51126758" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126758,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售工程师（中央空调类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126758">北京</span></td>

				<td class="td4"><span id="map_fbrq51126758">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126758" onclick="zzSearch.jobview( '51126758' );QuickApply(51126758,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126758">岗位描述1、学历要求：正规全日制大专文凭及以上。2. 岗位职责： 执行公司市场销售策略，达成个人销售指标；进行项目开发，和客户进行良好沟通；制作标书，负责投标和商务答标活动；负责工程项目的追踪和协调。3. 从事暖通空调施工管理工...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126758' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126758',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51126777" value="51126777" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126777,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >技术支持工程师（中央空调类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126777">北京</span></td>

				<td class="td4"><span id="map_fbrq51126777">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126777" onclick="zzSearch.jobview( '51126777' );QuickApply(51126777,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126777">岗位描述1、学历要求：正规全日制大专文凭及以上2、专业要求：暖通专业优先3、工作经历：2年以上暖通设计相关及招投标书制作经验，熟悉中央空调产品及设计的基本知识，多次参与大型中央空调的招投标，能熟练运用CAD等绘图软件。工作吃苦耐...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126777' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126777',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51126792" value="51126792" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126792,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >大客户经理（中央空调类）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126792">北京</span></td>

				<td class="td4"><span id="map_fbrq51126792">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：三年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126792" onclick="zzSearch.jobview( '51126792' );QuickApply(51126792,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126792">岗位描述1、工作职责：负责地产、交通政府机关、大型企业（电信、能源、电力、钢铁等）、体育设施、金融系统中某一类行业客户的开发和维护：㈠、了解客户的基本信息及所处行业特点和变化；㈡、了解客户工程项目规划和预算、采购流程及影响...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126792' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126792',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51126808" value="51126808" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51126808,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >出纳</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2798806,0000,10,1.html" class="coname" target="_blank" >北京鼎安同创科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51126808">北京</span></td>

				<td class="td4"><span id="map_fbrq51126808">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司
				</td>
				
				<td class="td5">
					<a id="jobappli_51126808" onclick="zzSearch.jobview( '51126808' );QuickApply(51126808,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51126808">1、2年以上相关工作经验；2、全日制学历：大专及以上，有会计证；3、熟练使用办公设备及OFFICE软件；4、工作认真、细致、负责。</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51126808' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51126808',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51129466" value="51129466" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51129466,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >资深策划文案-启思泓创</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2677347,0000,10,1.html" class="coname" target="_blank" >北京启思泓创广告有限公司</a></td>

				<td class="td3"><span id="map_jobarea51129466">北京</span></td>

				<td class="td4"><span id="map_fbrq51129466">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：三年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_51129466" onclick="zzSearch.jobview( '51129466' );QuickApply(51129466,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51129466">1. 三年以上别墅、商业等高端地产广告经验，拿成功案例说话；2. 文字有意思，策略够精准， PPT大拿更好；3. 有一定的市场营销知识与经验，对地产项目的定位、推广、公关、渠道等提出准确可行的解决方案；4. 能独立撰写地产项目年度、阶段...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51129466' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51129466',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51129214" value="51129214" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51129214,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >检验员</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,1278058,0000,10,1.html" class="coname" target="_blank" >北京百利康生化有限公司</a></td>

				<td class="td3"><span id="map_jobarea51129214">北京</span></td>

				<td class="td4"><span id="map_fbrq51129214">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：应届毕业生&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模少于50人
				</td>
				
				<td class="td5">
					<a id="jobappli_51129214" onclick="zzSearch.jobview( '51129214' );QuickApply(51129214,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51129214">分析工程师职位描述：1.根据产品质量标准要求，准备相关的标准文件；清理并准备各种实验仪器，整理实验台，确保符合实验要求；2.根据产品质量标准文件，进行样品的各项理化实验；记录实验过程中的各项指标数据；3.根据实验记录数据，按照...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51129214' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51129214',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51129517" value="51129517" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51129517,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >地产资深设计-启思泓创</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2677347,0000,10,1.html" class="coname" target="_blank" >北京启思泓创广告有限公司</a></td>

				<td class="td3"><span id="map_jobarea51129517">北京</span></td>

				<td class="td4"><span id="map_fbrq51129517">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：三年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_51129517" onclick="zzSearch.jobview( '51129517' );QuickApply(51129517,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51129517">1. 高端地产领域实战三年以上，有成功案例，独立操案能力2. 把控项目整体视觉调性及工作质量3. 听得懂策略，看得懂文案， 保持创意新鲜度</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51129517' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51129517',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51129553" value="51129553" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51129553,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >实习策划文案-启思泓创</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2677347,0000,10,1.html" class="coname" target="_blank" >北京启思泓创广告有限公司</a></td>

				<td class="td3"><span id="map_jobarea51129553">北京</span></td>

				<td class="td4"><span id="map_fbrq51129553">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：应届毕业生&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_51129553" onclick="zzSearch.jobview( '51129553' );QuickApply(51129553,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51129553">1. 热爱广告事业的应届毕业生，我们需要白纸一张； 2. 脑袋会跳跃；思维能发散；吃苦亦为乐。 3. 文笔流畅不流水4. 眼高手底者请自重，谦虚的天才更容易成才</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51129553' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51129553',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid50303336" value="50303336" ></td>

				<td class="td1"><a href="http://search.51job.com/job/50303336,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售代表</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2183868,0000,10,1.html" class="coname" target="_blank" >哈尔滨亿时代数码科技开发有限公司</a></td>

				<td class="td3"><span id="map_jobarea50303336">北京</span></td>

				<td class="td4"><span id="map_fbrq50303336">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：三年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_50303336" onclick="zzSearch.jobview( '50303336' );QuickApply(50303336,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo50303336">1、服从上级领导，及时完成下达的销售任务及工作指标； 2、做好终端维护工作和产品推广工作，完成销售指标； 3、定期拜访客户，了解客户需求，执行销售政策和促销政策； 4、搜集客户详细资料，建立客户拜访计划并上报部门经理； 5、进行日...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '50303336' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('50303336',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51132255" value="51132255" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132255,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2771345,0000,10,1.html" class="coname" target="_blank" >平安国际金融中心综合金融服务部</a></td>

				<td class="td3"><span id="map_jobarea51132255">北京</span></td>

				<td class="td4"><span id="map_fbrq51132255">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模500人以上
				</td>
				
				<td class="td5">
					<a id="jobappli_51132255" onclick="zzSearch.jobview( '51132255' );QuickApply(51132255,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132255">【职位要求】 销售公司所涵盖的金融产品（包括信用卡，保险业务，证券业务，信托项目等，针对客户将产品整合） 大专以上学历,专业不限(金融/营销优先) 受过市场营销、产品知识等方面的培训。 1年以上销售经验，熟悉市场营销工作，熟悉零售...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132255' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132255',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid50256451" value="50256451" ></td>

				<td class="td1"><a href="http://search.51job.com/job/50256451,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >PHP开发工程师</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2321460,0000,10,1.html" class="coname" target="_blank" >北京博文汉翔技术培训有限公司</a></td>

				<td class="td3"><span id="map_jobarea50256451">北京</span></td>

				<td class="td4"><span id="map_fbrq50256451">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：二年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_50256451" onclick="zzSearch.jobview( '50256451' );QuickApply(50256451,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo50256451">任职要求：   1、计算机相关专业，本科及以上学历，两年以上PHP及互联网应用开发经验；具有大中型网站项目开发经验者优先； 2、熟悉Apache、MySQL 架构，熟悉Apache、MySQL、PHP等软件的编译安装和最优化配置； 3、精通PHP程序开发；  4、...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '50256451' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('50256451',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51033751" value="51033751" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51033751,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >办公室文员</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2792719,0000,10,1.html" class="coname" target="_blank" >北京尔德科贸有限责任公司</a></td>

				<td class="td3"><span id="map_jobarea51033751">北京-丰台区</span></td>

				<td class="td4"><span id="map_fbrq51033751">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模少于50人
				</td>
				
				<td class="td5">
					<a id="jobappli_51033751" onclick="zzSearch.jobview( '51033751' );QuickApply(51033751,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51033751">一 会基本电脑操作  二 头脑灵活，积极乐观，不偏执 ，有清晰的逻辑思维能力  三 基本月薪2000+带薪年假金+提成=月收入6000以上、  四 公司直招，不收任何费用，免费培训。产品和市场稳定，只需要你勤奋工作，每月万元收入就能轻松实现。...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51033751' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51033751',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid50552419" value="50552419" ></td>

				<td class="td1"><a href="http://search.51job.com/job/50552419,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售助理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2063406,0000,10,1.html" class="coname" target="_blank" >北京格森特石油化工成套设备有限公司</a></td>

				<td class="td3"><span id="map_jobarea50552419">北京-石景山区</span></td>

				<td class="td4"><span id="map_fbrq50552419">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模少于50人
				</td>
				
				<td class="td5">
					<a id="jobappli_50552419" onclick="zzSearch.jobview( '50552419' );QuickApply(50552419,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo50552419">协助销售工程师整理报价资料、制作合同、执行合同。 客户关系的维持与加强。 熟悉英语，掌握Internet、Office办公软件。形象好，气质佳，责任心强，具有良好的客户服务意识与工作心态，能经常独立出差。 有出色的沟通、领悟、执行能力和一...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '50552419' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('50552419',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid50552053" value="50552053" ></td>

				<td class="td1"><a href="http://search.51job.com/job/50552053,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售工程师</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2063406,0000,10,1.html" class="coname" target="_blank" >北京格森特石油化工成套设备有限公司</a></td>

				<td class="td3"><span id="map_jobarea50552053">北京-石景山区</span></td>

				<td class="td4"><span id="map_fbrq50552053">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模少于50人
				</td>
				
				<td class="td5">
					<a id="jobappli_50552053" onclick="zzSearch.jobview( '50552053' );QuickApply(50552053,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo50552053">职位描述：石化企业阀门及泵设备维修经验  具有高水准阀门及泵站检修经验，能够对故障进行判断和提出解决方案者优先。 工作职责: 协助销售工程师做好售前技术支持。 协助公司参与招投标工作，提供投标技术文件和报价。 提供售后服务，指导...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '50552053' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('50552053',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51132196" value="51132196" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132196,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132196">北京</span></td>

				<td class="td4"><span id="map_fbrq51132196">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132196" onclick="zzSearch.jobview( '51132196' );QuickApply(51132196,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132196">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132196' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132196',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51132235" value="51132235" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132235,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2771345,0000,10,1.html" class="coname" target="_blank" >平安国际金融中心综合金融服务部</a></td>

				<td class="td3"><span id="map_jobarea51132235">北京</span></td>

				<td class="td4"><span id="map_fbrq51132235">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模500人以上
				</td>
				
				<td class="td5">
					<a id="jobappli_51132235" onclick="zzSearch.jobview( '51132235' );QuickApply(51132235,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132235">【职位要求】 销售公司所涵盖的金融产品（包括信用卡，保险业务，证券业务，信托项目等，针对客户将产品整合） 大专以上学历,专业不限(金融/营销优先) 受过市场营销、产品知识等方面的培训。 1年以上销售经验，熟悉市场营销工作，熟悉零售...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132235' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132235',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51132221" value="51132221" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132221,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >网站运营经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132221">北京</span></td>

				<td class="td4"><span id="map_fbrq51132221">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132221" onclick="zzSearch.jobview( '51132221' );QuickApply(51132221,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132221">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132221' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132221',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51132211" value="51132211" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132211,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >客服（商城）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132211">北京</span></td>

				<td class="td4"><span id="map_fbrq51132211">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132211" onclick="zzSearch.jobview( '51132211' );QuickApply(51132211,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132211">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132211' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132211',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51132208" value="51132208" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132208,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售助理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132208">北京</span></td>

				<td class="td4"><span id="map_fbrq51132208">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132208" onclick="zzSearch.jobview( '51132208' );QuickApply(51132208,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132208">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132208' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132208',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51132201" value="51132201" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132201,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售（无陌生拜访）</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132201">北京</span></td>

				<td class="td4"><span id="map_fbrq51132201">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132201" onclick="zzSearch.jobview( '51132201' );QuickApply(51132201,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132201">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132201' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132201',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid48712360" value="48712360" ></td>

				<td class="td1"><a href="http://search.51job.com/job/48712360,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >英语助教</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2073901,0000,10,1.html" class="coname" target="_blank" >北京明德世纪教育科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea48712360">北京-海淀区</span></td>

				<td class="td4"><span id="map_fbrq48712360">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：在读学生&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_48712360" onclick="zzSearch.jobview( '48712360' );QuickApply(48712360,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo48712360">岗位职责：为学员做考试的辅导 为上自习的学员答疑；听主讲老师上课；做一些教学辅助工作。岗位要求：英语专业或英语水平优秀者；热爱教育培训行业，有意从事此行业；有亲和力，有爱心，有耐心；可出具实习证明。</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '48712360' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('48712360',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid51132216" value="51132216" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132216,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >售后客服</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,228571,0000,10,1.html" class="coname" target="_blank" >北京色彩街网络科技有限公司</a></td>

				<td class="td3"><span id="map_jobarea51132216">北京</span></td>

				<td class="td4"><span id="map_fbrq51132216">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模150-500人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132216" onclick="zzSearch.jobview( '51132216' );QuickApply(51132216,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132216">公司计划在未来5年上市，朝阳行业的领头羊企业； 中高层成员每年能获得相应的原始股。每季度1次每年4次升职加薪机会； 福利：办理五险（养老+医疗+失业+工伤+生育），入职一个月内签订正式劳动合同； 待遇：基本工资+食宿补助+绩效年奖+股...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132216' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132216',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51132209" value="51132209" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51132209,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >出纳员</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2799206,0000,10,1.html" class="coname" target="_blank" >赤壁时空(北京)科技发展中心</a></td>

				<td class="td3"><span id="map_jobarea51132209">北京-丰台区</span></td>

				<td class="td4"><span id="map_fbrq51132209">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模50-150人
				</td>
				
				<td class="td5">
					<a id="jobappli_51132209" onclick="zzSearch.jobview( '51132209' );QuickApply(51132209,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51132209">岗位职责描述： 1.办理现金支付工作和银行结算业务； 2.登记银行、现金流水账，并做到日清月结； 3.及时与银行核对账目，编制银行余额调节表； 4.负责空白支票、收据以及各类银行凭证的管理； 5.熟悉网上银行操作流程； 6.计算员工工资 专...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51132209' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51132209',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid48782010" value="48782010" ></td>

				<td class="td1"><a href="http://search.51job.com/job/48782010,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >金融证券业务经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2634650,0000,10,1.html" class="coname" target="_blank" >招商证券股份有限公司北京北太平庄路证券营业部</a></td>

				<td class="td3"><span id="map_jobarea48782010">北京</span></td>

				<td class="td4"><span id="map_fbrq48782010">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：无要求&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：国企&nbsp;&nbsp;|&nbsp;&nbsp;公司规模500人以上
				</td>
				
				<td class="td5">
					<a id="jobappli_48782010" onclick="zzSearch.jobview( '48782010' );QuickApply(48782010,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo48782010">招聘职位：金融证券业务经理岗位职责： ◎ 按公司要求在指定的营销渠道提供专业化、个性化、差异化的证券咨询服务，并积极开展营销工作； ◎ 按公司规定流程为客户办理证券开户业务并维护后续客户关系； ◎ 定期拜访客户，了解金融理财需...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '48782010' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('48782010',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid50416818" value="50416818" ></td>

				<td class="td1"><a href="http://search.51job.com/job/50416818,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >柜台业务助理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2634650,0000,10,1.html" class="coname" target="_blank" >招商证券股份有限公司北京北太平庄路证券营业部</a></td>

				<td class="td3"><span id="map_jobarea50416818">北京-海淀区</span></td>

				<td class="td4"><span id="map_fbrq50416818">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：无要求&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：国企&nbsp;&nbsp;|&nbsp;&nbsp;公司规模500人以上
				</td>
				
				<td class="td5">
					<a id="jobappli_50416818" onclick="zzSearch.jobview( '50416818' );QuickApply(50416818,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo50416818">（1）、年龄30周岁以下，本科学历或以上； （2）、具有较强的协作能力，能吃苦耐劳； （3）、具有证券从业资格证者； （4）、身高男1.7米、女1.6米以上，形象好，气质佳，普通话标准。</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '50416818' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('50416818',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#ffffff">

				<td class="td0"><input type="checkbox" name="selectJobid47448494" value="47448494" ></td>

				<td class="td1"><a href="http://search.51job.com/job/47448494,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >金融证券高级客户经理/客户经理</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#ffffff' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2634650,0000,10,1.html" class="coname" target="_blank" >招商证券股份有限公司北京北太平庄路证券营业部</a></td>

				<td class="td3"><span id="map_jobarea47448494">北京</span></td>

				<td class="td4"><span id="map_fbrq47448494">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：本科&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：无要求&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：国企&nbsp;&nbsp;|&nbsp;&nbsp;公司规模500人以上
				</td>
				
				<td class="td5">
					<a id="jobappli_47448494" onclick="zzSearch.jobview( '47448494' );QuickApply(47448494,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#ffffff">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo47448494">招聘岗位：金融证券高级客户经理岗位职责： ◎ 按公司要求在指定的营销渠道提供专业化、个性化、差异化的证券咨询服务，并积极开展营销工作； ◎ 按公司规定流程为客户办理证券开户业务并维护后续客户关系； ◎ 定期拜访客户，了解金融理...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '47448494' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('47448494',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr>
			<tr class="tr0" bgcolor="#f6f6f6">

				<td class="td0"><input type="checkbox" name="selectJobid51002163" value="51002163" ></td>

				<td class="td1"><a href="http://search.51job.com/job/51002163,c.html" onclick="zzSearch.acStatRecJob( 1 );" class="jobname" target="_blank" >销售顾问</a><img src="http://img01.51jobcdn.com/im/2009/search/db_arrow_down.gif" align="absmiddle" onclick="zzSearch.switchListType( this , '#f6f6f6' );"></td>

				<td class="td2"><a href="http://search.51job.com/list/co,c,2649277,0000,10,1.html" class="coname" target="_blank" >中国新闻采编网</a></td>

				<td class="td3"><span id="map_jobarea51002163">北京</span></td>

				<td class="td4"><span id="map_fbrq51002163">2012-06-08</span></td>

				<td class="td5">&nbsp;</td>

			</tr>
			<tr class="tr1" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234">
					学历要求：大专&nbsp;&nbsp;|&nbsp;&nbsp;
					工作经验：一年以上&nbsp;&nbsp;|&nbsp;&nbsp;公司性质：民营公司&nbsp;&nbsp;|&nbsp;&nbsp;公司规模少于50人
				</td>
				
				<td class="td5">
					<a id="jobappli_51002163" onclick="zzSearch.jobview( '51002163' );QuickApply(51002163,'c','http://my.51job.com',this);return false;" target="_blank" style="cursor:pointer"><img src="http://img01.51jobcdn.com/im/2009/search/c/ljsq1.gif" border="0" align="absmiddle"></a>
				</td>
			</tr>
			<tr class="tr2" style="display: none;" bgcolor="#f6f6f6">
				<td class="td0">&nbsp;</td>
				<td colspan="4" class="td1234 wordBreakNormal">
					职位简介:<span id="jobinfo51002163">岗位职责：1、开发新客户，并维护好客户关系，稳定长期合作关系；2、建立和维护客户档案，定期反馈工作总结；；3、根据指标需要，制定销售计划并执行；4、代表公司与企业决策者洽谈，对公司的新闻媒介产品进行销售推广；5、定期参加培训，...</span>
				</td>
				<td class="td5">
					<font style="float:left;width:0px;overflow:hidden">&nbsp;</font>
					<p style="margin-left:8px;">
					<span onclick="zzSearch.saveJobClk( '51002163' , event );" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/sctb.gif" border="0" align="absmiddle">&nbsp;收藏
					</span>
					<br />
					<span onclick="GetCompetition('51002163',0,'http://my.51job.com',1,1 );return false;" style="color:#FF7300;">
						<img src="http://img01.51jobcdn.com/im/2009/search/tdfx.gif" border="0" align="absmiddle">&nbsp;投递分析
					</span>
					</p>
				</td>
			</tr>
		<tr class="tr3"><td colspan="6"></td></tr></table></div>
			<div class="bt_center clearboth">
				<table cellpadding="0" cellspacing="0" class="resultNav">
					<tr>
						<td>
							<span onclick="zzSearch.selectAllJobs( this.firstChild.checked = !this.firstChild.checked ,'quanxuan_bottom');" style="cursor: pointer;"><input type="checkbox" id="quanxuan_bottom" value="" onclick="this.checked=!this.checked;(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=30&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();" />全选</span>
							
		  <span>
			  |&nbsp;<a href="javascript:void(0);" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=31&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();zzSearch.showSelectedJobs();return false;" class="orange1">显示选中职位</a>
			  |&nbsp;<a href="javascript:void(0);" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=32&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();QuickApply(1,'c','http://my.51job.com',this);return false;" class="orange1">申请选中职位</a>
			  |&nbsp;<a href="javascript:void(0);" onclick="(new Image()).src='http://search.51job.com/jobsearch/click_record.php?guid=cr&fromType=33&stype=2&phpReferer=&phpSelf=search_result.php&ran='+Math.random();zzSearch.putInMyJobFolder( event );return false;" class="orange1">放入职位收藏夹</a>
		  </span>
		
						</td><td class="nav_r"><table  class="searchPageNav" cellpadding="0" cellspacing="0" ><tr><td  style="padding-right:5px;" ><img src="http://img01.51jobcdn.com/im/2009/pageloff.gif" border="0" /></td><td  class="currPage" >1</td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,2.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;" >2</a></td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,3.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;" >3</a></td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,4.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;" >4</a></td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,5.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;" >5</a></td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,6.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;" >6</a></td><td><a href="http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,2.html?lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&confirmdate=9"  class="orange1"  onclick="zzSearch.jumpPage( this.href );return false;"  style="border:0px; width:auto;margin-left:5px;" ><img src="http://img01.51jobcdn.com/im/2009/pageron.gif" border="0" /></a></td></tr></table></td>
							<td class="nav_r" width="80px;">
								<a href="#top"><img src="http://img01.51jobcdn.com/im/2009/search/top.gif" align="absmiddle" /></a>
							</td>
					</tr>
				</table>
			</div>
		<div class='search_right_top'><style type="text/css">
ul {
	margin: 0px;
	padding: 0px;
	clear:both;
}
#announcement {
	width:auto;
}
#announcement div {
	padding:0px 10px 0px 10px;
	overflow-y:hidden;
	line-height: 20px;
	height: 20px;
}
#announcement li {
	font-size: 12px;
	float: left;
	list-style-type: none;
	margin-right: 11px;
	margin-left: 5px;
	white-space: nowrap;
}
#announcement a {
	text-decoration: none;
	color:#9A9A9A;
}
#announcement a:hover {
	text-decoration:underline;
}
.st_one{
	margin-left:-22px;

}
</style>
<div class="area_list">
	<div class="graytop">
		<span><img align="left" src="http://img01.51jobcdn.com/im/2009/graytl.gif"></span>
		<span><img align="right" src="http://img01.51jobcdn.com/im/2009/graytr.gif"></span>
	</div>
	<div  id="announcement">
	<div class="grayline" id="announcementbody">
	 <ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0100">北京招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0200">上海招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0302">广州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0400">深圳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2804">包头招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1602">石家庄招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0500">天津招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2102">太原招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2802">呼和浩特招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1604">保定招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1603">廊坊招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1606">秦皇岛招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1605">唐山招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2402">长春招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2303">大连招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2302">沈阳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2202">哈尔滨招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2403">吉林招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0702">南京招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1302">南昌招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0803">宁波招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0709">南通招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0705">常州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1203">青岛招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">泉州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0703">苏州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0805">绍兴招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1102">福州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0808">台州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0704">无锡招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0804">温州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0802">杭州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1502">合肥招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">厦门招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0711">徐州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1202">济南招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0807">嘉兴招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0806">金华招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1204">烟台招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0708">扬州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0706">昆山招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">漳州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0710">镇江招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1208">临沂招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1503">芜湖招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1205">潍坊招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1206">威海招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0715">江阴招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0707">常熟招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0714">张家港招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0713">盐城招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0712">连云港招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0719">淮安招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0718">泰州招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0809">湖州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0814">义乌招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1207">淄博招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1209">济宁招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1402">南宁招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1902">长沙招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0308">东莞招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1003">三亚招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1802">武汉招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1702">郑州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0307">中山招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0305">珠海招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1002">海口招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0306">佛山招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0303">惠州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0315">江门招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0304">汕头招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1703">洛阳招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1803">宜昌招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1805">襄阳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1807">荆州招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1903">株洲招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1905">衡阳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1904">湘潭招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1907">常德招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0317">湛江招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0319">清远招聘</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0325">顺德招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0902">成都招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0600">重庆招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2602">贵阳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2502">昆明招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0903">绵阳招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=3102">乌鲁木齐招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2002">西安招聘</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2702">兰州招聘</a></li></ul></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0100">北京人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0200">上海人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0302">广州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0400">深圳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2804">包头人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1602">石家庄人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0500">天津人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2102">太原人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2802">呼和浩特人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1604">保定人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1603">廊坊人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1606">秦皇岛人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1605">唐山人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2402">长春人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2303">大连人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2302">沈阳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2202">哈尔滨人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2403">吉林人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0702">南京人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1302">南昌人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0803">宁波人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0709">南通人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0705">常州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1203">青岛人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">泉州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0703">苏州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0805">绍兴人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1102">福州人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0808">台州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0704">无锡人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0804">温州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0802">杭州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1502">合肥人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">厦门人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0711">徐州人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1202">济南人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0807">嘉兴人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0806">金华人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1204">烟台人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0708">扬州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0706">昆山人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-mn.php">漳州人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0710">镇江人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1208">临沂人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1503">芜湖人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1205">潍坊人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1206">威海人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0715">江阴人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0707">常熟人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0714">张家港人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0713">盐城人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0712">连云港人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0719">淮安人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0718">泰州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0809">湖州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0814">义乌人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1207">淄博人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1209">济宁人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1402">南宁人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1902">长沙人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0308">东莞人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1003">三亚人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1802">武汉人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1702">郑州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0307">中山人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0305">珠海人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1002">海口人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0306">佛山人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0303">惠州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0315">江门人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0304">汕头人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1703">洛阳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1803">宜昌人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1805">襄阳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1807">荆州人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1903">株洲人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1905">衡阳人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1904">湘潭人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=1907">常德人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0317">湛江人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0319">清远人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0325">顺德人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0902">成都人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0600">重庆人才网</a></li></ul><ul><li style="font-weight: bold; font-size: 14px; color: rgb(102, 102, 102);">地区人才网招聘</li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2602">贵阳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2502">昆明人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=0903">绵阳人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=3102">乌鲁木齐人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2002">西安人才网</a></li><li class="st_one"><a target="_blank" href="http://www.51job.com/default-area.php?area=2702">兰州人才网</a></li></ul>	</div>
	</div>

	<div class="graybott">
		<span><img align="left" src="http://img01.51jobcdn.com/im/2009/graybl.gif"></span>
		<span><img align="right" src="http://img01.51jobcdn.com/im/2009/graybr.gif"></span>
	</div>
</div>
<script src="http://js.51jobcdn.com/in/js/2009/ScrollText.js" language="javascript"></script>
<script>
  if(document.getElementById("announcementbody")){
    var scrollup = new ScrollText("announcementbody");
    scrollup.Amount = 1;
    scrollup.Delay = 20;
    scrollup.Start();
  }
</script></div><div class="search_right_top"><div class="graybttop"><span><img src="http://img01.51jobcdn.com/im/2009/graybttl.gif" align="left"/></span><span><img src="http://img01.51jobcdn.com/im/2009/graybttr.gif" align="right"/></span><div class="btname" style="padding-top:5px;"><a href="http://www.51job.com/careerpost/jianlishuoming/index.php" style="color:#FF6600;" target="_blank"><strong style="font-size:14px;">个人简历模板-简历指导</strong></a></div></div><div class="grayline"><p class="graybttopbg"></p><div style="padding:5px"><style type="text/css">
	.resumeGuide{
		clear:both;
		line-height:20px;
		height:40px;
		background-color:#FFFFFF;
		padding:10px 20px;
	}
	.resumeGuide li{
		float:left;
		width:230px;
		margin-left:5px;
		list-style-type:none;
		white-space: nowrap;
	}
	#resumeGuideTopicsBody{
		height:52px;
		width:auto;
		overflow-y:hidden;
	}
</style>
<div id="resumeGuideTopicsBody" style="height:62px;width:auto;overflow-y:hidden;">
</div>
<div id="resumeGuideTopics" style="display:none">
	<div><ul class="resumeGuide"><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/9.php" title="简历样本"><strong>简历样本</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_3_25.html" title="计算机软件个人简历范文">计算机软件个人简...</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/9.php" title="简历范文"><strong>简历范文</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_3_23.html" title="护士专业个人简历样本">护士专业个人简历...</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/recommendation_list_1.html" title="推荐信"><strong>推荐信</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_04_11.html" title="经典的班主任推荐信">经典的班主任推荐信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/cover_letter_list_1.html" title="自荐书"><strong>自荐书</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_02_21.html" title="应届硕士毕业生自荐信">应届硕士毕业生自荐信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/cover_letter_list_1.html" title="自荐信"><strong>自荐信</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_02_17.html" title="求职自我推荐信">求职自我推荐信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/self_appraisal_list_1.html" title="自我评价"><strong>自我评价</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_03_15.html" title="找工作自我评价">找工作自我评价</a></li></ul></div><div><ul class="resumeGuide"><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/self_appraisal_list_1.html" title="自我鉴定"><strong>自我鉴定</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_03_14.html" title="计算机毕业大学生自我鉴定">计算机毕业大学生...</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/application_letter_list_1.html" title="求职信"><strong>求职信</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_01_20.html" title="电子专业求职信">电子专业求职信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/table_resume_1.html" title="个人简历表格"><strong>个人简历表格</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/image_class_3_14.html" title="个人简历表格一">个人简历表格一</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/badge_list_1.html" title="高校校徽下载"><strong>高校校徽下载</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/image_class_2_436.html" title="衢州职业技术学院">衢州职业技术...</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/cover_resumelist_1.html" title="简历封面下载"><strong>简历封面下载</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/image_class_1_13.html" title="[简历封面下载]进取">[简历封面下...</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/university_resumelist_1.html" title="高校简历模板"><strong>高校简历模板</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_2_39.html" title="苏州大学简历模板">苏州大学简历...</a></li></ul></div><div><ul class="resumeGuide"><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/professional_resumelist_1_0.html" title="专业简历模板"><strong>专业简历模板</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_1_280.html" title="生物科学类">生物科学类</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/9.php" title="简历样本"><strong>简历样本</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_3_13.html" title="广告设计类简历样本">广告设计类简历样本</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/9.php" title="简历范文"><strong>简历范文</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/resume_template_class_3_22.html" title="法律个人简历范文">法律个人简历范文</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/application_letter_list_1.html" title="求职信"><strong>求职信</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_01_18.html" title="会计求职信">会计求职信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/cover_letter_list_1.html" title="自荐信"><strong>自荐信</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_02_20.html" title="应届毕业生自荐信">应届毕业生自荐信</a></li><li><a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/self_appraisal_list_1.html" title="自我评价"><strong>自我评价</strong></a>&nbsp|&nbsp<a target="_blank" href="http://www.51job.com/careerpost/jianlishuoming/article_class_03_11.html" title="毕业生自我评价">毕业生自我评价</a></li></ul></div></div>
<script src="http://js.51jobcdn.com/in/js/2009/NewScrollText.js" language="javascript"></script>
<script>
	if(document.getElementById("resumeGuideTopics") && document.getElementById("resumeGuideTopicsBody")){
		var newScrolltext = new NewScrollText("resumeGuideTopics","resumeGuideTopicsBody",25,10,2);
		newScrolltext.initMarquee();
	};
</script></div></div><div class="graybott"><span><img src="http://img01.51jobcdn.com/im/2009/graybl.gif" align="left"/></span><span><img src="http://img01.51jobcdn.com/im/2009/graybr.gif" align="right"/></span></div></div></div><div class="clearboth"></div></div>
		<form name="pageForm" action="" method="post" style="display:none">

			<input type="hidden" name="postchannel"		value="0000">

			<input type="hidden" name="stype"			value="2">

			<input type="hidden" name="jobarea"			value="0100">
			<input type="hidden" name="district"		value="0000">
			<input type="hidden" name="address"			value="">
			<input type="hidden" name="lonlat"			value="0,0">
			<input type="hidden" name="radius"			value="-1">

			<input type="hidden" name="funtype"			value="0000">
			<input type="hidden" name="industrytype"	value="00">
			<input type="hidden" name="issuedate"		value="3">
			<input type="hidden" name="keywordtype"		value="2">
			<input type="hidden" name="keyword"			value="">

			<input type="hidden" name="workyear"		value="99">
			<input type="hidden" name="providesalary"	value="99">
			<input type="hidden" name="cotype"			value="99">
			<input type="hidden" name="degreefrom"		value="99">
			<input type="hidden" name="jobterm"			value="01">

			<input type="hidden" name="ord_field"		value="0">
			<input type="hidden" name="list_type"		value="0">

			<input type="hidden" name="curr_page"		value="1">
			<input type="hidden" name="nStart"			value="1">
			<input type="hidden" name="ppc_num"			value="0">
			<input type="hidden" name="jobid_list"		value="51126676~51126689~51126739~51126758~51126777~51126792~51126808~51129466~51129214~51129517~51129553~50303336~51132255~50256451~51033751~50552419~50552053~51132196~51132235~51132221~51132211~51132208~51132201~48712360~51132216~51132209~48782010~50416818~47448494~51002163~50127282~47583892~50127715~50417130~50956060~50314808~50822728~49228096~50994771~49328481~50032770~41192640~50427614~49409705~48264710~49409880~47609088~50719191~50719079~50718907~48650001~51035882~51068567~49752681~49503607~50688453~49605204~50688369~50687971~49503605~49503604~49503603~49571047~49571020~51082330~51082316~48098855~48503636~51038150~51037784~51033968~48426873~47999426~47972879~47972842~47970352~48085184~49971715~49966304~49966169~49965967~50102381~49942081~50920885~49827444~49936744~50935201~50973555~50973528~50782066~50867747~48134033~48650137~48456627~51132273~51132240~41823387~51132268~50982029~50965194~43255630~49672691~49672611~49279339~50970868~50970859~51132242~50970842~51132225~51132213~51132197~50108331~51052411~49838100~51085050~44454933~44454897~51085293~51085216~51085113~51084961~50704491~47092730~49629632~50978735~47717867~42779215~50253299~50401501~48536692~48164344~49727859~49906055~49845099~46053712~49739581~40018990~37103164~42582825~50988950~50806079~51017701~51017347~51017085~51016970~51016558~45452585~43040109~46690287~47257057~45907449~45907754~45907160~50359406~50326733~39526307~50962451~48737908~50387086~45905275~45905662~45906430~50354378~49957410~43854043~38762864~47468204~47295549~44802549~47430810~47430772~50624234~49615328~49563280~51073511~50304989~50906409~50906371~50906357~50906336~">
			<input type="hidden" name="jobid_count"		value="100000">
			<input type="hidden" name="schTime"			value="16">
			<input type="hidden" name="statData"		value="100000|0|0|0|0|0|0|0|8758|4787|3753|5640|5202|55633|361|15132|7|413|314|11|622|4125|648|4151|37630|36506|1790|95|286|14136|763|3935|23225|17953|17114|8298|1195|769|26748|78854|93|475|3718|6008|4426|2464|1793|1548|279|144|80|118|99228|772|0|0|0|0">

			<input type="hidden" name="selectedJobids"	value="">
			
			<input type="hidden" name="confirmdate"	value="9">

			<input type="hidden" name="fromType"		value="">

		</form>

		<form name="pageJumpForm" method="post" action="" target="_blank" style="display: none;">
			<input type="hidden" name="jobiduni" value="">
		</form></div><!--bottom start-->
<div id="bottom">
		<div id="bott">
		<ul class="btext">
			<li><a href="http://www.51job.com/bo/sitemap.php" target="_blank" onfocus="blur()">网站导航</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/bo/service.php" target="_blank" onfocus="blur()">服务声明</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/bo/contact.php" target="_blank" onfocus="blur()">联络我们</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/bo/AboutUs.php" target="_blank" onfocus="blur()">关于我们</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/bo/media/media.php" target="_blank" onfocus="blur()">媒体报道</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/vip/index.php" target="_blank" onfocus="blur()">加入无忧</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/hl/grjl.php" target="_blank" onfocus="blur()">帮助</a></li>
			<li>|</li>
			<li><a href="http://ir.51job.com" target="_blank" onfocus="blur()">Investor Relations</a></li>
			<li>|</li>
			<li><a href="http://www.51job.com/link.php" target="_blank" onfocus="blur()">合作伙伴</a></li>
		</ul>
	</div>
	<div id="copyright">
		<p class="fontright">人才招聘: 服务热线 400-886-0051 或Email:<a href="mailto:hr@51job.com" onfocus="blur()">hr@51job.com</a>　个人求职: Email:<a href="mailto:club@51job.com" onfocus="blur()">club@51job.com</a>　或垂询400-820-5100，800-820-5100</p>
		<p class="fontright">未经51job.com 同意，不得转载本网站之所有招聘信息及作品</p>
		<p class="fontright">无忧工作网版权所有&copy;1999-2012</p>
	</div>
	</div>
<!-- bottom end --></body>
</html>

<script language="javascript">
<!--
	window.cfg = {
		fileName: 'search_result.php' ,
		lang : 'c' ,
		stype : '2' ,
		fullLang : 'Chinese' ,
		langs : { 
			sqzwml : 'applyjob' ,
			qzzwqdg : '请在要选择的职位前打勾!' ,
			myml : 'my' ,
			ts_qxjzw : '请选择职位' ,
			queren : '确认' ,
			guanbi : '关闭' ,
			nzdnxj : '您最多能选择' ,
			xiang : '项' ,
			xzdq : '选择地区' ,
			xj_xg : '选择/修改' ,
			zycs : '主要城市' ,
			sysf : '所有省份' ,
			buxian : '不限' ,
			qingxj : '请选择' ,
			yixuan : '已选' ,
			znlb : '职能类别' ,
			hylb : '行业类别' ,
			gzdd : '工作地点' ,
			quanbu : '全部' ,
			zhineng : '职能' ,
			hangye : '行业' ,
			didian : '地点' ,
			qsrgjz : '请输入关键字' ,
			srpcgjz : '输入排除关键字'
		} ,
		url : { 
			root : 'http://search.51job.com/jobsearch' ,
			image : 'http://img01.51jobcdn.com/im/2009' ,
			image_search : 'http://img01.51jobcdn.com/im/2009/search' ,
			image_search_lang : 'http://img01.51jobcdn.com/im/2009/search/c' ,
			image_search_c : 'http://img01.51jobcdn.com/im/2009/search/c' ,
			image_search_e : 'http://img01.51jobcdn.com/im/2009/search/e'
		} ,
		domain : {
			my : 'http://my.51job.com' ,
			search : 'http://search.51job.com'
		} ,
		isJobview : '1' ,
		isAcStatRecJob : '1' ,
		acStatRecJobType : '0803111457'
	};

	function searchInit() {
		if ( window.Search ) {
			clearInterval( intVal );
			window.zzSearch = new Search( { 
				searchForm : document.searchForm ,
				pageForm : document.pageForm ,
				excludeForm : document.excludeForm ,
				pageJumpForm : document.pageJumpForm ,
				selJobPageForm : document.selJobPageForm ,
				cfg : cfg
			} );
			zzSearch.initJobareaLayer();
			zzSearch.initSearchInResult();
			zzSearch.showTips();
			initConfirmDateBindEvt();
			initKeyWrodsBindEvt('请输入关键字');
			zzSearch.initFuntypeLayer();
			zzSearch.initIndtypeLayer();
			zzSearch.initListTrOverOut();
			zzSearch.initExcludeSearch();
			zzSearch.searchForm.onsubmit = function() { zzSearch.formSub( this ); return false; };
			zzSearch.initKwdTypeSel();
			zzSearch.initKwdInputEvt();
			zzSearch.initAutoCom();
		}
	}
	var intVal = window.setInterval( searchInit , 50 );
//-->
</script>

OK


HTML_str

#puts html


def get_item_list_from_html(html_string)

	#<td class="td2"><a href="http://search.51job.com/list/co,c,2316147,0000,10,1.html" class="coname" target="_blank" >北京龙鼎华投资集团有限责任公司</a></td>
	#re = /<td class=\"td2\"><a(.*?)class=\"coname\"(.*?)>(.*?)<\/a><\/td>/
	re = /<td class=\"td2\">(\w*)<\/td>/
	list = []
	html.scan(re).each do |item|
	  puts item
	  company_name = '' + item
	  company_url = ''
	  t = {}      
	  t[:name] = company_name
	  t[:url] = company_url
	  list.push(t)
	end

end


def get_item_list_from_html_2(html_string)	
	doc = Nokogiri::HTML.parse(html_string)
	list = []
	doc.css('td.td2 a.coname').map.each do |item|
	  company_name = '' + item.text
	  company_url = item['href']
	  t = {}      
	  t[:name] = company_name
	  t[:url] = company_url
	  list.push(t)
	end  
	list
end

#html from string
#puts get_item_list_from_html_2(html)


def safe_gethtml(url)
  begin
    html_stream = open(url)
  rescue OpenURI::HTTPError => ex
    puts "can't get url: #{url}"
    return ""
  end
end


#html2 from website

url = "http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html"
html_stream = safe_gethtml(url)

html2 = html_stream.read
html2.encode!("utf-8", "gbk")
puts get_item_list_from_html_2(html2)