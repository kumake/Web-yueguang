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
	line-height:24px;
	background:url(images/dd.jpg) no-repeat  0px 50%;
	height:24px;
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
						<td>
						<table id="__01" width="762" height="680" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="762" height="163">
							<table id="__01" width="762" height="163" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td rowspan="2">
									<img src="images/index_ff_01_01.jpg" width="277" height="163" alt=""></td>
								<td>
									<img src="images/index_ff_01_02.jpg" width="485" height="38" alt=""></td>
							</tr>
							<tr>
								<td width="485" height="125">
								<div style="margin:10px 30px 0px 15px">
									<p style=" line-height:25px;  color:#000">�Ͼ��¹�칫��Ʒ���޹�˾��������2008�꣬��λ���й�����ʡʡ���Ͼ���ĿǰԱ��30������רҵ���°칫�ľߡ��칫�����豸��װ����ϵ�С���ֽ��ϵ�С��ܷ��ϵ�У���һ��ͨ����(����ϵͳ���Ž�ϵͳ������ϵͳ)����֮�����׺Ĳĵ��з�������������һ��ļ�������ҵ����˾������Ʒ�ơ����ϡ�Ϊ��������Ȩ�������</p>
								</div>
								
								</td>
							</tr>
						</table>
							
							</td>
						</tr>
						<tr>
							<td  width="762" height="39">
								<div style="background:#000;width:745px; height:29px; margin-left:2px;"></div>
							</td>
						</tr>
						<tr>
							<td  width="762" height="24">
							<span class="STYLE1">�� ��Ʒչʾ</span>
							</td>
						</tr>
						<tr>
							<td  width="762" height="454">
							<div style=" width:740px;margin:5px 3px; border-top:1px #000 solid;">
									<div style=" width:734px;margin:5px auto; border-top:3px #000  dotted;height:420px;">
									<!--�������ݿ�ʼ -->
										<div style="height:410px;width:730px;margin-left:0px; ">
							
												<%
												set rs = UICon.Query("select top 8 * from user_pro  order  by id desc")
												do while not rs.eof			
												%>
												<div class="index_main_pics">
												<div class="index_main_bo">
												<a  href="product_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><img src="<%=rs("Field_picture")%>" /></a>
												</div>
												<p><a  href="product_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=rs("title")%></a></p>
												</div>							
												<%
													rs.movenext
													loop
													rs.close
													set rs=nothing
												%>
											</div>
									<!--�������ݽ��� -->												
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
		<td width="1028" height="58">
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>
</body>
</html>
