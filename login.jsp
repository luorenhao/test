<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>简易留言板</title>
<style type="text/css">
body{
    background-image: url(../images/oper_area_border_top_line.gif);
    background-color: #EFF6FE;
    margin: 0;
}
table,tr,td{
    border: 0px solid black;
    border-spacing: 0;
    padding: 0;
    margin: 0 auto;
}
table{
    border-collapse: collapse;
}
.login_tab{
	margin-right:-20px;
	width:300px;
}
.login_tab table{
	width:100%;
	height:205px;
	
}
.login_tab th,td{
	text-align:center;
	font-size: 12px;
}
.login_tab th{
	text-align:right;
}
.form_input{
    font-size: 12px;
    color: #000000;
    background-color: #FFFFFF;
    border: 1px solid #003366;
}
.reg_tab{
	height:400px
}
.reg_tab table{
	height:370x;
	width:100%;
}
	
</style>
</head>
<body bgcolor="E3E3E3">
	<s:i18n name="messageResource">
		<s:form action="loginValidateAction" method="post" theme="simple">
			<table style="margin:80px auto;">
				<tr>
					<td><img src="images/login/lo_03.gif" width="205" /></td>
					<td><img src="images/login/lo_04.gif" width="392"/></td>
				</tr>
				<tr>
					<td><img src="images/login/lo_06.gif" /></td>
					<td class="login_tab">
						<table>
							<tr>
								<th><s:label key="username"/></th>
								<td>
									<s:textfield name="user.username" size="20" style="width:60%;float:left;"/>
									<s:label name="nameErr" style="color:red;width:40%;"/>
								</td>
								<td rowspan="4"><img src="images/login/lo_072.gif" /></td>
							</tr>
							<tr>
								<th><s:label key="userpwd"/></th>
								<td>
									<s:password name="user.userpwd" size="20" style="width:60%;float:left;"/>
									<s:label name="pwdErr" style="color:red;width:40%;"/>
								</td>
							</tr>
							<tr>
								<th><s:label key="usertype"/></th>
								<td>
									<s:select name="user.usertype" value="admin" list="#{'admin':'管理员','vip':'vip会员','guest':'游客'}" cssClass="form_input" style="width:60%;float:left;" />
								</td>
							</tr>
							<tr>
								<td colspan="2" class="STYLE1" style="text-align:center;">
								<input type="image" src="images/login/dl.gif" />
							</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><img src="images/login/lo.gif" /></td>
				</tr>
			</table>
		</s:form>
	</s:i18n>
	<p style="text-align:center">如果没注册单击<a href="reg.jsp">这里</a>注册
	</p>
</body>
</html>
