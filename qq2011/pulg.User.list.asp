<!--#include file="../Sp_inc/conn.asp"-->
<!--#include file="../Sp_inc/class_Page.asp"-->
<!--#include file="UserAuthority.asp"-->
<%
	Dim action:action = VerificationUrlParam("action","string","")
	Dim ItemID:ItemID = VerificationUrlParam("ItemID","int","")
	Dim GroupID:GroupID = VerificationUrlParam("GroupID","int","")
	if action<>"" and action="del" then
		''ɾ����Ϣ		
		Con.Execute("delete * from Sp_User where id="&ItemID&"")
		'''ɾ���û����ּ�¼
		Con.Execute("delete * from Sp_TransactionLog where useruid="&id&"")
		ALert "ɾ���ɹ�","pulg.User.list.asp"
	elseif action="prohibit" then
		Con.Execute("update Sp_User set isactive=0 where ID="&ItemID&"")
		ALert "�����ɹ�","pulg.User.list.asp"
	elseif action="active" then
		Con.Execute("update Sp_User set isactive=1 where ID="&ItemID&"")
		ALert "�����ɹ�","pulg.User.list.asp"
	end if	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<TITLE>��̨��ҳ</TITLE>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<LINK href="images/style.css" type=text/css rel=stylesheet>
	<META content="MSHTML 6.00.3790.4237" name=GENERATOR>
	<script language="javascript" type="text/javascript" src="Scripts/common_management.js"></script>
</HEAD>
<BODY>
<DIV id=wrap>
	<UL id=tags>
	  <LI class=selectTag style="LEFT: 0px; TOP: 0px"><A onfocus="this.blur()" onclick="selectTag('tagContent0',this)" href="javascript:void(0)">�û�����</A></LI>
	</UL>
	<DIV id=tagContent>
	<DIV class="tagContent selectTag content" id="tagContent0">
		<!--��1����ǩ//-->
		<DIV>
			<TABLE cellSpacing="1" width="100%">
			  <TR class="content-td2">
				<TH width="5%" align="left"><input type="checkbox" name="checkbox" value="checkbox"></TH>
			    <TH width="10%" align="left">�û�������</TH>
			    <TH width="10%" align="left">�û�����</TH>
			    <TH width="25%" align="left">�û�email</TH>
			    <TH width="15%" align="left">ע��ʱ��</TH>
			    <TH width="15%" align="left">����¼ʱ��</TH>
			    <TH width="10%" align="left">״̬</TH>
			    <TH width="10%" align="left"></TH>
			  </TR>
			  <%
				Dim total_record   	'�ܼ�¼��
				Dim current_page	'��ǰҳ��
				Dim PCount			'ѭ��ҳ��ʾ��Ŀ
				Dim pagesize		'ÿҳ��ʾ��¼��
				Dim showpageNum		'�Ƿ���ʾ����ѭ��ҳ
				Dim strwhere:strwhere = "U.GroupID=G.ID"
				if GroupID<>"" then strwhere =strwhere &" and G.ID="&GroupID&""
				if total = 0 then 
					Dim Tarray:Tarray = Con.QueryData("select count(*) as total from Sp_User U, Sp_UserGroup G where "&strwhere&"")
					total_record = Tarray(0,0)
				else
					total_record = total
				end if
				current_page = VerificationUrlParam("page","int","1")
				PCount = 6
				pagesize = 11
				showpageNum = true
				
				'ѡ���ֶΣ������������ؼ��֣��Ƿ����򣬿�ʼ�У�1�ǵ�һ�У����������
				Dim sql:sql = Con.QueryPageByNum("U.*,G.UserGroup","Sp_User U, Sp_UserGroup G", ""&strwhere&"", "U.ID", true,current_page,pagesize)
				'response.Write sql
				'response.End()
				set rs = Con.QUery(sql)
				if rs.recordcount<>0 then
				do while not rs.eof
			  %>
			  <TR class="content-td1">
				<TD><input type="checkbox" name="ItemID" value="<%=rs("ID")%>"></TD>
				<TD><%=rs("UserGroup")%></TD>
				<TD><%=rs("username")%>&nbsp;<span class="redtext"><%if rs("isvip")=1 then response.Write "Vip"%></span></TD>
				<TD><a href="pulg.email.send.asp?email=<%=rs("useremail")%>"><%=rs("useremail")%></a></TD>
				<TD><%=year(rs("regtime"))%>-<%=month(rs("regtime"))%>-<%=day(rs("regtime"))%></TD>
				<TD><%=year(rs("lastlogintime"))%>-<%=month(rs("lastlogintime"))%>-<%=day(rs("lastlogintime"))%></TD>
				<TD><%if rs("isactive")=1 then:response.Write "����":else:response.Write "<span class='redtext'>��ֹ</span>":end if%>&nbsp;<span class="huitext"><%if rs("isactive")=1 then:response.Write "<a href='?action=prohibit&ItemID="&rs("ID")&"' class='huitext'>��ֹ</a>":else:response.Write "<a href='?action=active&ItemID="&rs("ID")&"' class='huitext'>����</a>":end if%></span></TD>
				<TD><a href="pulg.user.view.asp?GroupID=<%=rs("GroupID")%>&ItemID=<%=rs("ID")%>">��ϸ</a>&nbsp;<a href="javascript:if(confirm('Sp_CMSϵͳ��ʾ:\r\n\nȷ��ɾ��?ɾ���󲻿ɻָ�!'))location.href='?action=del&ItemID=<%=rs("ID")%>';">ɾ��</a></TD>
			  </TR>
			  <%
			   rs.movenext
			   loop
			   end if
			  %>
			</TABLE>
		</DIV>
		<div class="divpadding">
			<%PageIndexUrl total_record,current_page,PCount,pagesize,true,true,flase%>
		</div>
		<div class="divpadding">
		  <input name="btnsearch" value="��Ա�Զ�����" class="button" type="button" onClick="javascript:location.href='pulg.user.upgrade.asp';">
		</div>
	</DIV>
	</DIV>
</DIV>
</BODY>
</HTML>