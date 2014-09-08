				<table id="__01" width="266" height="680" border="0" cellpadding="0" cellspacing="0" style="background:#FBFBFB;">
					<tr>
						<td background="images/index_left_03.jpg" width="266" height="27">
						<p style="height:27px; line-height:27px; color:#fff;font-size:16px; font-weight:bold;">　 　　　服务项目</p>
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
									<!--开始 -->
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
									<!--结束 -->
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
						<p style="height:27px; line-height:27px; color:#fff;font-size:16px; font-weight:bold;">　 　　　联系我们</p>
						</td>
					</tr>
					<tr>
						<td width="266" height="149">
						  <div id="contact" height="149">
						  	<p>南京月光办公用品有限公司</p>
							<p>手机：15062212078</p>
							<p>电话：025-68557839</p>
							<p>联 系 人：徐先生</p>
							<p>地址：南京市建宁路2-2号金盛百货</p>
						  </div>
						  </td>
					</tr>
				</table>