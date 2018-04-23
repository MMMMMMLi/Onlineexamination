<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>在线考试系统用户首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1><a href="index.html">Online examination</a> <small>For graduation design</small></h1></div>
      <div class="menu_nav">
        <ul>
           <li class="active"><a href="#">首页</a></li>
           <li><a href="/manager-web/exam/selfTest?grade=${sessionScope.usergrade.grade}">用户自测</a></li>
		   <li><a href="#" onclick="getExam()">用户考试</a></li>
		   <li><a href="/manager-web/exam/examListPage">成绩列表</a></li>
		   <li><a href="/manager-web/home/logOut">退出</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <span><font size="5" color="#323a3f" style="padding:8px 0; margin:8px 0;"><b>关于2018学年在线考试安排</b></font></span><div class="clr"></div>
          <p><span class="date">时间: <a href="#">2018-03-15</a></span> &nbsp;|&nbsp; 通知来源: <a href="#">教务处</a> &nbsp;|&nbsp; 通知分类: <a href="#">系统通知</a></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于各个学院的考试安排,具体如下...</p>
          <p class="spec"><a href="#" class="com"><span>212</span> 浏览</a> <a href="#" class="rm">详细内容 &raquo;</a></p>
        </div>
        <div class="article">
           <span><font size="5" color="#323a3f" style="padding:8px 0; margin:8px 0;"><b>关于邮件系统收到诈骗邮件的提示性公告</b></font></span><div class="clr"></div>
          <p><span class="date">时间: <a href="#">2018-02-10</a></span> &nbsp;|&nbsp; 通知来源: <a href="#">教务处</a> &nbsp;|&nbsp; 通知分类: <a href="#">系统通知</a></p>
           <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近期发现有不法人员冒充邮件系统管理员向我校邮件系统各邮箱发送虚假通知，以备案、优化和升级等借口，通过外部链接的形式，骗取个人资料和邮箱密码。请各位老师注意此类诈骗邮件，以防泄露个人信息....</p>
           <p></p>
          <p class="spec"><a href="#" class="com"><span>199</span>  浏览</a> <a href="#" class="rm">详细内容 &raquo;</a></p>
        </div>
        <div class="article">
           <span><font size="5" color="#323a3f" style="padding:8px 0; margin:8px 0;"><b>在线考试系统停机维护通知 </b></font></span><div class="clr"></div>
          <p><span class="date">时间: <a href="#">2018-01-12</a></span> &nbsp;|&nbsp; 通知来源: <a href="#">教务处</a> &nbsp;|&nbsp; 通知分类: <a href="#">系统通知</a></p>
           <p>各单位、各部门、各位教职工：</p>
           <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为保证我校在线考试系统稳定运行，兹定于2018年1月12日早8点开始对各应用系统进行全面停机维护。此次维护涉及系统较多、维护量大、维护时间较长，预计维护结束时间为2018年1月15日下午6点。...</p>
           <p></p>
          <p class="spec"><a href="#" class="com"><span>208</span>  浏览</a> <a href="#" class="rm">详细内容 &raquo;</a></p>
        </div>
        <div class="article">
           <span><font size="5" color="#323a3f" style="padding:8px 0; margin:8px 0;"><b>关于各学院进行2018学年考试的通知</b></font></span><div class="clr"></div>
          <p><span class="date">时间: <a href="#">2018-01-10</a></span> &nbsp;|&nbsp; 通知来源: <a href="#">教务处</a> &nbsp;|&nbsp; 通知分类: <a href="#">系统通知</a></p>
           <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018学年,各个学院在线考试初步安排具体如下...</p>
          <p class="spec"><a href="#" class="com"><span>290</span>  浏览</a> <a href="#" class="rm">详细内容 &raquo;</a></p>
        </div>
        <p class="pages"><small>Page 1 of 4 &nbsp;&nbsp;&nbsp;</small> <span>1</span> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
           <span><font size="3" color="#323a3f" style="padding:8px 0; margin:8px 0;">用户信息</font></span>
           <div class="clr"></div>
           <hr />
          <ul class="sb_menu">
            <li><a href="#">当前用户:${sessionScope.loginuser.name}</a></li>
            <!--<li><a href="#">自测等级:${sessionScope.usergrade.grade}</a></li>-->
            <!--<li><a href="#">最后一次自测成绩:${sessionScope.usergrade.lastScore}</a></li>-->
            <!--<li><a href="#">最好的自测成绩:${sessionScope.usergrade.bestScore}</a></li>-->
            <li><a href="#"><font color="#843534" size="3"><b>在线考试成绩:${sessionScope.userFormalExam}</b></font></a></li>
          </ul>
        </div>
        <div class="gadget">
           <span><font size="3" color="#323a3f" style="padding:8px 0; margin:8px 0;">校园动态</font></span>
           <div class="clr"></div>
           <hr />
          <ul class="sb_menu">
            <li><a href="#">学校召开期初教学检查工作总结会议</a></li>
            <li><a href="#">学校召开2018年度教学督导会议</a></li>
            <li><a href="#">学校召开期末教学工作专题会议 </a></li>
            <li><a href="#">我校在山东省第八届高等教育教学成果奖评选中喜获佳绩</a></li>
            <li><a href="#">学校召开教学重点工作推进会</a></li>
            <li><a href="#">我校在省师范类高校学生从业技能大赛中获佳绩</a></li>
            <li><a href="#">山东省高等学校在线开放课程建设等3个实施方案发布</a></li>
            <li><a href="#">学校举办在线开放课程建设培训会</a></li>
            <li><a href="#">学校召开教学工作例会</a></li>
            <li><a href="#">我校教务处及相关学院赴德州学院考察交流</a></li>
            <a href="#" class="rm">查看更多 &raquo;</a></p>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="../img/pix1.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="../img/pix2.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="../img/pix3.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="../img/pix4.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="../img/pix5.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="../img/pix6.jpg" width="58" height="58" alt="pix" /></a>
      </div>
      <div class="col c2">
        <h2><span>System introduction</span></h2>
        <p>online examination <br />The online examination system aims to realize the paperless management of the examination and the use of the computer and network technology for the online examination system.</p>
	  </div>
      <div class="col c3">
        <h2><span>Contact</span></h2>
        <p>If you want to contact me, I can pass the following methods..</p>
        <p><a href="http://www.bztc.edu.cn/">滨州学院</a></p>
        <p>0543-3190016 （校办)</p>
        <p>0543-3190201 （招办）</p>
        <p>Address: 山东省滨州市黄河五路391号</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy;Powered by Myself. Collect From Network</p>
      <ul class="fmenu">
        <li class="active"><a href="#">首页</a></li>
           <li><a href="/manager-web/exam/selfTest?grade=${sessionScope.usergrade.grade}">用户自测</a></li>
		   <li><a href="#" onclick="getExam()">用户考试</a></li>
		   <li><a href="#">成绩列表</a></li>
		   <li><a href="/manager-web/home/logOut">退出</a></li>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<script src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/arial.js"></script>
<script type="text/javascript" src="../js/cuf_run.js"></script>
<script type="text/javascript" src="../js/home.js"></script>
</body>
</html>
