<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>使用s:merge标签迭代Map</title>
</head>
<body>
	<s:merge id="newList">
		<s:param
			value="#{'Spring2.0宝典':'李刚','轻量级J2EE企业应用实战':'李刚','基于J2EE的Ajax宝典':'李刚'}" />
		<s:param value="#{'新东方IT培训', '东方标准职业教育'}" />
	</s:merge>

	<table border="1" width="240">
		<s:iterator value="#newList" status="st">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="key" /></td>
				<td><s:property value="value" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
