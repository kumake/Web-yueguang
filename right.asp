				<table id="__01" width="266" height="680" border="0" cellpadding="0" cellspacing="0" style="background:#FBFBFB;">
					<tr>
						<td background="images/index_left_03.jpg" width="266" height="27">
						<p style="height:27px; line-height:27px; color:#fff;font-size:16px; font-weight:bold;">�� ������������Ŀ</p>
						</td>
					</tr>
					<tr>
						<td width="266" height="477" >						
						<ul class="lei_01">
								<%
								set rsn = UICon.Query("select top 14 * from Sp_dictionary where  categoryID = 12 and parentID=0 order by  IndexID") 
								do while not rsn.eof	
								%>
									<li><a><%=rsn("categoryname")%></a></li>
									<ul class="lei_02">
									<!--��ʼ -->
										<%
										dim cateid:cateid=rsn("id")
										dim tmpsql:tmpsql="select top 14 * from Sp_dictionary where  categoryID = 12 and parentID="&cateid&" order by  IndexID"
										set rs = UICon.Query(tmpsql)
										do while not rs.eof			
										%>
										<li><a  href="product.asp?categoryid=<%=rs("id")%>&amp;itemid=&lei=<%=rs("categoryname")%>" title="<%=rs("categoryname")%>"   ><%=rs("categoryname")%></a></li>	
										<%
											rs.movenext
											loop
											rs.close
											set rs=nothing
										%>
									<!--���� -->
									</ul>										
								<%
									rsn.movenext
									loop
									rsn.close
									set rsn=nothing
								%>
						</ul>	
								
						</td>
					</tr>
					<tr>
						<td background="images/index_left_03.jpg" width="266" height="27">
						<p style="height:27px; line-height:27px; color:#fff;font-size:16px; font-weight:bold;">�� ��������ϵ����</p>
						</td>
					</tr>
					<tr>
						<td width="266" height="149">
						  <div id="contact" height="149">
						  	<p>�Ͼ��¹�칫��Ʒ���޹�˾</p>
							<p>�ֻ���15062212078</p>
							<p>�绰��025-68557839</p>
							<p>�� ϵ �ˣ�������</p>
							<p>��ַ���Ͼ��н���·2-2�Ž�ʢ�ٻ�</p>
						  </div>
						  </td>
					</tr>
				</table>