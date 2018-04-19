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
           <li><a href="/manager-web/home/goIndex">首页</a></li>
           <li><a href="/manager-web/exam/selfTest?grade=${sessionScope.usergrade.grade}">用户自测</a></li>
		   <li><a href="#" onclick="getExam()">用户考试</a></li>
		   <li class="active"><a href="#">成绩列表</a></li>
		   <li><a href="/manager-web/home/logOut">退出</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article" >
           <p>
           <div id="tableDiv" style ="text-align: center;">
		<table width="600" border="1" cellspacing="0">
			<thead>
				<tr>
					<th>编号</th>
					<th>考试成绩</th>
					<th>考试时间</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody id="tbMain"></tbody>
		</table>
	</div></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
           <span><font size="3" color="#323a3f" style="padding:8px 0; margin:8px 0;">用户信息</font></span>
           <div class="clr"></div>
           <hr />
          <ul class="sb_menu">
            <li><a href="#">当前用户:${sessionScope.loginuser.name}</a></li>
            <li><a href="#">自测等级:${sessionScope.usergrade.grade}</a></li>
            <li><a href="#">最后一次自测成绩:${sessionScope.usergrade.lastScore}</a></li>
            <li><a href="#">最好的自测成绩:${sessionScope.usergrade.bestScore}</a></li>
            <li><a href="#">在线考试成绩:${sessionScope.userFormalExam}</a></li>
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
