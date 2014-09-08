<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.proLi{ width:160px; line-height:30px; border-bottom:#CCCCCC solid 1px; display:block; background:url(images/li.jpg) no-repeat 30px 50%; padding-left:50px; margin-left:32px;}
.STYLE1 {
	font-size:15px;
	font-weight: bold;
	color: #710002;
	line-height:23px;
	background:url(images/dd.jpg) no-repeat  0px 50%;
	height:23px;
}
 -->
</style>
</head>
<body>
<div id="container">
<table id="__01" width="1028" height="1057" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="1028" height="680" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="762" height="680">
				<table id="__01" width="762" height="680" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="762" height="23">
						<span class="STYLE1">　 点钞机说明</span></td>
					</tr>
					<tr>
						<td width="762" height="657">
							<div style="background:#FBFBFB; width:740px;margin:5px 3px; border-top:1px #000 solid;">
									<div style="width:734px;margin:5px auto; border-top:3px #000  dotted; ">
									<div id="neiye_main">
									<!--主体内容开始 -->
									<% singlename = VerificationUrlParam("signle","string","点钞机说明")
									response.Write UserSinglePage(singlename)%>									
									<!--主体内容结束 -->
									</div>
									</div>
							</div>
						</td>
					</tr>
				</table>
				</td>
				<td>
				<!--#include file="right.asp" -->
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
				<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>
</body>
</html>
