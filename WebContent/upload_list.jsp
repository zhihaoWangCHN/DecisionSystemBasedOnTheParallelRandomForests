<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".disklist li").click(function(){
		$(".disklist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
</head>

<body>
    <%
	    Cookie[] cookies = request.getCookies();
		String treeNumString=null;
		for(int i=0;i<cookies.length;i++){
	        if(cookies[i].getName().equals("myDecisionSystem"))
	        	treeNumString = cookies[i].getValue();
    	}
		int fileNum = 2;
		//out.print(treeNum);
    %>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="index.jsp">首页</a></li>
    <li><a href="file_manager.jsp">文件管理</a></li>
    <li><a href="#">训练集文件</a></li>
    </ul>
    </div>
    
    <div class="comtitle">
    <span><img src="images/clist.png" /></span>
    <h2>训练集数据(<%=fileNum%>)</h2>
    <div class="rline"></div>
    </div>
    
    <ul class="disklist">
    
    <!-- 数据文件 -->
    <li>
      <a href="DownloadHandle?type=upload&count=data">
    	<div class="dlefttxt3"></div>    
    	<div class="dright">
    	<h3>data.txt</h3>
    	<p>文本文档</p>    
    	</div>
      </a>
    </li>
    
    <!-- 属性文件 -->
    <li>
      <a href="DownloadHandle?type=upload&count=att">
    	<div class="dlefttxt3"></div>    
    	<div class="dright">
    	<h3>att.txt</h3>
    	<p>文本文档</p>    
    	</div>
      </a>
    </li>
    
	</ul>
</body>
</html>